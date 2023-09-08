
import 'package:freeu/Models/GlobalIndustrialproducts.dart';
import 'package:freeu/Models/Sovereignbondsmodel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Sovereignbondsproductsdata? Sovereignbondsproductsobj;

class Sovereignbondsproducts {
  Sovereignbondsproducts();

  Future<ResponseData<dynamic>> SovereignbondsproductsAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.Sovereignbondsproducts);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Sovereignbondsproductsobj =
            Sovereignbondsproductsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
