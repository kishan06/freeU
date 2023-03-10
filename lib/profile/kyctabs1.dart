// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/profile/KYCtabs2.dart';

class KYCtabs1 extends StatefulWidget {
  const KYCtabs1({super.key});

  @override
  State<KYCtabs1> createState() => _KYCtabs1State();
}

class _KYCtabs1State extends State<KYCtabs1> {
  final residentialstatustexteditingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    fontSize: 17,
                    color: Color(0xFF143C6D),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Personal Information",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Provide your personal information as per your Bank Account",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 8.5,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Contact Number",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
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
                      fontSize: 14,
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
                      fontSize: 14,
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
                      fontSize: 14,
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
                      fontSize: 14,
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
                      fontSize: 14,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => KYCTabs2())));
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
