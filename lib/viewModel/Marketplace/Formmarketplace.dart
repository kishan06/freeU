import 'package:freeu/Models/Marketplace/Form/formmodel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetFormmodel? formobj;

class FormMarketplace {
  // Future<ResponseData<dynamic>> Getform() async {
  //   final response = await NetworkApi().getApi(ApiUrls.Getform);
  //   if (response.status == ResponseStatus.SUCCESS) {
  //     formobj = GetFormmodel.fromJson(response.data);
  //   }
  //   print("getform is ${formobj}");
  //   print(response.data);
  //   return response;
  // }

  Future<ResponseData<dynamic>> Getform(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.Getform + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        formobj = GetFormmodel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

  Future<ResponseData<dynamic>> Postform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.Postform, data: updata);
    print("response is ${response.data}");
    print("response message is ${response.message}");
    return response;
  }


}