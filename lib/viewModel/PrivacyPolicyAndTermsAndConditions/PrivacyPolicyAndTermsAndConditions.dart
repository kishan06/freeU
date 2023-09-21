import 'dart:async';
import 'package:freeu/Models/PrivacyPolicy/PrivacyPolicyModel.dart';
import 'package:freeu/Models/TermsAndCondition/TermsAndConditionModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

PrivacyPolicyModel? privacy;
TermsAndConditionModel? terms;

class PrivacyPolicyAndTermsAndCondition {
  Future<ResponseData<dynamic>> PrivacyApi() async {
    final response = await NetworkApi().getApi(ApiUrls.privacyPolicy);
    if (response.status == ResponseStatus.SUCCESS) {
      privacy = PrivacyPolicyModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> TermsAndConditionApi() async {
    final response = await NetworkApi().getApi(ApiUrls.termsAndConditions);
    if (response.status == ResponseStatus.SUCCESS) {
      terms = TermsAndConditionModel.fromJson(response.data);
    }
    return response;
  }
}
