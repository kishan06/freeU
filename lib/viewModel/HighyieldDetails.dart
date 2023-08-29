import 'dart:convert';

import 'package:freeu/Models/FractionalDetailsModel.dart';
import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/Models/HighyieldDetailsModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/Models/invoiceDetailsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

HighyieldDetailsModel ? highyieldDetailsobj;

class HighyieldsDetails {
  HighyieldsDetails();

  Future<ResponseData<dynamic>> HighyieldsDetailsAPI(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.HighyieldDetails + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        highyieldDetailsobj =
            HighyieldDetailsModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
