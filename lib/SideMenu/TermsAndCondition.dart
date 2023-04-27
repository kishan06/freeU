// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Terms & condition".tr,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1. Terms'.tr,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          'Termstxt1'.tr,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Termstxt2'.tr,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff131313),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '2. Limitations'.tr,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Termstxt3'.tr,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Termstxt4'.tr,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '3. Revisions and Errata'.tr,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Termstxt5'.tr,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                  sizedBoxHeight(20.h)
                ],
              ),
            )),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     GestureDetector(
            //         onTap: () {
            //           Get.back();
            //         },
            //         child: Icon(
            //           Icons.arrow_back,
            //           size: 24.sp,
            //           color: Color(0xff000000),
            //         )),
            //     SizedBox(
            //       height: 10.h,
            //     ),
            //     Text(
            //       "Terms & condition",
            //       style: TextStyle(
            //           fontFamily: "Poppins",
            //           fontSize: 25.sp,
            //           fontWeight: FontWeight.w500),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
