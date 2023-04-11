import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class FractionalRealestate extends StatefulWidget {
  const FractionalRealestate({super.key});

  @override
  State<FractionalRealestate> createState() => _FractionalRealestateState();
}

class _FractionalRealestateState extends State<FractionalRealestate> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return
        // SafeArea(
        //child:
        Scaffold(
      backgroundColor: Color(0xFF006796),
      appBar:
          // CustomSignupAppBar(
          //   titleTxt: "",
          //   bottomtext: false,
          // ),
          AppBar(
        backgroundColor: Color(0xFF006796),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 26,
          color: Color(0XFFFFFFFF),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Fractional Real Estate",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Fractional Real Estate investing allows investors to buy fractions of a real estate property, and get returns on it like rent, capital appreciation, etc.",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                          //fontFamily: 'Poppins'
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/fractionalrealestate");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Learn more",
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 29.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/privatecategories.png",
                            width: 70.w,
                            height: 70.w,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text("Expected Return (IRR)\n ~ 15-24 % p.a.",
                              style: TextStyle(
                                color: Color(0XFFFBFBFB),
                                fontSize: 20.sp,
                                fontFamily: "Poppins",
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/privateequitytime.png",
                            width: 70.w,
                            height: 70.w,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Expanded(
                            child: Text(
                                "Suggested Investment Horizon More than 8 Years",
                                style: TextStyle(
                                  color: Color(0XFFFBFBFB),
                                  fontSize: 20.sp,
                                  fontFamily: "Poppins",
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/funding.png",
                            width: 70.w,
                            height: 70.w,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Expanded(
                            child: Text("Minimum Investment 1 Crore",
                                style: TextStyle(
                                  color: Color(0XFFFBFBFB),
                                  fontSize: 20.sp,
                                  fontFamily: "Poppins",
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 92.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            //shadowColor: Color.fromARGB(255, 220, 220, 226),

                            backgroundColor: Color(0XFFFBFBFB),

                            //  color: Color(0xFFFFB600),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.h),
                            ),
                          ),
                          onPressed: () {
                            Get.toNamed("/fractionalpropertiespage");
                          },
                          child: Text(
                            "View more product",
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
                      sizedBoxHeight(38.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // );
  }
}
