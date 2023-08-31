import 'package:fluttertoast/fluttertoast.dart';

class utils {
  static showToast(String? msg) {
    if (msg != null && msg != "null" && msg.isNotEmpty) {
      Fluttertoast.showToast(msg: msg);
    }
  }
}
