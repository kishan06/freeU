// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextFormField.dart';
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
        backgroundColor: Color(0xFFF9F9F9),
        appBar: CustomSignupAppBar(
          titleTxt: "Forgot Password",
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
                      Text(
                        "We will send a verification email to the email address on your account in order to reset your password",
                        style: TextStyle(
                          fontSize: 12,
                        ),
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
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff303030)),
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          CustomTextFormField(
                              textEditingController: phoneController,
                              // keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
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
                              hintText: "Enter your name",
                              validatorText: "Enter your name"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'OTP Sent to registered mobile number',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF143C6D),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/otpverification');
                            },
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 55.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 3,
                                        shadowColor: const Color.fromARGB(
                                            255, 172, 172, 173),
                                        backgroundColor:
                                            const Color(0xFFFFB600),
                                        shape: (RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ))),
                                    onPressed: () {
                                      Get.toNamed('/otpverification');
                                    },
                                    child: const Text(
                                      'Proceeds',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  right: 0,
                                  top: 1,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 25,
                                    child: Icon(
                                        color: Color(0xFF6B6B6B),
                                        Icons.arrow_forward),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      )
                    ],
                  ))),
        ));
  }
}
