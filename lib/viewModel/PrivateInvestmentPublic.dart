import 'dart:convert';

import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/Models/LeaseFinancing.dart';
import 'package:freeu/Models/PrivateInvestPublicModel.dart';
import 'package:freeu/Models/PrivateRealEsateModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

PrivateInvestmentPublicModel? privateinvestpublicObj;

class PrivateInvestmentPublic {
  PrivateInvestmentPublic();

  Future<ResponseData<dynamic>> PrivateInvestmentPublicAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.PrivateInvestmentPublic);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        privateinvestpublicObj =
            PrivateInvestmentPublicModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
