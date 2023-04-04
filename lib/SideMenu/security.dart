// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Center(
              child: Form(
                  key: _form,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Security",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Current Login PIN",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      CustomTextFormField(
                          hintText: "Enter 4 digit login pin",
                          validatorText: "Enter 4 digit login pin"),
                      SizedBox(
                        height: 25.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "New Login PIN",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      CustomTextFormField(
                          hintText: "Enter 4 digit login pin",
                          validatorText: "Enter 4 digit login pin"),
                      SizedBox(
                        height: 25.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Confirm Login PIN",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      CustomTextFormField(
                          hintText: "Enter 4 digit login pin",
                          validatorText: "Enter 4 digit login pin"),
                      SizedBox(
                        height: 60.h,
                      ),
                      CustomNextButton(
                          ontap: (() {
                            Navigator.pop(context);
                          }),
                          text: "Update")
                    ],
                  ))),
        ),
      ),
    );
  }
}
