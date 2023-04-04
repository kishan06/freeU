// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Step 4 : Complete your KYC",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color(0xFF143C6D),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Bank account details",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Provide your Bank account details",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "IFSC code",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter IFSC code",
                    validatorText: "Please Enter IFSC code"),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Account Number",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Account Number",
                    validatorText: "Please Enter Account Number"),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Upload cancelled check/ Bank\nstatement",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                TextFormField(
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: uploadfronttextEditingController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color(0xFFFFB600), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle:
                        const TextStyle(color: Color(0x80000000), fontSize: 14),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Bank Name",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Bank Name",
                    validatorText: "Please Enter Bank Name"),
                SizedBox(height: 40.h),
                CustomNextButton(
                  text: "Submit",
                  ontap: () {
                    // Timer(
                    //     Duration(seconds: 2),
                    //     () => Navigator.of(context).pushReplacement(
                    //         MaterialPageRoute(
                    //             builder: (BuildContext context) =>
                    //                 HomePage())));
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      builder: (context) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/kyc.png'),
                              SizedBox(
                                height: 30.h,
                              ),
                              Center(
                                child: Text(
                                  'Thankyou for updating\n your KYC',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
