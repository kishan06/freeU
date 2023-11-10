import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

class Loginotp {

   Future<ResponseData<dynamic>> PostloginotpApi(Map<String, String> updata) async {
    final response = await NetworkApi().postApiHttp(
        '1867|aBb92qswYsEzQa8LJayiuQw6B3Wofuj6iluUumLx', ApiUrls.postloginotp, updata);
    return response;
  }

     Future<ResponseData<dynamic>> PostloginresendApi(Map<String, String> updata) async {
    final response = await NetworkApi().postApiHttp(
        '1867|aBb92qswYsEzQa8LJayiuQw6B3Wofuj6iluUumLx', ApiUrls.postloginotp, updata);
    return response;
  }

       Future<ResponseData<dynamic>> PostloginotpenteredApi(Map<String, String> updata) async {
        print(updata);
    final response = await NetworkApi().postApiHttp(
        '', ApiUrls.postloginOtpenter, updata);
    return response;
  }

}