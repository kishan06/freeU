import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Response;
import 'package:shared_preferences/shared_preferences.dart';
import 'base_manager.dart';

import 'package:http/http.dart' as http;

import 'entry_point_controller.dart';

class NetworkApi {
  Dio dio = Dio();
  final controllerEntryPoint = Get.put(EntryPointController());

  Future<ResponseData> getApi(String url) async {
    if (kDebugMode) {
      print("api url is >>> $url");
    }
    Response response;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    try {
      response = await dio.get(url,

          options: controllerEntryPoint.logedIn!
              ? Options(headers: {"authorization": "Bearer $token"})
              : Options(headers: {
                  "authorization":
                      "Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv"
                }));

    } on Exception catch (_) {
      return ResponseData<dynamic>(
          'Oops something Went Wrong', ResponseStatus.FAILED);
    }
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

  Future<ResponseData> postApi({data, required String url}) async {
    if (kDebugMode) {
      print("data >>> $data");
      print("api url is >>> $url");
    }
    Response response;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
    String? token = prefs.getString('token').toString();
    print("token is $token");
    try {
      response = await dio.post(url,
          data: data,

          options: controllerEntryPoint.logedIn!
              ? Options(headers: {"authorization": "Bearer $token"})
              : Options(headers: {
                  "authorization":
                      "Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv"
                }));

    } on Exception catch (_) {
      return ResponseData<dynamic>(
          'Opps something went wrong', ResponseStatus.FAILED);
    }

    // if (kDebugMode) {
    //   print(response);
    // }

    // print("response in post $response");

    if (response.statusCode == 200) {
      // print(response.data);

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

  Future<ResponseData> postFileUploadApi({data, required String url}) async {
    if (kDebugMode) {
      print("data >>> $data");
      print("api url is >>> $url");
    }
    Response response;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
    String? token = prefs.getString('token').toString();
    try {
      response = await dio.post(url,
          data: data,
          options: controllerEntryPoint.logedIn!
              ? Options(headers: {"authorization": "Bearer $token"})
              : Options(headers: {
                  "authorization":
                      "Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv"
                }));
    } on Exception catch (_) {
      return ResponseData<dynamic>(
          'Opps something went wrong', ResponseStatus.FAILED);
    }

    if (kDebugMode) {
      print(response);
    }

    print("response in post $response");

    if (response.statusCode == 200) {
      // print(response.data);

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

  Future<ResponseData<dynamic>> postApiHttp(
      String token, String url, Map<String, String> body) async {
    var headers = {
      'Authorization': 'Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv',
      // 'Cookie': 'laravel_session=eyJpdiI6ImcwS2NYNlJYam4wcU1YUXJsYWZsb2c9PSIsInZhbHVlIjoiK0hvT3c5NmZFQ0NDajYxTUFaaVluWkpYbUkwYk1JbldyTVJwZitMN05zWnliaVdBNWZjTXpyVG5UODM1MTBaMzQwUCtNc3lGak5MQWRZamh2dWIvdzIxQnNVVWQrQi9NUi9YTS9PQWgxMlZHTENUNU0zY0VVazluNEplTFFvbGgiLCJtYWMiOiJkNjA0NjA4YWJhZDkxODA0YmQ2MTViNzc1MTg4OWRiODMzMjI5OGE0ZDI3MDRhMTAzM2E1MGY4ODQyMjI1NGIxIiwidGFnIjoiIn0%3D'
    };

    controllerEntryPoint.logedIn!
        ? headers = {"authorization": "Bearer $token"}
        : headers = {
            "authorization":
                "Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv"
          };
    var request = http.MultipartRequest('POST', Uri.parse(url));

    request.fields.addAll(body);

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var resp = await response.stream.bytesToString();
      var jsonResp = jsonDecode(resp);
      print(jsonResp);
      return ResponseData<dynamic>("success", ResponseStatus.SUCCESS,
          data: jsonResp);
      // return await response.stream.bytesToString();
    } else if (response.statusCode == 400) {
      var resp = await response.stream.bytesToString();
      var jsonResp = jsonDecode(resp);
      print(jsonResp);
      return ResponseData<dynamic>(
        jsonResp["message"],
        ResponseStatus.FAILED,
      );
    } else if (response.statusCode == 500) {
      var resp = await response.stream.bytesToString();
      var jsonResp = jsonDecode(resp);
      print(jsonResp);
      return ResponseData<dynamic>(
        jsonResp["message"],
        ResponseStatus.FAILED,
      );
    } else {
      return ResponseData<dynamic>(
        response.reasonPhrase!,
        ResponseStatus.FAILED,
      );
    }
  }

    Future<ResponseData> postslugApi(String url) async {
    if (kDebugMode) {
      print("api url is >>> $url");
    }
    Response response;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? token = prefs.getString('token');
    String? token = prefs.getString('token').toString();
 print("token is $token");
    try {
      response = await dio.post(url,

          options: controllerEntryPoint.logedIn!
              ? Options(headers: {"authorization": "Bearer $token"})
              : Options(headers: {
                  "authorization":
                      "Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv"
                }));

    } on Exception catch (_) {
      return ResponseData<dynamic>(
          'Oops something Went Wrong', ResponseStatus.FAILED);
    }
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
