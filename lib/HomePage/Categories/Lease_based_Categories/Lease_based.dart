import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalproperties.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalrealestate.dart';
import 'package:freeu/HomePage/Categories/High_yield/High_yield_Learn.dart';
import 'package:freeu/HomePage/Categories/High_yield/high_yield_more_products.dart';
import 'package:freeu/HomePage/Categories/Lease_based_Categories/Lease_based_learn.dart';
import 'package:freeu/HomePage/Categories/Lease_based_Categories/Lease_based_properties.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

import 'Lease view more product/LeaseViewMoreProduct.dart';

//import 'Fractionalproperties.dart';

class LeaseBased extends StatefulWidget {
  const LeaseBased({super.key});

  @override
  State<LeaseBased> createState() => _LeaseBasedState();
}

class _LeaseBasedState extends State<LeaseBased> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return
        // SafeArea(
        //child:
        Scaffold(
      backgroundColor: AppColors.pinkL_E6088B,
      appBar:
          // CustomSignupAppBar(
          //   titleTxt: "",
          //   bottomtext: false,
          // ),
          AppBar(
        backgroundColor: AppColors.pinkL_E6088B,
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
                    "Lease based Financing",
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
                        "This is a kind of financing where the lender (lessor) gives another person, the lessee, the right to use an asset against periodical payments.",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                          //fontFamily: 'Poppins'
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: LeaseBasedLearn(),
                        // onTap: () {
                        //   Get.toNamed("/fractionalrealestate");
                        // },
                        closeBuild: Row(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Expected Return (IRR):",
                                  style: TextStyle(
                                    color: const Color(0XFFFBFBFB),
                                    fontSize: 16.sp,
                                    fontFamily: "Poppins",
                                  )),
                              // text20White(widget.irr)
                              text20White("~ 12%-16% p.a.")
                            ],
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
                            "assets/images/privateequitytime.png",
                            width: 70.w,
                            height: 70.w,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Investment Horizon:",
                                    style: TextStyle(
                                      color: Color(0XFFFBFBFB),
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                    )),
                                // text20White(widget.sih)
                                text20White("~ 12-36 months")
                              ],
                            ),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Minimum Investment:",
                                  style: TextStyle(
                                    color: Color(0XFFFBFBFB),
                                    fontSize: 16.sp,
                                    fontFamily: "Poppins",
                                  )),
                              text20White("1,00,000")
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 92.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: const LeaseViewMoreProduct(),
                        closeBuild: Container(
                          decoration: BoxDecoration(
                              color: const Color(0XFFFBFBFB),
                              borderRadius: BorderRadius.circular(10.r)),
                          width: double.infinity,
                          height: 50.h,
                          child: Center(
                            child: Text(
                              "View more product",
                              style: TextStyle(
                                color: Color(0XFF000000),
                                fontSize: 18.sp,
                              ),
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
