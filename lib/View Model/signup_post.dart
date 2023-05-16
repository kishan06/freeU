import 'dart:convert';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPost {
  // SignupPost();
  // var data;

  Future<ResponseData<dynamic>> signupApi(data) async {
    print("in sign up");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("in sign mer $data");
    final response = await NetworkApi().postApi(
      data,
      ApiUrls.signUp,
    );
    print("response $response");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData = jsonDecode(response.data);

      if (responseData['status'] == 200) {
        return ResponseData<dynamic>(
          "success",
          ResponseStatus.SUCCESS,
        );
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
