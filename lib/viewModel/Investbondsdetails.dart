import 'package:freeu/Models/Investdetailsbonds.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Investmentbondsdetailsdata? InvestmentbondsdetailsObj;

class InvestmentbondsDetails {
  InvestmentbondsDetails();

  Future<ResponseData<dynamic>> InvestmentbondsDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.InvestmentbondsDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        InvestmentbondsdetailsObj = Investmentbondsdetailsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
