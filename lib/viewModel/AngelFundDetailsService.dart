import 'package:freeu/Models/AngelFundDetailsModel.dart';
import 'package:freeu/Models/VentureCapitalDetailsModel.dart';
import 'package:freeu/Models/VentureCapitalModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

AngelFundDetailsModel? angelFundDetailsObj;

class AngelFundDetails {
  AngelFundDetails();

  Future<ResponseData<dynamic>> AngelFundDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.AngelFundDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        angelFundDetailsObj = AngelFundDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
