import 'package:freeu/Models/Marketplace/Sellinvestmentforms/GetsellinvestmentformModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

GetSellFormModel? Sellformobj;


class Sellinvestment {

   Future<ResponseData<dynamic>> GetSellform() async {
    final response = await NetworkApi().getApi(ApiUrls.GetSellform);
    if (response.status == ResponseStatus.SUCCESS) {
      Sellformobj = GetSellFormModel.fromJson(response.data);
    }
    print("getform is ${Sellformobj}");
    print(response.data);
    return response;
  }

    Future<ResponseData<dynamic>> PostSellform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostSellform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

      Future<ResponseData<dynamic>> PostSellalternativeform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostSellalternativeform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

      Future<ResponseData<dynamic>> PostSellfractionalform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostSellfractionalform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

       Future<ResponseData<dynamic>> PostSellothersform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostSellothersform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

}