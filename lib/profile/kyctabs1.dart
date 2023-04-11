// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/profile/KYCtabs2.dart';

class KYCtabs1 extends StatefulWidget {
  const KYCtabs1({super.key});

  @override
  State<KYCtabs1> createState() => _KYCtabs1State();
}

class _KYCtabs1State extends State<KYCtabs1> {
  int currentIndex = 0;
  late PageController _controller;

  String? datecontroller;

  DateTime? _selectedDate;
  final residentialstatustexteditingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: 
        Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Step 1 : Complete your KYC",
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
                  "Personal Information",
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
                  "Provide your personal information as per your Bank Account",
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
                  "Contact Number",
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
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
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
                  "Date of Birth",
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
                            Text(
                                _selectedDate == null ? '' : '$datecontroller'),
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
                  "Occupation",
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
                      "Marketing manager",
                      "financial operations.",
                      "Software developer."
                    ],
                    controller: residentialstatustexteditingcontroller,
                    showDropDown: true),

                // CustomTextFormField(
                //     hintText: "Please Enter Occupation",
                //     validatorText: "Please Enter Occupation"),
                SizedBox(height: 20.h),
                Text(
                  "Father's Name",
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
                    hintText: "Please Enter Father's Name",
                    validatorText: "Please Enter Father's Name"),
                SizedBox(height: 40.h),
                CustomNextButton(
                  text: "Continue",
                  ontap: () {
                    setState(() {
                      _controller.animateToPage(currentIndex = 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear);
                    });
                  },
                ),
                sizedBoxHeight(60.h)
              ],
            ),
          ),
        ),
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
