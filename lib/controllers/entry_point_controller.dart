import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EntryPointController extends GetxController {
  bool? _logedIn;
  bool? get logedIn => _logedIn;
  bool isMainScreen = true;

  bool? _isLoading = true;
  bool? get isLoading => _isLoading;

  bool _signinApi = false;
  bool get signinApi => _signinApi;

  bool _createAccApi = false;
  bool get createAccApi => _createAccApi;

  changeSigninApiBool() {
    _signinApi = !_signinApi;
    update();
  }

  changecreateAccApiBool() {
    _createAccApi = !_createAccApi;
    update();
  }

  checkLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _logedIn = prefs.getBool('LogedIn') ?? false;
    _isLoading = false;
    update();
  }
}
