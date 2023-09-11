
import 'package:freeu/Models/Highyieldbondsproducts.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Highyieldbondsproductsdata? Highyieldbondsproductsobj;

class Highyieldbondsproducts {
  Highyieldbondsproducts();

  Future<ResponseData<dynamic>> HighyieldbondsproductsAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.Highyieldsbondsproducts);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Highyieldbondsproductsobj =
            Highyieldbondsproductsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
