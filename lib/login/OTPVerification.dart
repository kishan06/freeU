// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otpVerification extends StatefulWidget {
  const otpVerification({super.key});

  @override
  State<otpVerification> createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {
  int currentIndex = 0;
  TextEditingController phoneController = TextEditingController();
  TextEditingController pincode = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F8FA),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                            GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 24,
                                  color: Color(0xFF6B6B6B),
                                )),
                            SizedBox(
                              width: 5.h,
                            ),
                            Text(
                              "Forgot Password",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 20.sm),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "We will send a verification email to the email address on your account in order to reset your password",
                          style: TextStyle(
                            fontSize: 16.sm,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(
                          height: 55.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              readOnly: false,
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1, //<-- SEE HERE
                                    color: Color(0xFF6B6B6B),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, //<-- SEE HERE
                                      color: Color(0xFF6B6B6B)),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, //<-- SEE HERE
                                      color: Color(0xFF6B6B6B)),
                                ),
                                hintText: "9987171951",
                                hintStyle: TextStyle(
                                    fontFamily: "Poppins", fontSize: 15.sm),
                                prefixIcon: Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Icon(
                                    Icons.call,
                                    color: Color(0xff1B8DC9),
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                _form.currentState?.validate();
                              },
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
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              "Enter OTP",
                              style: blackStyle16().copyWith(
                                color: Color(0xff303030),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                child: PinCodeTextField(
                              showCursor: true,
                              cursorColor: Color(0xFF143C6D),
                              textStyle: TextStyle(
                                  fontSize: 18.sm, color: Color(0xFF143C6D)),
                              errorTextSpace: 22,
                              validator: (value) {
                                if (value != null && value.isEmpty) {
                                  return "Please Enter verification code";
                                } else if (value != null && value.length < 4) {
                                  return "OTP length should be atleast 4";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              length: 4,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                selectedFillColor: Colors.white,
                                inactiveFillColor: Colors.white,
                                inactiveColor: Color(0xFF707070).withOpacity(0),
                                activeColor: Color(0xFF707070).withOpacity(0),
                                selectedColor: Color(0xFF707070).withOpacity(0),
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(15),
                                fieldHeight: 60.h,
                                fieldWidth: 60.w,
                                activeFillColor: Colors.white,
                              ),
                              animationDuration: Duration(milliseconds: 300),
                              enableActiveFill: true,
                              controller: pincode,
                              onCompleted: (v) {
                                print("Completed");
                              },
                              onChanged: (value) {
                                print(value);
                                setState(() {});
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");

                                return true;
                              },
                              appContext: context,
                            )),

                            SizedBox(
                              height: 80.h,
                            ),
                            CustomNextButton(
                              text: "Proceed",
                              ontap: () {
                                final isValid = _form.currentState?.validate();
                                if (isValid!) {
                                  Get.toNamed('/resetpassword');
                                } else {
                                  Get.snackbar("Error", "Please Enter OTP",
                                      margin: EdgeInsets.all(8),
                                      snackStyle: SnackStyle.FLOATING,
                                      snackPosition: SnackPosition.BOTTOM);
                                }
                              },
                            )
                            // InkWell(
                            //   onTap: () {
                            //     Get.toNamed('/resetpassword');
                            //   },
                            //   child: Stack(
                            //     children: [
                            //       SizedBox(
                            //         width: double.infinity,
                            //         height: 50.h,
                            //         child: ElevatedButton(
                            //           style: ElevatedButton.styleFrom(
                            //               elevation: 3,
                            //               shadowColor: const Color.fromARGB(
                            //                   255, 172, 172, 173),
                            //               backgroundColor:
                            //                   const Color(0xFFFFB600),
                            //               shape: (RoundedRectangleBorder(
                            //                 borderRadius:
                            //                     BorderRadius.circular(30.0),
                            //               ))),
                            //           onPressed: () {
                            //             Get.toNamed('/resetpassword');
                            //           },
                            //           child: const Text(
                            //             'Proceed',
                            //             style: TextStyle(
                            //               color: Colors.black,
                            //               fontSize: 16,
                            //               fontFamily: 'Poppins',
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       const Positioned(
                            //         right: 0,
                            //         top: 0,
                            //         child: CircleAvatar(
                            //           backgroundColor: Colors.white,
                            //           radius: 25,
                            //           child: Icon(
                            //               color: Color(0xFF6B6B6B),
                            //               Icons.arrow_forward),
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        )
                      ],
                    ))),
          ),
        ));
  }
}
