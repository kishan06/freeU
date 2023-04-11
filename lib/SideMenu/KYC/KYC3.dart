// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';

import 'package:get/get.dart';

class KYC3 extends StatefulWidget {
  const KYC3({super.key});

  @override
  State<KYC3> createState() => _KYC3State();
}

class _KYC3State extends State<KYC3> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();
  final uploadaadhartextEditingController = TextEditingController();

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
                      "KYC",
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
                            "Step 3 : Complete your KYC",
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF143C6D),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "PAN & Aadhar details",
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
                            "Provide your PAN & Aadhar details",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "PAN Number",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomTextFormField(
                              hintText: "Please Enter PAN Number",
                              validatorText: "Please Enter PAN Number"),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            "Upload PAN card front side",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
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
                                    color: Color(0xffCCCCCC), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xffCCCCCC), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xffCCCCCC), width: 1),
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
                                  color: Color(0x80000000), fontSize: 14.sp),
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
                            "Aadhar Number",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomTextFormField(
                              hintText: "Please Enter Aadhar Number",
                              validatorText: "Please Enter Aadhar Number"),
                          SizedBox(height: 10.h),
                          Text(
                            "Upload Aadhar card",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 13.h,
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
                                    color: Color(0xffCCCCCC), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xffCCCCCC), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xffCCCCCC), width: 1),
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
                                  color: Color(0x80000000), fontSize: 14.sp),
                              hintText: "",
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          CustomNextButton(
                              text: "Continue",
                              ontap: () {
                                setState(() {
                                  Get.toNamed('/kyc4');
                                });
                              }),
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
