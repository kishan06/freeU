// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/signupAppbar.dart';

class LoginUsingOTP extends StatefulWidget {
  const LoginUsingOTP({super.key});

  @override
  State<LoginUsingOTP> createState() => _LoginUsingOTPState();
}

class _LoginUsingOTPState extends State<LoginUsingOTP> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: CustomSignupAppBar(titleTxt: "Login with OTP", bottomtext: false),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
            key: _form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                SvgPicture.asset('assets/images/loginusingotp.svg'),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Please enter your mobile number",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30.w,
                      height: 30.h,
                      child: TextFormField(
                        readOnly: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF143C6D)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF143C6D)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF143C6D)),
                            ),
                            hintText: "+91",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    SizedBox(
                      width: 190.w,
                      height: 30.h,
                      child: TextFormField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF143C6D)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF143C6D)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF143C6D)),
                          ),
                          hintText: "",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.h,
                ),
                InkWell(
                  onTap: () => setState(() {}),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 50.h,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFB600),
                                shape: (RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ))),
                            onPressed: () {},
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: Icon(
                              color: Color(0xFF6B6B6B), Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
