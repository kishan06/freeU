
import 'package:freeu/Models/DetailsIndustrialModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

IndianIndustrialDetailsModel ? IndianIndustrialdetailsobj;

class IndianIndustrialDetails {
  IndianIndustrialDetails();

  Future<ResponseData<dynamic>> IndianIndustrialDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.IndianIndustrialDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        IndianIndustrialdetailsobj =
            IndianIndustrialDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
