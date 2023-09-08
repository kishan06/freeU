
import 'package:freeu/Models/DetailsGlobalResidentialModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

GlobalResidentialDetailsModel ? Globalresidentialdetailsobj;

class GlobalResidentialDetailsviewmodel {
  GlobalResidentialDetailsviewmodel();

  Future<ResponseData<dynamic>> GlobalResidentialDetailsviewmodelAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.GlobalresidentialDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Globalresidentialdetailsobj =
            GlobalResidentialDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
