import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Contact us",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  sizedBoxHeight(30.h),
                  Text(
                    "Name*",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFormField(
                      hintText: "  Enter Full Name",
                      validatorText: "Please Enter Full Name"),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "Email ID*",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFormField(
                      hintText: "  Enter Email Address",
                      validatorText: "Please Enter Email Address"),
                  SizedBox(height: 25.h),
                  Text(
                    "Mobile number*",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        color: Color(0xff303030)),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFormField(
                      hintText: "  Enter Mobile Number",
                      validatorText: "Please Enter Mobile Number"),
                  SizedBox(height: 25.h),
                  Text(
                    "Subject",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFormField(
                      hintText: "  Enter Subject",
                      validatorText: "Please Enter Subject"),
                  SizedBox(
                    height: 25.h,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 16.sp),
                    cursorColor: const Color(0xFFFFB600),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.h),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xffCCCCCC), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xffCCCCCC), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xffCCCCCC), width: 1),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0x80000000), fontSize: 16.sp),
                      hintText: "  Message",
                    ),
                    minLines: 5,
                    maxLines: null,
                  ),
                  SizedBox(height: 40.h),
                  CustomNextButton(
                    text: "Send Now",
                    ontap: () {
                      Timer(Duration(seconds: 2),
                          () => Get.offAllNamed('/EntryPoint', arguments: 0));
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
                                Image.asset("assets/images/letter.png"),
                                SizedBox(
                                  height: 28.h,
                                ),
                                Text(
                                  "Thankyou for contacting.\nWill reach back to you",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 20.sm,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Center(
                    child: Text(
                      "*Required Field",
                      style: TextStyle(
                          fontSize: 12.sp, color: const Color(0xFF6B6B6B)),
                    ),
                  ),
                  sizedBoxHeight(30.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
