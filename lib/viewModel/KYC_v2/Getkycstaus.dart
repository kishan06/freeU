import 'package:freeu/Models/KYC_V2/GetkycstatusModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

GetkycstatusModel? getkycstatusobj;


class Kycstatus {
    Future<ResponseData<dynamic>> Getkycstatus() async {
    final response = await NetworkApi().getApi(ApiUrls.Getkycstatus);
    if (response.status == ResponseStatus.SUCCESS) {
      getkycstatusobj = GetkycstatusModel.fromJson(response.data);
    }
    return response;
  }

}