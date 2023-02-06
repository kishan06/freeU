// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';

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
            fontSize: 18,
          );

          return false;
        } else {
          Fluttertoast.cancel();

          SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FA),
        body: GestureDetector(
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
                        height: 40.h,
                      ),
                      Image.asset(
                        'assets/images/freeulogin.png',
                        alignment: Alignment.center,
                        width: 200.w,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email / Mobile",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color(0xff303030)),
                          ),
                          SizedBox(
                            height: 6,
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
                              child: const Text(
                                'Login Using OTP',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Color(0xFF1B8DC9),
                                ),
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color(0xff303030)),
                          ),
                          SizedBox(
                            height: 6.h,
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
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/forgotPassword');
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Forgot Password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xFF1B8DC9),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      CustomNextButton(
                        ontap: () {
                          final isValid = _form.currentState?.validate();
                          if (isValid!) {
                            Get.toNamed("/homepage");
                          } else {
                            Get.snackbar(
                                "Error", "Please Enter Login Credentials",
                                margin: EdgeInsets.all(8),
                                snackStyle: SnackStyle.FLOATING,
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                        text: 'Sign in',
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Don't have an account?",
                              style: TextStyle(
                                color: Color(0x9F333332),
                                fontSize: 15,
                              )),
                          TextButton(
                            child: const Text(
                              'Create account',
                              style: TextStyle(
                                color: Color(0xFF1B8DC9),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Get.toNamed('/signup');
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
        ),
      ),
    );
  }
}
