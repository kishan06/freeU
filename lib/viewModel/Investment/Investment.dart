import 'package:freeu/Models/DetailsIndustrialModel.dart';
import 'package:freeu/Models/Investment/CurrentInvestmentModel.dart';
import 'package:freeu/Models/Investment/InvestmentSummaryModel.dart';
import 'package:freeu/Models/Investment/RedeemInvestmentModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

InvestmentSummaryModel? investmentSummary;
RedeemInvestmentModel? redeemsummary;
CurrentInvestmentModel? currentsummary;

class Investment {
  Investment();

  Future<ResponseData<dynamic>> InvestmentSummaryAPI() async {
    final response = await NetworkApi().getApi(ApiUrls.investmentSummary);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        investmentSummary = InvestmentSummaryModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

  Future<ResponseData<dynamic>> RedeemInvestmentAPI() async {
    final response = await NetworkApi().getApi(ApiUrls.redeeminvestmetDetails);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        redeemsummary = RedeemInvestmentModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

  Future<ResponseData<dynamic>> CurrentInvestmentAPI() async {
    final response =
        await NetworkApi().getApi(ApiUrls.currentInvestmentDetails);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        currentsummary = CurrentInvestmentModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
