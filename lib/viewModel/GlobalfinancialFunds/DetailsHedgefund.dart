import 'package:freeu/Models/HedgefundsDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

HedgeFundsdetailsdata? HedgeFundsdetailsObj;

class HedgeFundsDetails {
  HedgeFundsDetails();

  Future<ResponseData<dynamic>> HedgeFundsDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.FundsSingleDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        HedgeFundsdetailsObj = HedgeFundsdetailsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
