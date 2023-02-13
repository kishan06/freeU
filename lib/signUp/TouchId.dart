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
      appBar: AppBar(
        shadowColor: Color.fromARGB(1, 255, 255, 255),
        title: Text(""),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xFFF5F8FA),
      body: Column(
        children: [
          SizedBox(height: 50.h),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Set-up Touch Id",
                  style: TextStyle(
                    fontSize: 22.sm,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 70.h),
                SizedBox(
                  width: 286.w,
                  height: 286.h,
                  child: SvgPicture.asset(
                    'assets/images/fingericon.svg',
                    width: 140.h,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                CustomNextButton(
                  text: "Set up Now",
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
                      fontSize: 14.sm,
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
