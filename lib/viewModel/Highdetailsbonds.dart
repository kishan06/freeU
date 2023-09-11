import 'package:freeu/Models/HighdetailsbondsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Highyieldbondsdetailsdata? HighyieldbondsdetailsObj;

class HighyieldbondsDetails {
  HighyieldbondsDetails();

  Future<ResponseData<dynamic>> HighyieldbondsDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.HighyieldbondsDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        HighyieldbondsdetailsObj = Highyieldbondsdetailsdata.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
