import 'dart:convert';

import 'package:freeu/Models/FractionalDetailsModel.dart';
import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/Models/SecuredDebtDetailsModel.dart';
import 'package:freeu/Models/invoiceDetailsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

SecuredDebtDetailsModel ? secureddebtDetailsobj;

class SecuredDebtDetails {
  SecuredDebtDetails();

  Future<ResponseData<dynamic>> SecuredDebtDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.SecuredDebtDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        secureddebtDetailsobj =
            SecuredDebtDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
