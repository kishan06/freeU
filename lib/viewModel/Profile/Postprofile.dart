
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freeu/Global.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profiledetails {
  Dio dio = new Dio();

  Future<ResponseData> postProfiledetails(
      Map<String, dynamic> updata) async {
    print("reached till here");
    print(updata);
    Response response;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = await prefs.getString('token').toString();
    print("reached till here");
    try {
      print("reached");
      response = await 
      dio.post(ApiUrls.Postprofiledetails,
          data: updata,
          options: Options(headers: {"authorization": "Bearer $token"}));
    } on Exception catch (_) {
      print("Not reached");
      return ResponseData<dynamic>(
          'Please Fill correct Details', ResponseStatus.FAILED);
    }
    print(" resp is $response");
    if (response.statusCode == 200) {
      // Map<String, dynamic> res = response.data;
      // await prefs.setString('token', res["token"]);

      Map<String,dynamic> res = response.data;
      print("data is $res");
      print("updata is ${updata}");
      print("data response is ${response.data}");

      await prefs.setString('name', updata["name"]);

      print("name is ${updata["name"]}");

      myusername = updata["name"];
      print(response);
      print(myusername);

      return ResponseData<dynamic>(
        "success",
        ResponseStatus.SUCCESS,
        // data: res
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
}
