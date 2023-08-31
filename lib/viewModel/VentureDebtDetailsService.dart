import 'package:freeu/Models/FractionalDetailsModel.dart';
import 'package:freeu/Models/VentureDebtDetailsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

VentureDebtDetailsModel? ventureDebtDetailsObj;

class VentureDebtDetails {
  VentureDebtDetails();

  Future<ResponseData<dynamic>> VentureDebtDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.VentureDebtDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        ventureDebtDetailsObj = VentureDebtDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
