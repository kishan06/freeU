
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

class KycV2Apis {

  Future<ResponseData<dynamic>> Companykycdetails(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.Postcompanykyc, data: updata);
    return response;
  }

    Future<ResponseData<dynamic>> Partnershipkycdetails(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.Postpartnershipkyc, data: updata);
    return response;
  }
  
    Future<ResponseData<dynamic>> Otherkycdetails(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.Postotherkyc, data: updata);
    return response;
  }

    
    Future<ResponseData<dynamic>> Individualkycdetails(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.Postindividualkyc, data: updata);
    return response;
  }

      
    Future<ResponseData<dynamic>> Hufkycdetails(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.Posthufkyc, data: updata);
    return response;
  }

        
    Future<ResponseData<dynamic>> Nrikycdetails(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.Postnrikyc, data: updata);
    return response;
  }

}
