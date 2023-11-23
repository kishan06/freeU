import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  static Future<MultipartFile> networkImageToMultipartFile(
      String imageUrl) async {
    Dio dio = Dio();

    Response<Uint8List> response = await dio.get<Uint8List>(imageUrl,
        options: Options(responseType: ResponseType.bytes));

    MultipartFile multipartFile = MultipartFile.fromBytes(
      response.data!,
      filename: imageUrl.substring(imageUrl.lastIndexOf("/") + 1),
    );

    return multipartFile;
  }

  static Future<MultipartFile> assetImageToMultipartFile(
      String assetImagePath, String fileName) async {
    ByteData assetByteData = await rootBundle.load(assetImagePath);
    List<int> assetBytes = assetByteData.buffer.asUint8List();

    MultipartFile file = MultipartFile.fromBytes(
      assetBytes,
      filename: fileName,
    );

    return file;
  }

  static Future<void> downloadImage(String image, BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    final Dio dio = Dio();
    final appDir = await getApplicationDocumentsDirectory();
    final String fileName = image.split('/').last;
    ;
    final File file = File('${appDir.path}/$fileName');
    try {
      log(file.path);
      await dio.download(image, file.path,
          options: Options(headers: {"authorization": "Bearer $token"}));

      // // Save image to gallery
      await ImageGallerySaver.saveFile(file.path);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Image downloaded and saved to gallery successfully'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to download or save image'),
        ),
      );
    }
  }
}
