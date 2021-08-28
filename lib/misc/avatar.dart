import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/misc/image_compressor.dart';


const _avatarSize = 60.0;

class Avatar extends StatelessWidget {
  const Avatar({Key? key, this.photo}) : super(key: key);

  final String? photo;

  @override
  Widget build(BuildContext context) {
    final photo = this.photo;
       
    return Stack(
      children: [
        Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/loading_avatar.gif')),
            shape: BoxShape.circle,
            border: new Border.all(
              color: SmileColors.smileLightPaige,
              width: 4.0,
            ),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(160),
              child: photo == null ? FadeInImage(
                  fit: BoxFit.cover,
                  width: 160,
                  height: 160,
                  placeholder: AssetImage('assets/loading_avatar.gif'),
                  image: AssetImage('assets/avatar.jpg')
              ) : FadeInImage(
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                  placeholder: AssetImage('assets/loading_avatar.gif'),
                  image: NetworkImage(photo)
              )
            ),
        ),
        ),
         Align(
             alignment: Alignment.bottomCenter,
             child: Padding(padding: EdgeInsets.only(top: 46),
               child: _ImagePicker(),
             )
         )
      ],
    );
  }
}
class _ImagePicker extends StatelessWidget {
  final picker = ImagePicker();
  final imageCompressor = ImageCompressor();
  final AuthRepository _authRepository = AuthRepository();

  Future<void> getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    imageCompressor.compressFile(File(pickedFile!.path))
        .then((compressedFile) => _authRepository.updateProfileImage(File(compressedFile.path)));

  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 100, left: 35, right: 35), child: FloatingActionButton(
        backgroundColor: SmileColors.smileBlue ,
        child: Icon(Icons.camera_alt, color: SmileColors.smileYellow,) ,
        onPressed: getImage
    ),);
  }
}

