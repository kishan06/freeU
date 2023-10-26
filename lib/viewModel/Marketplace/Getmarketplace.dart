import 'package:freeu/Models/Marketplace/FeaturedinvestmentModel.dart';
import 'package:freeu/Models/Marketplace/GetalternativelearnmoreModel.dart';
import 'package:freeu/Models/Marketplace/GetfractionallearnmoreModel.dart';
import 'package:freeu/Models/Marketplace/GetmarketlearnmoreModel.dart';
import 'package:freeu/Models/Marketplace/GetotherslearnmoreModel.dart';
import 'package:freeu/Models/Marketplace/NonfeaturedinvestModel.dart';
import 'package:freeu/Models/Marketplace/SpotlightinvestmentModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

SpotlightinvestmentModel? spotlightinve;
FeaturedinvestmentModel? featuredinve;
NonfeaturedinvestmentModel? nonfeaturedinve;

GetmarketlearnmoreModel? getmarketlearnmoreobj;
GetfractionallearnmoreModel? getfractionallearnmoreobj;
GetalternativelearnmoreModel? getalternativelearnmoreobj;
GetotherslearnmoreModel? getotherslearnmoreobj;






class Marketplace{

  Future<ResponseData<dynamic>> Spotlightinvest() async {
    final response = await NetworkApi().getApi(ApiUrls.GetSpotlightinvest);
    if (response.status == ResponseStatus.SUCCESS) {
      spotlightinve = SpotlightinvestmentModel.fromJson(response.data);
    }
    return response;
  }

   Future<ResponseData<dynamic>> Featuredinvest() async {
    final response = await NetworkApi().getApi(ApiUrls.GetFeatuedinvest);
    if (response.status == ResponseStatus.SUCCESS) {
      featuredinve = FeaturedinvestmentModel.fromJson(response.data);
    }
    return response;
  }

   Future<ResponseData<dynamic>> Nonfeaturedinvest() async {
    final response = await NetworkApi().getApi(ApiUrls.GetNonfeatuedinvest);
    if (response.status == ResponseStatus.SUCCESS) {
      nonfeaturedinve = NonfeaturedinvestmentModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Getmarketlearnmore(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.GetMarketlearnmore + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        getmarketlearnmoreobj = GetmarketlearnmoreModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

    Future<ResponseData<dynamic>> Getfractionallearnmore(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.GetMarketlearnmore + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        getfractionallearnmoreobj = GetfractionallearnmoreModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

   Future<ResponseData<dynamic>> Getalternativelearnmore(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.GetMarketlearnmore + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        getalternativelearnmoreobj = GetalternativelearnmoreModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

  Future<ResponseData<dynamic>> Getotherslearnmore(slug) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response =
        await NetworkApi().getApi(ApiUrls.GetMarketlearnmore + "/${slug}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        getotherslearnmoreobj = GetotherslearnmoreModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

}