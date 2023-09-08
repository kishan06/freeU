
import 'package:freeu/Models/DetailsIndustrialModel.dart';
import 'package:freeu/Models/DetailsResidentialModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

IndianResidentialDetailsModel ? IndianResidentialdetailsobj;

class IndianResidentialDetails {
  IndianResidentialDetails();

  Future<ResponseData<dynamic>> IndianResidentialDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.IndianResidentialDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        IndianResidentialdetailsobj =
            IndianResidentialDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
