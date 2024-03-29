
import 'package:dio/dio.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storecontactusdetails {
  Dio dio = new Dio();

  Future<ResponseData> postStorecontactusdetails(
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
      dio.post(ApiUrls.Postcontactus,
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

      print(response);

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
}
