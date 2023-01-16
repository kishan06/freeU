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
          backgroundColor: Color(0xFFF9F9F9),
          body: SingleChildScrollView(
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
                            height: 80.h,
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
                                "Email / Phone",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff303030)),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              // TextFormField(
                              //   decoration: InputDecoration(
                              //     focusedBorder: OutlineInputBorder(
                              //       borderSide: BorderSide(
                              //           width: 2, color: Color(0xFFFFB600)),
                              //       borderRadius:
                              //           BorderRadius.all(Radius.circular(30)),
                              //     ),
                              //     border: OutlineInputBorder(
                              //       borderSide: BorderSide(
                              //           width: 2, color: Color(0xFF707070)),
                              //       borderRadius:
                              //           BorderRadius.all(Radius.circular(30)),
                              //     ),
                              //     hintText: "Enter Email or Phone Number",
                              //   ),
                              // ),
                              CustomTextFormField(
                                  hintText: "Enter Email or Phone Number",
                                  validatorText: "Enter Email or Phone Number")
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
                                      fontSize: 15,
                                      color: Color(0xFF143C6D),
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
                                    fontSize: 16, color: Color(0xff303030)),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              // TextFormField(
                              //   keyboardType: TextInputType.text,
                              //   // controller: textEditingController,
                              //   obscureText: _isObscure,
                              //   decoration: InputDecoration(
                              //     border: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(30),
                              //       borderSide: BorderSide(
                              //           color: Color(0xFF707070), width: 2),
                              //     ),
                              //     enabledBorder: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(30),
                              //       borderSide: BorderSide(
                              //           color: Color(0xFF707070), width: 2),
                              //     ),
                              //     focusedBorder: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(30),
                              //       borderSide: BorderSide(
                              //           color: Color(0xFFFFB600), width: 2),
                              //     ),
                              //     errorBorder: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(30),
                              //       borderSide: const BorderSide(
                              //           color: Colors.red, width: 2),
                              //     ),
                              //     focusedErrorBorder: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(30),
                              //       borderSide: const BorderSide(
                              //           color: Colors.red, width: 2),
                              //     ),
                              //     hintText: "Enter Password",
                              //     suffixIcon: GestureDetector(
                              //         onTap: (() => setState(
                              //               () => _isObscure = !_isObscure,
                              //             )),
                              //         child: Column(
                              //           mainAxisAlignment:
                              //               MainAxisAlignment.center,
                              //           children: [
                              //             Padding(
                              //               padding:
                              //                   EdgeInsets.only(right: 20.0),
                              //               child: Text("Show",
                              //                   style: TextStyle(
                              //                       color: Color(0xFFFFB600))),
                              //             ),
                              //           ],
                              //         )),
                              //   ),
                              // ),
                              CustomTextFormField(
                                  isInputPassword: true,
                                  hintText: "Enter Password",
                                  validatorText: "Please Enter Password")
                            ],
                          ),
                          SizedBox(
                            height: 70.h,
                          ),
                          CustomNextButton(
                            ontap: () {
                              Get.toNamed("/homepage");
                            },
                            text: 'Sign in',
                          ),
                          TextButton(
                              onPressed: () {
                                Get.toNamed('/forgotPassword');
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF143C6D),
                                ),
                              )),
                          SizedBox(
                            height: 50.h,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text("Don't have an account?",
                                  style: TextStyle(
                                    color: Color.fromARGB(159, 51, 51, 50),
                                    fontSize: 15,
                                  )),
                              TextButton(
                                child: const Text(
                                  'Signup for free',
                                  style: TextStyle(
                                    color: Color(0xFF143C6D),
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
                      ))),
            ),
          )),
    );
  }
}
