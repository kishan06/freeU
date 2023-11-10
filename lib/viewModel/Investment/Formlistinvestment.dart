import 'package:freeu/Models/Investment/ListsellformModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetLsitSellFormModel? Listformobj;


class Listinvestform {

    Future<ResponseData<dynamic>> ListinvestmentgetAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.GetListsellform + "/${slug}");
    print("api is ${ApiUrls.GetListsellform + "/${slug}"}");

    if (response.status == ResponseStatus.SUCCESS) {
      print("response is ${response.message}");
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        Listformobj = GetLsitSellFormModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

      Future<ResponseData<dynamic>> PostListSellform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostListSellform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

  
      Future<ResponseData<dynamic>> PostListSellalternativeform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostListSellalternativeform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

      Future<ResponseData<dynamic>> PostListSellfractionalform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostListSellfractionalform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }

       Future<ResponseData<dynamic>> PostListSellothersform(updata) async {
    print("updata is $updata");
    final response =
        await NetworkApi().postApi(url: ApiUrls.PostListSellothersform, data: updata);
        print("response is ${response.data}");
        print("response message is ${response.message}");
    return response;
  }
}