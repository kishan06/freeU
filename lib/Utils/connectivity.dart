// method defined to check internet connectivity
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freeu/Utils/Dialogs.dart';

Future<bool> isConnectedForNextPage(context, String route) async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    Navigator.pushNamed(context, route);
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    Navigator.pushNamed(context, route);
    return true;
  } else {
    Navigator.pushReplacementNamed(context, "/noInternet");
    return false;
  }
}

Future<bool> isConnectedOnApiSuccess(context, String route) async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    Navigator.pushReplacementNamed(context, route);
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    Navigator.pushReplacementNamed(context, route);
    return true;
  } else {
    Navigator.pushReplacementNamed(context, "/noInternet");
    return false;
  }
}

Future<bool> isConnectedOnApiHit(context) async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    Navigator.pushNamed(context, "/noInternet");
    return false;
  }
//  return false;
}

Future<bool> isConnectedOnApiHome(context) async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    ScaffoldMessenger.of(context).showSnackBar(utils.showToast(
        "No Internet",));
    return false;
  }
//  return false;
}
