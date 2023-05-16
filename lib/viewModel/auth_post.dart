import 'dart:convert';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SignupPost {
   Future<ResponseData<dynamic>> signUpApi(Map<String, String> body) async {
    final response = await NetworkApi().postApiHttp(
      '1867|aBb92qswYsEzQa8LJayiuQw6B3Wofuj6iluUumLx', 
      ApiUrls.signUp, 
      body
    );
    return response;
    // var jsonData = jsonDecode(response);

  }
}