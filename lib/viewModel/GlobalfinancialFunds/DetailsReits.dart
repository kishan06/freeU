import 'package:freeu/Models/ReitsDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Reitsdetailsdata? ReitsdetailsObj;

class ReitsDetails {
  ReitsDetails();

  Future<ResponseData<dynamic>> ReitsDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.Equitiestocksdetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        ReitsdetailsObj = Reitsdetailsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
