// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

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
      backgroundColor: Color(0xFFF5F8FA),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Form(
              key: _form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 24.sm,
                            color: Color(0xFF6B6B6B),
                          )),
                      SizedBox(
                        width: 5.h,
                      ),
                      Text(
                        "Login with OTP",
                        style:
                            TextStyle(fontFamily: "Poppins", fontSize: 20.sm),
                      ),
                    ],
                  ),
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
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.sm,
                            color: Color(0xFF000000)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30.w,
                        //   height: 20.h,
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF143C6D)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF143C6D)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF143C6D)),
                              ),
                              hintText: "+91",
                              hintStyle: TextStyle(
                                  fontSize: 15.sm,
                                  color: Colors.black,
                                  fontFamily: "Poppins")),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 190.w,
                        //  height: 55.h,
                        child: TextFormField(
                          style:
                              TextStyle(fontSize: 16.sm, fontFamily: "Poppins"),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF143C6D)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF143C6D)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF143C6D)),
                              ),
                              hintText: "",
                              helperText: ""),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Mobile Number";
                            } else if (value.length < 10) {
                              return "Please Enter Correct Mobile Number";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  CustomNextButton(
                    text: "Next",
                    ontap: () {
                      final isValid = _form.currentState?.validate();
                      if (isValid!) {
                        setState(() {
                          Get.toNamed('/phoneverification');
                        });
                      } else {
                        Get.snackbar("Error", "Please Enter Valid Phone Number",
                            margin: EdgeInsets.all(8),
                            snackStyle: SnackStyle.FLOATING,
                            snackPosition: SnackPosition.BOTTOM);
                      }
                    },
                  )
                ],
              )),
        )),
      ),
    );
  }
}
