import 'package:freeu/Models/IndianResidentialproducts.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

IndianResidentialproductsdata? Indianresidentialproducts;

class IndianResidentialreal {
  IndianResidentialreal();

  Future<ResponseData<dynamic>> IndianResidentialrealAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.IndianResidentialrealproducts);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Indianresidentialproducts =
            IndianResidentialproductsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
