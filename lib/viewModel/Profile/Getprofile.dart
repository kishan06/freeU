import 'package:freeu/Models/ProfileModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

ProfileModel? ProfileObj;

class GetProfile {
  GetProfile();

  Future<ResponseData<dynamic>> GetProfileAPI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await NetworkApi().getApi(ApiUrls.Getprofile);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        ProfileObj = ProfileModel.fromJson(responseData);
        
        await prefs.setString(
            'userNumber', ProfileObj?.user?.contactNumber ?? "");
        await prefs.setString('userEmail', ProfileObj?.user?.email ?? "");
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
