import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'base_manager.dart';

class NetworkApi {
  Dio dio = Dio();
  Future getApi(String url) async {
    if (kDebugMode) {
      print("api url is >>> $url");
    }
    Response response;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token').toString();
    try {
      response = await dio.get(url,
          options: Options(headers: {"authorization": "Bearer $token"}));
    } on Exception catch (_) {
      return ResponseData<dynamic>(
          'Oops something Went Wrong', ResponseStatus.FAILED);
    }
    if (response.statusCode == 200) {
      return ResponseData<dynamic>(
        "success",
        ResponseStatus.SUCCESS,
      );
    } else {
      try {
        return ResponseData<dynamic>(
            response.data['message'].toString(), ResponseStatus.FAILED);
      } catch (_) {
        return ResponseData<dynamic>(
            response.statusMessage!, ResponseStatus.FAILED);
      }
    }
  }

  Future<ResponseData> postApi(data, String url) async {
    if (kDebugMode) {
      print("data >>> $data");
      print("api url is >>> $url");
    }
    Response response;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token').toString();

    response = await dio.post(
      url,
      data: data,
    );
    // print("succ");
    print(response);

    if (kDebugMode) {
      print(response);
    }

    print("resp in post $response");

    if (response.statusCode == 200) {
      return ResponseData<dynamic>("success", ResponseStatus.SUCCESS,
          data: response.data);
    } else {
      try {
        return ResponseData<dynamic>(
            response.data['message'].toString(), ResponseStatus.FAILED);
      } catch (_) {
        return ResponseData<dynamic>(
            response.statusMessage!, ResponseStatus.FAILED);
      }
    }
  }
}
