import 'dart:async';

import 'package:freeu/Models/Notifications/Getnotification.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

NotificationGetModel? notificationobj;

class Notifications {
  Future<ResponseData<dynamic>> NotificationList(
      {required StreamController<NotificationGetModel> streamControl}) async {
    final response = await NetworkApi().getApi(ApiUrls.getnotifications);
    if (response.status == ResponseStatus.SUCCESS) {
      notificationobj = NotificationGetModel.fromJson(response.data);
      if (!streamControl.isClosed) streamControl.sink.add(notificationobj!);
    }
    return response;
  }

  Future<ResponseData<dynamic>> PostnotificationAPI(slug) async {
    final response =
        await NetworkApi().postslugApi(ApiUrls.postnotifications + "/${slug}");
    print("Url is ${ApiUrls.postnotifications + "/${slug}"}");
    return response;
  }
}
