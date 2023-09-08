
import 'package:freeu/Models/DetailsGlobalIndustrialModel.dart';
import 'package:freeu/Models/DetailsGlobalResidentialModel.dart';
import 'package:freeu/Models/DetailsIndustrialModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

GlobalIndustrialDetailsModel ? Globalindustrialdetailsobj;

class GlobalIndustrialDetailsviewmodel {
  GlobalIndustrialDetailsviewmodel();

  Future<ResponseData<dynamic>> GlobalIndustrialDetailsviewmodelAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.GlobalindustrialDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Globalindustrialdetailsobj =
            GlobalIndustrialDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
