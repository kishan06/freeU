import 'package:freeu/Models/AlternativeCat/Alternative1/GetInfrastructureModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:freeu/Models/AlternativeCat/Alternative1/GetinfrastructuredetailsModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

InfrastructureFundModel? infrastructureobj;

InfrastructureDetailsModel? detailsinfrastructureobj;



class Alternative1 {
  Alternative1();

  Future<ResponseData<dynamic>> Infrastructurefund() async {
    final response = await NetworkApi().getApi(ApiUrls.infrastructurefund);
    if (response.status == ResponseStatus.SUCCESS) {
      infrastructureobj = InfrastructureFundModel.fromJson(response.data);
    }
    return response;
  }

 Future<ResponseData<dynamic>> InfrastructureFundDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.getdetaisinfrastructurefund + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        detailsinfrastructureobj = InfrastructureDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
