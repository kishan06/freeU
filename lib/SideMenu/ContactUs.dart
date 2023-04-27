import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Form(
          key: _form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Contact us".tr,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    sizedBoxHeight(30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Name*".tr,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Your Name".tr;
                          }
                          return null;
                        },
                        hintText: "  Enter Full Name".tr,
                        validatorText: "Please Enter Full Name".tr),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Email ID*".tr,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "profile_emailV1".tr;
                          }
                          if (!RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value)) {
                            return 'profile_emailV2'.tr;
                          }
                          return null;
                        },
                        hintText: "profile_emailV3".tr,
                        validatorText: "profile_emailV3".tr),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Mobile number*".tr,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                        texttype: TextInputType.phone,
                        validator: (value) {
                          if (value == value.isEmpty) {
                            return 'profile_phoneV1'.tr;
                          } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                              .hasMatch(value)) {
                            return 'profile_phoneV2'.tr;
                          }
                          // v3 = true;
                          return null;
                        },
                        hintText: "profile_phoneV3".tr,
                        validatorText: "profile_phoneV3".tr),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Subject".tr,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Subject is required'.tr;
                          }
                          return null;
                        },
                        hintText: "  Enter Subject".tr,
                        validatorText: "  Enter Subject".tr),
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
                        hintStyle: TextStyle(
                            color: const Color(0x80000000), fontSize: 16.sp),
                        hintText: "  Message".tr,
                      ),
                      minLines: 5,
                      maxLines: null,
                    ),
                    SizedBox(height: 40.h),
                    CustomNextButton(
                      text: "Send Now".tr,
                      ontap: () {
                        final isValid = _form.currentState?.validate();
                        if (isValid!) {
                          Timer(
                              const Duration(seconds: 2),
                              () =>
                                  Get.offAllNamed('/EntryPoint', arguments: 0));
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
                                      "ContactThankyou".tr,
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
                        }
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: Text(
                        "*Required Field".tr,
                        style: TextStyle(
                            fontSize: 12.sp, color: const Color(0xFF6B6B6B)),
                      ),
                    ),
                    sizedBoxHeight(30.h)
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
