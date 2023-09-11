
import 'package:freeu/Models/Mutualfundsproducts.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

MutualFundsproductsdata? MutualFundsproductsobj;

class MutualFundssproducts {
  MutualFundssproducts();

  Future<ResponseData<dynamic>> MutualFundssproductsAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.MutualFundsproducts);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        MutualFundsproductsobj =
            MutualFundsproductsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
