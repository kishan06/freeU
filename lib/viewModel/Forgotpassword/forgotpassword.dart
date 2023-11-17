import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

class Forgotpasswordotp {

   Future<ResponseData<dynamic>> PostforgotpassotpApi(Map<String, String> updata) async {
    final response = await NetworkApi().postApiHttp(
        '1867|aBb92qswYsEzQa8LJayiuQw6B3Wofuj6iluUumLx', ApiUrls.postforgotpassotp, updata);
    return response;
  }

     Future<ResponseData<dynamic>> PostforgotpasswordApi(Map<String, String> updata) async {
    final response = await NetworkApi().postApiHttp(
        '1867|aBb92qswYsEzQa8LJayiuQw6B3Wofuj6iluUumLx', ApiUrls.postforgotpassword, updata);
    return response;
  }

}