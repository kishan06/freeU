import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freeu/Global.dart';
import 'package:freeu/ViewModel/Profile/Getprofile.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart' hide FormData;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:freeu/Utils/Dialogs.dart';

class CatController extends GetxController {
  bool _indianFinancialAssets = true;
  bool get indianFinancialAssets => _indianFinancialAssets;

  bool _indianRealAssets = true;
  bool get indianRealAssets => _indianRealAssets;

  bool _globalFinancialAssets = true;
  bool get globalFinancialAssets => _globalFinancialAssets;

  bool _globalRealAssets = true;
  bool get globalRealAssets => _globalRealAssets;

  final controllerEntryPoint = Get.put(EntryPointController());

  setTrue(){
    _indianFinancialAssets = true;
    _indianRealAssets = true;
    _globalFinancialAssets = true;
    _globalRealAssets = true;
    update();
  }

  getfilterData({required List<int> filters}) async {
    print(filters);
    utils.loader();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token').toString();

    var headers = {
      'Accept': 'application/json',
      'Authorization': controllerEntryPoint.logedIn!
          ? "Bearer $token"
          : "Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv",
      // 'Bearer 12|SxRovmqg57oxLf2wfuycYh6YIh7YdVxneDsLC5uz',
      'Cookie':
          'XSRF-TOKEN=eyJpdiI6IkF3eHVmMnp4amZ3dlpJMTY3cVllOXc9PSIsInZhbHVlIjoiZnNOd2hRTkQrcEZLdFNITGRUTE9TdHdXYUJ1ZEZCM1haUU50TlJJWHN1RVlBRyttNEdVZExwK1BuOGZSemJONmN3RW5wWGJCZUNNWi9MY0pwbzhDRmJQbG5pT3I1ekppQXpxZGZXQitnTTJ1MW9oSmpIVEkyZDJyK2NBV0lNbkkiLCJtYWMiOiIyOThkYzQzYjgxYzBhNzVlNmI4ZmQzODBiNDBhNTQ4NzY5NGM5ZTk1Y2JlMDc1ODI5MGYzMTgwZDNjYjIwNGVmIiwidGFnIjoiIn0%3D; freeu_session=eyJpdiI6IklrZURqcjVrY0w2dEpHdjJjZkROb0E9PSIsInZhbHVlIjoibGF0SzhRRXVFZEYxSnV1bll0SFBKTTIrQ1ZzdWs3YUZHT055bWM0MEZCSWVKT1gvU0VEWXNhNzIzY2U2L3pHZkxWNW8zRUZZakUzN0lybUk1ZTlKSXVsRG5KU0NtVkxObTZpKzRqa2VvZWxqd0RuSEh1Wlowa1NLMEx4YUl4aGIiLCJtYWMiOiI2NGExN2RhODY0MmY3YzNhNTA5ZWI1ODljYTZmZDY1ODg4MGVjNDgzZjY1YTYwNzkzOWU1ODg5ZTJjNDdkMmNjIiwidGFnIjoiIn0%3D'
    };
    var data = FormData.fromMap({'filter[]': filters});

    var dio = Dio();
    var response = await dio.request(
      // 'https://pi.betadelivery.com/freeU_investment/api/product-filter',
      ApiUrls.Postfiltercategories,
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      print(json.encode(response.data));
      var resp = (response.data);
      print(resp["data"]);
      _indianFinancialAssets = resp["data"]["indian-financial-assets"];
      // _indianRealAssets = resp
      _indianRealAssets = resp["data"]["indian-real-assets"];
      _globalFinancialAssets = resp["data"]["global-financial-assets"];
      _globalRealAssets = resp["data"]["global-real-assets"];
      update();

      print("filter added");
      Get.back();
      Get.back();
    } else {
      print(response.statusMessage);
      print("filter not added");
      Get.back();
    }
  }

