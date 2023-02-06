// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "Security",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
            child: Form(
                key: _form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/security.png',
                      width: 120.w,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Current Login PIN",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextFormField(
                        hintText: "Enter 4 digit login pin",
                        validatorText: "Enter 4 digit login pin"),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "New Login PIN",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextFormField(
                        hintText: "Enter 4 digit login pin",
                        validatorText: "Enter 4 digit login pin"),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Confirm Login PIN",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                    ),
                    SizedBox(
                      height: 6,
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
                      text: "Update"
                      )
                  ],
                ))),
      ),
    );
  }
}
