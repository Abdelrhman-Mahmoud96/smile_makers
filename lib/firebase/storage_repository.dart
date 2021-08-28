import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';

class StorageRepository{

  StorageRepository._internal();

  static final StorageRepository storageRepository = StorageRepository._internal();

  factory StorageRepository(){
    return storageRepository;
  }

  FirebaseStorage _storage = FirebaseStorage.instanceFor(bucket: 'gs://smile-makers-c8b0e.appspot.com');

  Future<String> uploadUserPhoto(File photo) async{

      User user = FirebaseAuth.instance.currentUser!;
      Reference reference = _storage.ref().child('user_profile/avatar/${user.uid}');
      UploadTask uploadTask = reference.putFile(File(photo.path));
      String imgUrl = await (await uploadTask).ref.getDownloadURL();
      return imgUrl;

  }

  Future<String> uploadDonationPhoto(File photo) async{
    String fileName = basename(photo.path);
    Reference reference = _storage.ref().child('donations/photos/$fileName');
    UploadTask uploadTask = reference.putFile(File(photo.path));
    String imgUrl = await (await uploadTask).ref.getDownloadURL();
    return imgUrl;
  }

  // we use this method in case the users uploaded a photo but didn't complete
  // the donation, so we delete the temp photo they uploaded
  Future<void> deleteTemporaryPhoto(String donationUrl) async{
    await _storage.refFromURL(donationUrl).delete();
  }
}