  verifyOtp(String Otp, String phone) async {
    utils.loader();
    var headers = {
      // 'Authorization': 'Bearer 12|SxRovmqg57oxLf2wfuycYh6YIh7YdVxneDsLC5uz',

      'Cookie':
          // shubham cookie
          // 'freeu_session=eyJpdiI6IkMrZXdvRit3M0xEWDUyU1paSzIwWFE9PSIsInZhbHVlIjoiK2liMzJUV0dlRVpFSU9iZWpyZHdtS0pUU091ay85Y0pULzJiVi9hNk1INzFBVTQrSzBQNHgzcHhPRTl5Q0ZZVEo3cHpoRnV6OXhNYkg3cGdoRWtyTVNIMlB6RllwaVN1Y1BWOE9jWTQrbzBuc3F1TnNqMzBNREV6dEthSFp5dE8iLCJtYWMiOiI1NGRjMThlMGViMzZlZDQxOGEwNGFlZGJkOTI3MjRkZDQyNWMwYjlhZjQ0ZjRhZTNiZTE4YmEzNjI2MjE0OTk2IiwidGFnIjoiIn0%3D'

          // shamshad cookkie
          'freeu_session=eyJpdiI6IkYxd21QcHowNUE1ZE40NGI0NlN0UWc9PSIsInZhbHVlIjoiaXF3MjF0QUFCVTRNTGp2YVVqTnNnaGcvVk4zdVRJMitDcnd5TVNRUlovdlp6TFcxSDV6V2dSd0N5ajdkK3g1NjUrR1FVM3hiN1JVL3NZRzA1U3ZjQllIcXAxRmhmNkMyWW8wNXVLZlpueFZlZWh0K3BxRWFIQzVRdTVwRisxQnIiLCJtYWMiOiI0ZTFmZTEyYWJmZmI5NDgzYjAxN2FkZjRlNDI4NTRhOWZmMGE3YWU4MzdhNTIxMjFiYThjMDViYzg0OTU5OTU5IiwidGFnIjoiIn0%3D'
      // 'freeu_session=eyJpdiI6IlZQYzZxeURzZCtqVklOUHRQRUVIMlE9PSIsInZhbHVlIjoiOHNCb2o2UkRkTFJPei9mYy9wUU5UK0ZQdGNzQ3AvcjB1NmRsa09pdVN0TG5Wb1hRaE9aN1NVd1BsTzQ2OC9URVVIRVZ5SHJLeXJEZG5tSHkwa0VCN25OcmpVZ3J2ZElxYVF0eXUzVlUyM2ZFOTdOS2dIWDlhZ3lwakxkaGYyMHoiLCJtYWMiOiJjN2M1NTYwNWNmYjJlOTZlOTFlZWVlMWQ3OTIzMWY2OGE1ZTMyMGNjNzMwMzY2NjQyMDAyNWQ0YWMxYTU4NWM5IiwidGFnIjoiIn0%3D'

      // 'freeu_session=eyJpdiI6ImJQRkZGUi9YaHdKT2V2ZmFFZTgzYVE9PSIsInZhbHVlIjoiTHo1R2FIYVp5K201bmxiVW9BelFjL21yUHNTYVBGS05jN3gxN1MvWXZ0T1UzM3NXdTJUKzgwMGFFcTVVc0s5V2pWQmhIclRQZGNHcHJtMUJrWEc2d1BMM1dFK2FJdGdPQ0pQcUUwcnZFNDJFQ0R3aUtjMVhxeWZSaEE3MHpJeWYiLCJtYWMiOiIwYjRiNWU2YzUyMzhkYTFmOTFhYmQwOTk4NDZmYjQ2MWJmOGQ4ZTc4M2NhYzVlNzgyMGQ3Y2U4ZWVmYmQ5ODIyIiwidGFnIjoiIn0%3D'
    };
    var data = FormData.fromMap({
      'otp': Otp,
      'contact_number': phone,
    });

    var dio = Dio();
    var response = await dio.request(
      ApiUrls.postloginOtpenter,
      // 'https://pi.betadelivery.com/freeU_investment/api/entered-otp',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      print(json.encode(response.data));
      print("response is sucess");
      var resp = response.data;
      print("yg ${resp['message']}");
      Get.back();

      // if (resp['token'] != null) {
        GetProfile().GetProfileAPI();
        Future.delayed(Duration(seconds: 2), () async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();

          await prefs.setBool('LogedIn', true);

          // Map<String, dynamic> res = resp.data;
          // print(res);
          Map<String, dynamic> res = resp;
          print("res is $res");
          await prefs.setString('token', res["token"]);
          await prefs.setString('name', res["data"]["name"]);
          myusername = res["data"]["name"];
          token = res["token"];
          print("token is $token");
          print("myusername is $myusername");
          Get.toNamed("/EntryPoint", arguments: 0);
        });
        controllerEntryPoint.changeSigninApiBool();
      // } else {
      //   Get.toNamed("/completeprofile");
      // }

      return utils.showToast(resp['message']);
    } else if (response.statusCode == 201) {
      print(json.encode(response.data));
      var resp = response.data;
      print("yg ${resp['message']}");
      Get.back();
      return utils.showToast(resp['message']);
    } else if (response.statusCode == 400) {
      // return utils.showToast(response.statusMessage);
      print(json.encode(response.data));
      var resp = response.data;
      print("yg ${resp['message']}");
      Get.back();
      return utils.showToast(resp['message']);
    } else {
      print(json.encode(response.data));
      var resp = response.data;
      print("yg ${resp['message']}");
      Get.back();
      controllerEntryPoint.changeSigninApiBool();
      return utils.showToast(resp['message']);
    }
  }

  verifyforgotpasswordOtp(String Otp, String phone) async {
    utils.loader();
    var headers = {
      // 'Authorization': 'Bearer 12|SxRovmqg57oxLf2wfuycYh6YIh7YdVxneDsLC5uz',

      'Cookie':
          // shubham cookie
          // 'freeu_session=eyJpdiI6IkMrZXdvRit3M0xEWDUyU1paSzIwWFE9PSIsInZhbHVlIjoiK2liMzJUV0dlRVpFSU9iZWpyZHdtS0pUU091ay85Y0pULzJiVi9hNk1INzFBVTQrSzBQNHgzcHhPRTl5Q0ZZVEo3cHpoRnV6OXhNYkg3cGdoRWtyTVNIMlB6RllwaVN1Y1BWOE9jWTQrbzBuc3F1TnNqMzBNREV6dEthSFp5dE8iLCJtYWMiOiI1NGRjMThlMGViMzZlZDQxOGEwNGFlZGJkOTI3MjRkZDQyNWMwYjlhZjQ0ZjRhZTNiZTE4YmEzNjI2MjE0OTk2IiwidGFnIjoiIn0%3D'

          // shamshad cookkie
          'freeu_session=eyJpdiI6IkYxd21QcHowNUE1ZE40NGI0NlN0UWc9PSIsInZhbHVlIjoiaXF3MjF0QUFCVTRNTGp2YVVqTnNnaGcvVk4zdVRJMitDcnd5TVNRUlovdlp6TFcxSDV6V2dSd0N5ajdkK3g1NjUrR1FVM3hiN1JVL3NZRzA1U3ZjQllIcXAxRmhmNkMyWW8wNXVLZlpueFZlZWh0K3BxRWFIQzVRdTVwRisxQnIiLCJtYWMiOiI0ZTFmZTEyYWJmZmI5NDgzYjAxN2FkZjRlNDI4NTRhOWZmMGE3YWU4MzdhNTIxMjFiYThjMDViYzg0OTU5OTU5IiwidGFnIjoiIn0%3D'
      // 'freeu_session=eyJpdiI6IlZQYzZxeURzZCtqVklOUHRQRUVIMlE9PSIsInZhbHVlIjoiOHNCb2o2UkRkTFJPei9mYy9wUU5UK0ZQdGNzQ3AvcjB1NmRsa09pdVN0TG5Wb1hRaE9aN1NVd1BsTzQ2OC9URVVIRVZ5SHJLeXJEZG5tSHkwa0VCN25OcmpVZ3J2ZElxYVF0eXUzVlUyM2ZFOTdOS2dIWDlhZ3lwakxkaGYyMHoiLCJtYWMiOiJjN2M1NTYwNWNmYjJlOTZlOTFlZWVlMWQ3OTIzMWY2OGE1ZTMyMGNjNzMwMzY2NjQyMDAyNWQ0YWMxYTU4NWM5IiwidGFnIjoiIn0%3D'

      // 'freeu_session=eyJpdiI6ImJQRkZGUi9YaHdKT2V2ZmFFZTgzYVE9PSIsInZhbHVlIjoiTHo1R2FIYVp5K201bmxiVW9BelFjL21yUHNTYVBGS05jN3gxN1MvWXZ0T1UzM3NXdTJUKzgwMGFFcTVVc0s5V2pWQmhIclRQZGNHcHJtMUJrWEc2d1BMM1dFK2FJdGdPQ0pQcUUwcnZFNDJFQ0R3aUtjMVhxeWZSaEE3MHpJeWYiLCJtYWMiOiIwYjRiNWU2YzUyMzhkYTFmOTFhYmQwOTk4NDZmYjQ2MWJmOGQ4ZTc4M2NhYzVlNzgyMGQ3Y2U4ZWVmYmQ5ODIyIiwidGFnIjoiIn0%3D'
    };
    var data = FormData.fromMap({
      'otp': Otp,
      'contact_number': phone,
    });

    var dio = Dio();
    var response = await dio.request(
      ApiUrls.postforgotpassOtpenter,
      // 'https://pi.betadelivery.com/freeU_investment/api/entered-otp',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      print(json.encode(response.data));
      print("response is sucess");
      var resp = response.data;
      print("forgot password ${resp['message']}");
      Get.back();
      Get.toNamed('/resetpassword', arguments: phone);

      return utils.showToast(resp['message']);
    } else if (response.statusCode == 201) {
      print(json.encode(response.data));
      var resp = response.data;
      print("yg ${resp['message']}");
      Get.back();
      return utils.showToast(resp['message']);
    } else if (response.statusCode == 400) {
      // return utils.showToast(response.statusMessage);
      print(json.encode(response.data));
      var resp = response.data;
      print("yg ${resp['message']}");
      Get.back();
      return utils.showToast(resp['message']);
    } else {
      print(json.encode(response.data));
      var resp = response.data;
      print("yg ${resp['message']}");
      Get.back();
      controllerEntryPoint.changeSigninApiBool();
      return utils.showToast(resp['message']);
    }
  }
}
