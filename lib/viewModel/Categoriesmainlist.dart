import 'dart:convert';

import 'package:freeu/Models/CAtegorieslistModel.dart';
import 'package:freeu/Models/FractionalRealEstateModel.dart';
import 'package:freeu/Models/LeaseFinancing.dart';
import 'package:freeu/Models/PrivateEquityModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

CategorieslistModel? categorieslistObj;

class Categorieslist {
  Categorieslist();

  Future<ResponseData<dynamic>> CategorieslistAPI() async {
    final response = await NetworkApi().getApi(ApiUrls.Categoriesmainlist);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        categorieslistObj = CategorieslistModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
