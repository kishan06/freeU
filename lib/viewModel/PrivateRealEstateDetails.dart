import 'dart:convert';

import 'package:freeu/Models/FractionalDetailsModel.dart';
import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/Models/PrivateEquityDetailsModel.dart';
import 'package:freeu/Models/PrivateRealEstateDetailsModel.dart';
import 'package:freeu/Models/invoiceDetailsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

PrivateRealEsateDetailsModel ? privaterealestdetailsobj;

class PrivateRealEsateDetails {
  PrivateRealEsateDetails();

  Future<ResponseData<dynamic>> PrivateRealEsateDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.PrivateRealEstateDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      print("get api called");
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
          print(response.data);
      if (responseData.isNotEmpty) {
        privaterealestdetailsobj =
            PrivateRealEsateDetailsModel.fromJson(responseData);
            print("data is $privaterealestdetailsobj");
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
