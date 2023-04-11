// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import '../common/customNextButton.dart';

class TouchId extends StatefulWidget {
  const TouchId({super.key});

  @override
  State<TouchId> createState() => _TouchIdState();
}

class _TouchIdState extends State<TouchId> {
  bool? _hasBiometricSensor;

  LocalAuthentication authentication = LocalAuthentication();

  Future<void> _checkBio() async {
    try {
      _hasBiometricSensor = await authentication.canCheckBiometrics;
      print(_hasBiometricSensor);
      if (_hasBiometricSensor!) {
        _getAuth();
      }
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> _getAuth() async {
    bool? isAuth = false;
    try {
      isAuth = await authentication.authenticate(
        localizedReason: 'add your finger print to login',
        options: AuthenticationOptions(
            biometricOnly: true, useErrorDialogs: true, stickyAuth: true),
      );

      isAuth
          ? Get.toNamed('/completeprofile')
          : Get.snackbar("Not Recogonized", "Please Try Again",
              margin: EdgeInsets.all(8),
              snackStyle: SnackStyle.FLOATING,
              snackPosition: SnackPosition.BOTTOM);

      // if (isAuth ?) {
      //   Get.toNamed('/completeprofile');
      // }
      print(isAuth);
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    // _checkBio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100.h),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Set-up Touch Id",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 70.h),
                SizedBox(
                  width: 286.w,
                  height: 286.h,
                  child: SvgPicture.asset(
                    'assets/images/setuptouch.svg',
                    // width: 140.h,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomNextButton(
                    text: "Set up Now!",
                    ontap: () {
                      Get.snackbar("Verify Your Biometric",
                          "Please Touch Your Finger print",
                          margin: EdgeInsets.all(8),
                          duration: Duration(seconds: 1),
                          snackStyle: SnackStyle.FLOATING,
                          snackPosition: SnackPosition.BOTTOM);
                      _checkBio();
                    },
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/completeprofile');
                  },
                  child: Text(
                    'will do it later',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      color: Color(0xFF585858),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
