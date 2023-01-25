import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
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
      backgroundColor: Color(0xFFF9F9F9),
      appBar: CustomSignupAppBar(
        titleTxt: "Contact Us",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/images/contactusfinal.png")),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Name*",
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
                    hintText: "Please Enter Full Name",
                    validatorText: "Please Enter Full Name"),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Email ID*",
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
                    hintText: "Please Enter Email Address",
                    validatorText: "Please Enter Email Address"),
                SizedBox(height: 20.h),
                Text(
                  "Mobile*",
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
                    hintText: "Please Enter Mobile Number",
                    validatorText: "Please Enter Mobile Number"),
                SizedBox(height: 20.h),
                Text(
                  "Subject",
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
                    hintText: "Please Enter Subject",
                    validatorText: "Please Enter Subject"),
                SizedBox(
                  height: 8.h,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
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
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 16.sm,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "Message",
                  ),
                  minLines: 5,
                  maxLines: null,
                ),
                SizedBox(height: 40.h),
                CustomNextButton(
                  text: "Send Now",
                  ontap: () {
                    Timer(Duration(seconds: 2),
                        () => Get.offAllNamed('/homepage'));
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
                              SizedBox(
                                height: 20,
                              )
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
                    style: TextStyle(fontSize: 14.sm, color: Color(0xFF6B6B6B)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
