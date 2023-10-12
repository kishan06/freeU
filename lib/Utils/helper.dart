import 'dart:typed_data';

import 'package:dio/dio.dart';

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
}
