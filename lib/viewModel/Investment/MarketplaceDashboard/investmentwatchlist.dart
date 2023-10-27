import 'package:freeu/Models/Investment/MarketplaceDashboard/Investmentwatchlist/FractionalinvestwatchModel.dart';
import 'package:freeu/Models/Investment/MarketplaceDashboard/Investmentwatchlist/AlternativeInvestwatchModel.dart';
import 'package:freeu/Models/Investment/MarketplaceDashboard/Investmentwatchlist/OthersInvestwatchlistModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

AlternativeInvestwatchlistModel? alternativewatchobj;
FractionalInvestwatchlistModel? fractionalwatchobj;
OthersInvestwatchlistModel? otherswatchobj;




class Marketinvestwatchlist {

Future<ResponseData<dynamic>> Alternativewatchlist() async {
    final response = await NetworkApi().getApi(ApiUrls.Getmarketalternatwatch);
    if (response.status == ResponseStatus.SUCCESS) {
      alternativewatchobj = AlternativeInvestwatchlistModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Fractionalwatchlist() async {
    final response = await NetworkApi().getApi(ApiUrls.Getmarketfractioanlwatch);
    if (response.status == ResponseStatus.SUCCESS) {
      fractionalwatchobj = FractionalInvestwatchlistModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Otherswatchlist() async {
    final response = await NetworkApi().getApi(ApiUrls.Getmarketotherswatch);
    if (response.status == ResponseStatus.SUCCESS) {
      otherswatchobj = OthersInvestwatchlistModel.fromJson(response.data);
    }
    return response;
  }

}