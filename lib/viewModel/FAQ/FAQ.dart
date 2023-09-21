import 'dart:async';
import 'package:freeu/Models/FAQ/CleanAndGreenModel.dart';
import 'package:freeu/Models/FAQ/FAQModel.dart';
import 'package:freeu/Models/FAQ/FractionalRealEstateModel.dart';
import 'package:freeu/Models/FAQ/HighYieldModel.dart';
import 'package:freeu/Models/FAQ/InvoiceDiscountingModel.dart';
import 'package:freeu/Models/FAQ/PeerToPeerModel.dart';
import 'package:freeu/Models/FAQ/RevenueBasedFinancingModel.dart';
import 'package:freeu/Models/FAQ/SecuritizedDebtModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

FAQModel? generalfaq;
CleanAndGreenModel? cleanandgreenfaq;
FractionalRealEstateModel? Fractionalfaq;
HighYieldModel? HighYieldfaq;
InvoiceDiscountingModel? invoiceDiscountfaq;
PeerToPeerModel? p2pfaq;
RevenueBasedFinancingModel? revenueBasedfaq;
SecuritizedDebtModel? secfaq;

class FAQ {
  Future<ResponseData<dynamic>> GeneralFaqApi() async {
    final response = await NetworkApi().getApi(ApiUrls.FaqTags);
    if (response.status == ResponseStatus.SUCCESS) {
      generalfaq = FAQModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> fractionalRealEstateApi() async {
    final response = await NetworkApi().getApi(ApiUrls.fractionalRealEstate);
    if (response.status == ResponseStatus.SUCCESS) {
      Fractionalfaq = FractionalRealEstateModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> revenueBasedFinancingApi() async {
    final response = await NetworkApi().getApi(ApiUrls.revenueBasedFinancing);
    if (response.status == ResponseStatus.SUCCESS) {
      revenueBasedfaq = RevenueBasedFinancingModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> PeerToPeerApi() async {
    final response = await NetworkApi().getApi(ApiUrls.PeerToPeer);
    if (response.status == ResponseStatus.SUCCESS) {
      p2pfaq = PeerToPeerModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> invoiceDiscountingfaqApi() async {
    final response = await NetworkApi().getApi(ApiUrls.invoiceDiscountingfaq);
    if (response.status == ResponseStatus.SUCCESS) {
      invoiceDiscountfaq = InvoiceDiscountingModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> cleanandgreenApi() async {
    final response = await NetworkApi().getApi(ApiUrls.cleanandgreen);
    if (response.status == ResponseStatus.SUCCESS) {
      cleanandgreenfaq = CleanAndGreenModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> securitizeddebtApi() async {
    final response = await NetworkApi().getApi(ApiUrls.securitizeddebt);
    if (response.status == ResponseStatus.SUCCESS) {
      secfaq = SecuritizedDebtModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> highyieldFinanceApi() async {
    final response = await NetworkApi().getApi(ApiUrls.highyieldFinance);
    if (response.status == ResponseStatus.SUCCESS) {
      HighYieldfaq = HighYieldModel.fromJson(response.data);
    }
    return response;
  }
}
