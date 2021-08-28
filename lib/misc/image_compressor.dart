import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class ImageCompressor{

  const ImageCompressor();


  Future<File> compressFile(File file) async {
    final dir = await getTemporaryDirectory();
    String fileName = basename(file.path);
    final tempFilePath = dir.absolute.path + "/${fileName.split(".").first}_comp.jpg";
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path, tempFilePath,
      quality: 60,
    );

    print(file.lengthSync());
    print(result!.lengthSync());

    return result;
  }
}