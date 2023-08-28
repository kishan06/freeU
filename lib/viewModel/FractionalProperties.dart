import 'dart:convert';

import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

FractionalRealEstateModel? fractionalRealEstateObj;

class FractionalRealEstate {
  FractionalRealEstate();

  Future<ResponseData<dynamic>> FractionalRealEstateAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.FractionalRealestate);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        fractionalRealEstateObj =
            FractionalRealEstateModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
