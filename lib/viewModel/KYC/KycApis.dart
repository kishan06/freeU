import 'dart:convert';

import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

class KycApis {
  Future<ResponseData<dynamic>> KYC1(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.kyc1, data: updata);
    return response;
  }

  Future<ResponseData<dynamic>> KYC2(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.kyc2, data: updata);
    return response;
  }
}
