
import 'package:freeu/Models/GlobalCommercialproducts.dart';
import 'package:freeu/Models/IndianIndustrialproductsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

GlobalCommercialproductsdata? Globalcommercialproductsobj;

class GlobalCommercialreal {
  GlobalCommercialreal();

  Future<ResponseData<dynamic>> GlobalCommercialrealAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.Globalcommercialrealproducts);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Globalcommercialproductsobj =
            GlobalCommercialproductsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
