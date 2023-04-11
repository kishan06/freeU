import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EntryPointController extends GetxController {
  // int _currentIndex = 0;
  // int get currentIndex => _currentIndex;

  bool? _logedIn;
  bool? get logedIn => _logedIn;

  bool? _isLoading = true;
  bool? get isLoading => _isLoading;

  checkLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _logedIn = prefs.getBool('LogedIn') ?? false;
    _isLoading = false;
    update();
  }
}
