import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserFireStoreRepo{

  final _userTokenCollection = FirebaseFirestore.instance.collection('token');

  Future addUserToken({String? token, String? currentUserId}) async{
    _userTokenCollection.doc(currentUserId).set({"token": token})
        .then((_) => print('token added successfully'))
        .catchError((error) => print('failed to add token'));
  }



}