import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

class Securitypin {

 Future<ResponseData<dynamic>> PostSecuritypin(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostSecuritypin, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

   Future<ResponseData<dynamic>> PostChecksecuritypin(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostChecksecuritypin, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

}