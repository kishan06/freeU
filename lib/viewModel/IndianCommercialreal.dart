
import 'package:freeu/Models/IndianCommercialproducts.dart';
import 'package:freeu/Models/IndianIndustrialproductsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

IndianCommercialproductsdata? Indiancommercialproducts;

class IndianCommercialreal {
  IndianCommercialreal();

  Future<ResponseData<dynamic>> IndianCommercialrealAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.IndianCommercialrealproducts);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Indiancommercialproducts =
            IndianCommercialproductsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
