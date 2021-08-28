import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smile_makers/account/model/user.dart';
import 'package:smile_makers/cache/cache.dart';
import 'package:smile_makers/firebase/storage_repository.dart';
import 'package:smile_makers/firebase/user_firestore_repo.dart';

class SignUpFailure implements Exception{}
class LoginWithEmailAndPasswordFailure implements Exception{}
class LoginWithGoogleFailure implements Exception{}
class LogoutFailure implements Exception{}

class AuthRepository{

  final topicTitle = 'new_campaigns';
  final CacheClient _cacheClint;
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final GoogleSignIn _googleSignIn;
  final StorageRepository _storageRepository = StorageRepository();
  final UserFireStoreRepo _userFireStoreRepo = UserFireStoreRepo();

  //initializing
  AuthRepository({CacheClient? cashClint,firebase_auth.FirebaseAuth? firebaseAuth, GoogleSignIn? googleSignIn})
      : _cacheClint = cashClint?? CacheClient(),
        _firebaseAuth = firebaseAuth?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn?? GoogleSignIn();

  /// User cache key.
  /// Should only be used for testing purposes.
  @visibleForTesting
  static const userCacheKey = '__user_cache_key__';


  // get current user when state changes
  Stream<UserModel> get user {
    return _firebaseAuth.userChanges().map((firebaseUser) {
      final user = firebaseUser == null ? UserModel.empty : firebaseUser.toUser;
      _cacheClint.write(key: userCacheKey, value: user);
      return user;
    });
  }

  /// Returns the current cached user.
  /// Defaults to [UserModel.empty] if there is no cached user.
  UserModel get currentUser{
    return _cacheClint.read<UserModel>(key: userCacheKey) ?? UserModel.empty;
  }

  Future<void> signUp({required String name, required String email, required String password}) async{
    try{
       await _firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

      firebase_auth.User user = _firebaseAuth.currentUser!;
      await user.updateDisplayName(name);
      user = _firebaseAuth.currentUser!;
      _cacheClint.write(key: userCacheKey, value: user.toUser);
      _firebaseMessaging
          .getToken()
          .then((token) => _userFireStoreRepo.addUserToken(token: token.toString(), currentUserId: user.uid));
       //general topic for all users
       _firebaseMessaging.subscribeToTopic(topicTitle);
       //personal topic for current user
       _firebaseMessaging.subscribeToTopic(user.uid);

    } on firebase_auth.FirebaseAuthException catch(error){
      throw firebase_auth.FirebaseAuthException(code: error.code);
    }
  }


  // TODO: 18/06/2021 i thinks this should belong to storage repo
  Future<void> updateProfileImage(File photo) async{
    String url = await _storageRepository.uploadUserPhoto(photo);
    firebase_auth.User user = _firebaseAuth.currentUser!;
    user.updatePhotoURL(url);
  }

  Future<void> logInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser?.authentication;
      final credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken
      );

      await _firebaseAuth.signInWithCredential(credential);
      _firebaseMessaging
          .getToken()
          .then((token) => _userFireStoreRepo.addUserToken(token: token.toString(), currentUserId: googleUser!.id));
      //general topic for all users
      _firebaseMessaging.subscribeToTopic(topicTitle);
      //personal topic for current user
      _firebaseMessaging.subscribeToTopic(googleUser!.id);

    } on Exception {
      throw LoginWithGoogleFailure();
    }
  }

// TODO: 20/08/2021 i need to remove the personal campaign subscription from log in
  Future<void> logInWithEmailAndPassword({required String email, required String password}) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password).then((userCredential) {
            return _firebaseMessaging.subscribeToTopic(userCredential.user!.uid);
          });
    }on firebase_auth.FirebaseAuthException catch(error){
      throw firebase_auth.FirebaseAuthException(code: error.code);
    }
  }

  Future<void> logOut() async{
    try{
      Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut()
      ]);
    }on Exception{
      throw LogoutFailure();
    }
  }
}

// we could have used normal mapping instead
extension on firebase_auth.User{
  UserModel get toUser {
    return UserModel(id: uid,displayName: displayName,email: email, imgUrl: photoURL);
  }
}