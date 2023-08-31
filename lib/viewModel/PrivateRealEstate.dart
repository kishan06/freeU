import 'dart:convert';

import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/Models/LeaseFinancing.dart';
import 'package:freeu/Models/PrivateRealEsateModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

PrivateRealEsate? privaterealestateObj;

class PrivateRealestate {
  PrivateRealestate();

  Future<ResponseData<dynamic>> PrivateRealestateAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.PrivateRealEstate);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        privaterealestateObj =
            PrivateRealEsate.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
