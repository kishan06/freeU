import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart' hide FormData;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:freeu/Utils/Dialogs.dart';

class CatController extends GetxController {
  bool _indianFinancialAssets = true;
  bool get indianFinancialAssets => _indianFinancialAssets;

  bool _indianRealAssets = true;
  bool get indianRealAssets => _indianRealAssets;

  bool _globalFinancialAssets = true;
  bool get globalFinancialAssets => _globalFinancialAssets;

  bool _globalRealAssets = true;
  bool get globalRealAssets => _globalRealAssets;

  final controllerEntryPoint = Get.put(EntryPointController());

  setTrue(){
    _indianFinancialAssets = true;
    _indianRealAssets = true;
    _globalFinancialAssets = true;
    _globalRealAssets = true;
    update();
  }

  getfilterData({required List<int> filters}) async {
    print(filters);
    utils.loader();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token').toString();

    var headers = {
      'Accept': 'application/json',
      'Authorization': controllerEntryPoint.logedIn!
          ? "Bearer $token"
          : "Bearer 189|yeRLynwInflhfnVObT7dd7R0Ywv91AIlxIKXoiAv",
      // 'Bearer 12|SxRovmqg57oxLf2wfuycYh6YIh7YdVxneDsLC5uz',
      'Cookie':
          'XSRF-TOKEN=eyJpdiI6IkF3eHVmMnp4amZ3dlpJMTY3cVllOXc9PSIsInZhbHVlIjoiZnNOd2hRTkQrcEZLdFNITGRUTE9TdHdXYUJ1ZEZCM1haUU50TlJJWHN1RVlBRyttNEdVZExwK1BuOGZSemJONmN3RW5wWGJCZUNNWi9MY0pwbzhDRmJQbG5pT3I1ekppQXpxZGZXQitnTTJ1MW9oSmpIVEkyZDJyK2NBV0lNbkkiLCJtYWMiOiIyOThkYzQzYjgxYzBhNzVlNmI4ZmQzODBiNDBhNTQ4NzY5NGM5ZTk1Y2JlMDc1ODI5MGYzMTgwZDNjYjIwNGVmIiwidGFnIjoiIn0%3D; freeu_session=eyJpdiI6IklrZURqcjVrY0w2dEpHdjJjZkROb0E9PSIsInZhbHVlIjoibGF0SzhRRXVFZEYxSnV1bll0SFBKTTIrQ1ZzdWs3YUZHT055bWM0MEZCSWVKT1gvU0VEWXNhNzIzY2U2L3pHZkxWNW8zRUZZakUzN0lybUk1ZTlKSXVsRG5KU0NtVkxObTZpKzRqa2VvZWxqd0RuSEh1Wlowa1NLMEx4YUl4aGIiLCJtYWMiOiI2NGExN2RhODY0MmY3YzNhNTA5ZWI1ODljYTZmZDY1ODg4MGVjNDgzZjY1YTYwNzkzOWU1ODg5ZTJjNDdkMmNjIiwidGFnIjoiIn0%3D'
    };
    var data = FormData.fromMap({'filter[]': filters});

    var dio = Dio();
    var response = await dio.request(
      // 'https://pi.betadelivery.com/freeU_investment/api/product-filter',
      ApiUrls.Postfiltercategories,
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      print(json.encode(response.data));
      var resp = (response.data);
      print(resp["data"]);
      _indianFinancialAssets = resp["data"]["indian-financial-assets"];
      // _indianRealAssets = resp
      _indianRealAssets = resp["data"]["indian-real-assets"];
      _globalFinancialAssets = resp["data"]["global-financial-assets"];
      _globalRealAssets = resp["data"]["global-real-assets"];
      update();

      print("filter added");
      Get.back();
      Get.back();
    } else {
      print(response.statusMessage);
      print("filter not added");
      Get.back();
    }
  }
}
