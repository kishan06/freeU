// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class KYC2 extends StatefulWidget {
  const KYC2({super.key});

  @override
  State<KYC2> createState() => _KYC2State();
}

class _KYC2State extends State<KYC2> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
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
                  "Step 2 : Complete your KYC",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    color: Color(0xFF143C6D),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Address Details",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Provide your current correspondance address and upload an address proof of the same",
                  style: TextStyle(
                    fontSize: 8.5,
                    fontFamily: 'Poppins',
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Country",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextDropdown(
                    items: ["India", "Australia", "Canada"],
                    controller: countrytexteditingcontroller,
                    showDropDown: true),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  "Pincode",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Pincode",
                    validatorText: "Please Enter Pincode"),
                SizedBox(height: 13.h),
                Text(
                  "Address - Area and Street",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                TextFormField(
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: addresstextEditingController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFFFFB600), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: const TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                  ),
                  minLines: 5,
                  maxLines: null,
                ),
                SizedBox(height: 13.h),
                Text(
                  "City",
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
                    items: ["Mumbai", "Thane", "Palghar"],
                    controller: countrytexteditingcontroller,
                    showDropDown: true),
                SizedBox(height: 13.h),
                Text(
                  "State / Province/ Region",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextDropdown(
                    items: ["Maharashtra", "kerala", "Punjab"],
                    controller: countrytexteditingcontroller,
                    showDropDown: true),
                SizedBox(height: 20.h),
                Text(
                  "Document Type",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextDropdown(
                    items: ["PDF", "JPEG", "PNG"],
                    controller: countrytexteditingcontroller,
                    showDropDown: true),
                SizedBox(height: 10.h),
                Text(
                  "Document Number",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Document Number",
                    validatorText: "Please Enter Document Number"),
                SizedBox(height: 10.h),
                Text(
                  "Please upload document front side",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 13.h,
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
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFFFFB600), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: const TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
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
                  "Please upload document back side\n(if applicable)",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 13.h,
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
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFFFFB600), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: const TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
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
                  ontap: () => Get.toNamed('/kyc3'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
