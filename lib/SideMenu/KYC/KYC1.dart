// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class KYC1 extends StatefulWidget {
  const KYC1({super.key});

  @override
  State<KYC1> createState() => _KYC1State();
}

class _KYC1State extends State<KYC1> {
  int currentIndex = 0;
  late PageController _controller;

  String? datecontroller;

  DateTime? _selectedDate;
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Column(
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
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Center(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kyc_step1".tr,
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color(0xFF143C6D),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "kyc_step1_info".tr,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "kyc_step1_info1".tr,
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
                        "kyc_step1_number".tr,
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
                          hintText: "kykyc_step1_numberV1".tr,
                          validatorText: "kykyc_step1_numberV1".tr),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "profile_email".tr,
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
                          hintText: "profile_emailV1".tr,
                          validatorText: "profile_emailV1".tr),
                      SizedBox(height: 20.h),
                      Text(
                        "kyc_residential".tr,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
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
                        "dob".tr,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          _presentDatePicker();
                        },
                        child: Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffCCCCCC),
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  sizedBoxWidth(20.w),
                                  Text(_selectedDate == null
                                      ? ''
                                      : '$datecontroller'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.calendar_month_outlined),
                                  sizedBoxWidth(10.w)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // CustomTextFormField(
                      //     hintText: "", validatorText: "Please Enter Email Id"),
                      SizedBox(height: 20.h),
                      Text(
                        "Occupation".tr,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                          item: [
                            "Marketing manager".tr,
                            "financial operations".tr,
                            "Software developer".tr
                          ],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),

                      // CustomTextFormField(
                      //     hintText: "Please Enter Occupation",
                      //     validatorText: "Please Enter Occupation"),
                      SizedBox(height: 20.h),
                      Text(
                        "Father's Name".tr,
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
                          hintText: "Please Enter Father's Name".tr,
                          validatorText: "Please Enter Father's Name".tr),
                      SizedBox(height: 40.h),
                      CustomNextButton(
                        text: "Continue".tr,
                        ontap: () {
                          setState(() {
                            Get.toNamed('/kyc2');
                          });
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
    );
  }

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1922),
            lastDate: DateTime.now())
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return setState(() {
          datecontroller = '';
        });
        ;
      }
      setState(() {
        _selectedDate = pickedDate;
        datecontroller =
            "${_selectedDate!.day.toString()}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year.toString().padLeft(2, '0')}";
      });
    });
  }
}
