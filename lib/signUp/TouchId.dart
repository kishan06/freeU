// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../common/customNextButton.dart';

class TouchId extends StatefulWidget {
  const TouchId({super.key});

  @override
  State<TouchId> createState() => _TouchIdState();
}

class _TouchIdState extends State<TouchId> {
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
                CustomNextButton(
                  text: "Set up Now!",
                  ontap: () {
                    // _checkBio();
                  },
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
