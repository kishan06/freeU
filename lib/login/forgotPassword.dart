// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  int currentIndex = 0;
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Center(
            child: Form(
              key: _form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "We will send a verification email to the email address on your account in order to reset your password",
                    style: blackStyle18().copyWith(color: Color(0xFF272424)),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone",
                        // ignore: prefer_const_constructors
                        style: blackStyle20().copyWith(
                          color: Color(0xff303030),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Column(
                        children: [
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: phoneController,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter a Phone Number";
                                } else if (!RegExp(
                                        r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                                    .hasMatch(value)) {
                                  return "Please Enter a Valid Phone Number";
                                }
                                return null;
                              },
                              hintText: "Enter your Phone Number",
                              validatorText: "Enter your Phone Number"),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'OTP Sent to registered mobile number',
                              style: TextStyle(
                                fontSize: 14.sm,
                                fontFamily: 'Poppins',
                                color: Color(0xFF143C6D),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      CustomNextButton(
                        text: "Proceed",
                        ontap: () {
                          final isValid = _form.currentState?.validate();
                          if (isValid!) {
                            Get.toNamed('/otpverification');
                          } else {
                            Get.snackbar("Error", "Please Enter Phone Number",
                                margin: EdgeInsets.all(8),
                                snackStyle: SnackStyle.FLOATING,
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
