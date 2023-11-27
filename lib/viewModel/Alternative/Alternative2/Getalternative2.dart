import 'package:freeu/Models/AlternativeCat/Alternative2/GetdetailsfunddistressedModel.dart';
import 'package:freeu/Models/AlternativeCat/Alternative2/GetfundporductsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

FunddistressedModel? funddistressedobj;

FundDistressedDetailsModel? detailsfunddistessedobj;



class Alternative2 {
  Alternative2();

   Future<ResponseData<dynamic>> Distressedfund() async {
    final response = await NetworkApi().getApi(ApiUrls.funddistressedasset);
    if (response.status == ResponseStatus.SUCCESS) {
      funddistressedobj = FunddistressedModel.fromJson(response.data);
    }
    return response;
  }

 Future<ResponseData<dynamic>> FundDistressedDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.getdetailsfunddistressed + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        detailsfunddistessedobj = FundDistressedDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
