
import 'package:freeu/Models/DetailsIndCommercialModel.dart';
import 'package:freeu/Models/DetailsIndustrialModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

IndianCommercialDetailsModel ? IndianCommercialdetailsobj;

class IndianCommercialDetails {
  IndianCommercialDetails();

  Future<ResponseData<dynamic>> IndianCommercialDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.IndianCommercialDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        IndianCommercialdetailsobj =
            IndianCommercialDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
