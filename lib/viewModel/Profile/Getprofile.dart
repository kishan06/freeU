import 'dart:convert';

import 'package:freeu/Models/ProfileModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ProfileModel? ProfileObj;

// class GetProfile {
//   GetProfile();

//   Future<ResponseData<dynamic>> GetProfileAPI() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     final response = await NetworkApi().getApi(ApiUrls.Getprofile);

//     if (response.status == ResponseStatus.SUCCESS) {
//       Map<String, dynamic> responseData =
//           Map<String, dynamic>.from(response.data);
//       if (responseData.isNotEmpty) {
//         ProfileObj = ProfileModel.fromJson(responseData);
        
//         await prefs.setString(
//             'userNumber', ProfileObj?.user?.contactNumber ?? "");
//         await prefs.setString('userEmail', ProfileObj?.user?.email ?? "");
//       } else {
//         return ResponseData<dynamic>(
//             responseData['message'], ResponseStatus.FAILED);
//       }
//     }
//     return response;
//   }
// }

ProfileModel? ProfileObj;

class GetProfile {
  GetProfile();

  Future<ResponseData<dynamic>> GetProfileAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.Getprofile);

    if (response.status == ResponseStatus.SUCCESS) {
  dynamic responseData = response.data;

  if (responseData is Map<String, dynamic>) {
    // Assuming response data is a map
    ProfileObj = ProfileModel.fromJson(responseData);

    await prefs.setString(
        'userNumber', ProfileObj?.user?.contactNumber ?? "");
    await prefs.setString('userEmail', ProfileObj?.user?.email ?? "");
  } else if (responseData is String) {
    // Parse the JSON string into a map
    Map<String, dynamic> jsonMap;
    try {
      jsonMap = json.decode(responseData);
    } catch (e) {
      return ResponseData<dynamic>(
          "Error decoding JSON string: $responseData", ResponseStatus.FAILED);
    }

    // Now you can access properties from the map
    String contactNumber = jsonMap['contact_number'] ?? "";
    String email = jsonMap['email'] ?? "";

    await prefs.setString('userNumber', contactNumber);
    await prefs.setString('userEmail', email);
  } else {
    // Handle other types if necessary
    return ResponseData<dynamic>(
        "Unexpected response format", ResponseStatus.FAILED);
  }
}
    return response;
  }
}

