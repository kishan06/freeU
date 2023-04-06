// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/screens/main_screen.dart';

import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  bool _isObscure = true;
  DateTime timebackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timebackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timebackPressed = DateTime.now();

        if (isExitWarning) {
          final message = "Press back again to exit";
          Fluttertoast.showToast(
            msg: message,
            fontSize: 18.sm,
          );

          return false;
        } else {
          Fluttertoast.cancel();

          SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => Get.focusScope!.unfocus(),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Center(
                  child: Form(
                    key: _form,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        Image.asset(
                          'assets/images/freeulogin.png',
                          alignment: Alignment.center,
                          width: 200.w,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "Welcome to FreeU",
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Sign in to continue.",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email / Phone",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextFormField(
                              hintText: "Enter Email or Phone Number",
                              validatorText: "Enter Email or Phone Number",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Email or Phone Number";
                                }
                                return null;
                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.toNamed('/loginUsingOTP');
                              },
                              child: Text(
                                'Login Using OTP',
                                style: blackStyle12().copyWith(
                                  color: Color(0xFF143C6D),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Password";
                                  }
                                  return null;
                                },
                                isInputPassword: true,
                                hintText: "Enter Password",
                                validatorText: "Please Enter Password")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.toNamed('/forgotPassword');
                              },
                              child: Text(
                                'Forgot Password?',
                                textAlign: TextAlign.end,
                                style: blackStyle12().copyWith(
                                  color: Color(0xFF143C6D),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        CustomNextButton(
                          ontap: () {
                            final isValid = _form.currentState?.validate();
                            if (isValid!) {
                              // Get.toNamed("/homepage");
                              // Get.to(MainScreen());
                              Get.toNamed("/MainScreen");
                            } else {
                              Get.snackbar(
                                "Error",
                                "Please Enter Login Credentials",
                                margin: EdgeInsets.all(8),
                                snackStyle: SnackStyle.FLOATING,
                              );
                            }
                          },
                          text: 'Sign in',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an account?",
                              style: blackStyle14().copyWith(
                                color: Color(0x9F333332),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('/signup');
                              },
                              child: Text(
                                'Create account',
                                style: blackStyle14().copyWith(
                                  color: Color(0xFF143C6D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
