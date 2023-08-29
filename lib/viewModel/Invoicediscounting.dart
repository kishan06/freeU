import 'dart:convert';

import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/Models/Invoicediscounting.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

InvoiceDiscountingModel? invoicediscountingObj;

class InvoiceDiscounting {
  InvoiceDiscounting();

  Future<ResponseData<dynamic>> InvoiceDiscountingAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.InvoiceDiscounting);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        invoicediscountingObj =
            InvoiceDiscountingModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
