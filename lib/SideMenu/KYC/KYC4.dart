// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/login/splashslider.dart';

import 'package:get/get.dart';

class KYC4 extends StatefulWidget {
  const KYC4({super.key});

  @override
  State<KYC4> createState() => _KYC4State();
}

class _KYC4State extends State<KYC4> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "kyc".tr,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 25.sp),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Center(
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "kycStep4".tr,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 22.sp,
                              color: Color(0xFF143C6D),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Bank account details".tr,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "kycStep4_txt1".tr,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "IFSC code".tr,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomTextFormField(
                              hintText: "Please Enter IFSC code".tr,
                              validatorText: "Please Enter IFSC code".tr),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Account Number".tr,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomTextFormField(
                              hintText: "Please Enter Account Number".tr,
                              validatorText: "Please Enter Account Number".tr),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            "kycStep4_txt2".tr,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          TextFormField(
                            cursorColor: const Color(0xFFFFB600),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: uploadfronttextEditingController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.h),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xFFCCCCCC), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xFFCCCCCC), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xFFCCCCCC), width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Color(0x80000000), fontSize: 16.sp),
                              hintText: "",
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Bank Name".tr,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomTextFormField(
                              hintText: "Please Enter Bank Name".tr,
                              validatorText: "Please Enter Bank Name".tr),
                          SizedBox(height: 40.h),
                          CustomNextButton(
                            text: "Submit".tr,
                            ontap: () {
                              Timer(
                                  Duration(seconds: 2),
                                  () =>
                                      Get.toNamed('/EntryPoint', arguments: 0));
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    topRight: Radius.circular(30.r),
                                  ),
                                ),
                                builder: (context) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 24.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Image.asset('assets/images/kyc.png'),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        Center(
                                          child: Text(
                                            'kycThankyou'.tr,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 20.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          sizedBoxHeight(60.h)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
