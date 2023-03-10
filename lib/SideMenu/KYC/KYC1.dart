// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class KYC1 extends StatefulWidget {
  const KYC1({super.key});

  @override
  State<KYC1> createState() => _KYC1State();
}

class _KYC1State extends State<KYC1> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "KYC",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Step 1 : Complete your KYC",
                  style: TextStyle(
                    fontSize: 20.sm,
                    color: Color(0xFF143C6D),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Personal Information",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Provide your personal information as per your Bank Account",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sm,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Contact Number",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Phone Number",
                    validatorText: "Please Enter Phone Number"),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Email ID",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Email Id",
                    validatorText: "Please Enter Email Id"),
                SizedBox(height: 20.h),
                Text(
                  "Residential Status",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextDropdown(
                    item: ["1", "2", "3"],
                    controller: residentialstatustexteditingcontroller,
                    showDropDown: true),
                SizedBox(height: 20.h),
                Text(
                  "Date of Birth",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Email Id",
                    validatorText: "Please Enter Email Id"),
                SizedBox(height: 20.h),
                Text(
                  "Occupation",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Occupation",
                    validatorText: "Please Enter Occupation"),
                SizedBox(height: 20.h),
                Text(
                  "Father's Name",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Father's Name",
                    validatorText: "Please Enter Father's Name"),
                SizedBox(height: 40.h),
                CustomNextButton(
                  text: "Continue",
                  ontap: () {
                    Get.toNamed('/kyc2');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
