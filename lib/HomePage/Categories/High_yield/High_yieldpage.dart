import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalproperties.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalrealestate.dart';
import 'package:freeu/HomePage/Categories/High_yield/High_yield_Learn.dart';
import 'package:freeu/HomePage/Categories/High_yield/High_yield_Properties.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

//import 'Fractionalproperties.dart';

class HighYieldFinance extends StatefulWidget {
  const HighYieldFinance({super.key});

  @override
  State<HighYieldFinance> createState() => _HighYieldFinanceState();
}

class _HighYieldFinanceState extends State<HighYieldFinance> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return
        // SafeArea(
        //child:
        Scaffold(
      backgroundColor: AppColors.purpleL_474E88,
      appBar:
          // CustomSignupAppBar(
          //   titleTxt: "",
          //   bottomtext: false,
          // ),
          AppBar(
        backgroundColor: AppColors.purpleL_474E88,
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
                    "High Yield Finance",
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
                        '''High Yield Fixed Income refers to bonds or other fixed-income securities issued by companies, governments, or other organizations that are deemed to carry a higher risk of default. As such, these securities typically offer a higher yield, or rate of return, to compensate investors for the increased risk. ''',
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
                        openBuild: HighYieldLearn(),
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
                      OpenContainerWrappers(
                        openBuild: const HighYieldProperties(),
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
