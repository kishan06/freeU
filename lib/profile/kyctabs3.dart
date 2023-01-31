// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';

import 'package:get/get.dart';

class KYCTabs3 extends StatefulWidget {
  const KYCTabs3({super.key});

  @override
  State<KYCTabs3> createState() => _KYCTabs3State();
}

class _KYCTabs3State extends State<KYCTabs3> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      child: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Step 3 : Complete your KYC",
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
                "PAN & Aadhar details",
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
                "Provide your PAN & Aadhar details",
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
                "PAN Number",
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
                  hintText: "Please Enter PAN Number",
                  validatorText: "Please Enter PAN Number"),
              SizedBox(
                height: 13,
              ),
              Text(
                "Upload PAN card front side",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Color(0xff303030)),
              ),
              SizedBox(
                height: 6.h,
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
              SizedBox(height: 10.h),
              Text(
                "Aadhar Number",
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
                  hintText: "Please Enter Aadhar Number",
                  validatorText: "Please Enter Aadhar Number"),
              SizedBox(height: 10.h),
              Text(
                "Upload Aadhar card",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
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
              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Continue",
                ontap: () => Get.toNamed('/KYCTabs3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
