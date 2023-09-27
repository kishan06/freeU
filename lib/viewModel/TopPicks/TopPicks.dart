import 'package:freeu/Models/AngelFundDetailsModel.dart';
import 'package:freeu/Models/TopPicks/TopPicks.dart';
import 'package:freeu/Models/VentureCapitalDetailsModel.dart';
import 'package:freeu/Models/VentureCapitalModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

TopPicksModel? toppick;

class TopPicksApi {
  TopPicksApi();

  Future<ResponseData<dynamic>> TopPicksAPI() async {
    final response = await NetworkApi().getApi(ApiUrls.toppicks);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        toppick = TopPicksModel.fromJson(responseData);
        print("from top pick obj ${toppick?.data?.length}");
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
