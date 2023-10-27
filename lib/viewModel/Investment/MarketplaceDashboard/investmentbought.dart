import 'package:freeu/Models/Investment/MarketplaceDashboard/Investmentbought/alternativeboughtModel.dart';
import 'package:freeu/Models/Investment/MarketplaceDashboard/Investmentbought/fractionalboughtModel.dart';
import 'package:freeu/Models/Investment/MarketplaceDashboard/Investmentbought/othersinestboughtModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

AlternativeInvestboughtModel? alternativeboughtobj;
FractionalInvestboughtModel? fractionalboughtobj;
OthersInvestboughtModel? othersboughtobj;

class Marketinvestbought {

Future<ResponseData<dynamic>> Alternativebought() async {
    final response = await NetworkApi().getApi(ApiUrls.Getmarketalternatebought);
    if (response.status == ResponseStatus.SUCCESS) {
      alternativeboughtobj = AlternativeInvestboughtModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Fractionalbought() async {
    final response = await NetworkApi().getApi(ApiUrls.Getmarketfractioanlbought);
    if (response.status == ResponseStatus.SUCCESS) {
      fractionalboughtobj = FractionalInvestboughtModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Othersbought() async {
    final response = await NetworkApi().getApi(ApiUrls.Getmarketothersbought);
    if (response.status == ResponseStatus.SUCCESS) {
      othersboughtobj = OthersInvestboughtModel.fromJson(response.data);
    }
    return response;
  }

}