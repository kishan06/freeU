// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
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
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          iconSize: 22,
          color: const Color(0xFF6B6B6B),
        ),
        title: const Text(
          "Phone Verification",
          style: TextStyle(color: Color(0xFF242323)),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Form(
              key: _form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  Text(
                    "OTP sent to",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sm,
                        color: Color(0xff303030)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFF707070)),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: "Enter your number",
                      suffixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.create_outlined,
                          color: Color(0xff143C6D),
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
                  SizedBox(height: 30.h),
                  Text(
                    "Enter OTP",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sm,
                        color: Color(0xff303030)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 64.w,
                        height: 68.h,
                        child: TextFormField(
                          onSaved: (pin1) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFFFB600), width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            filled: true,
                            fillColor: Color.fromARGB(255, 224, 223, 223),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF707070)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 64.w,
                        height: 68.h,
                        child: TextFormField(
                          onSaved: (pin2) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFFFB600), width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            filled: true,
                            fillColor: Color.fromARGB(255, 224, 223, 223),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF707070)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 64.w,
                        height: 68.h,
                        child: TextFormField(
                          onSaved: (pin3) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFFFB600), width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            filled: true,
                            fillColor: Color.fromARGB(255, 224, 223, 223),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF707070)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 64.w,
                        height: 68.h,
                        child: TextFormField(
                          onSaved: (pin4) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFFFB600), width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            filled: true,
                            fillColor: Color.fromARGB(255, 224, 223, 223),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF707070)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Didn't you receive any code ?",
                          style: TextStyle(
                            color: Color.fromARGB(159, 51, 51, 50),
                            fontSize: 15.sm,
                            fontFamily: 'Poppins',
                          )),
                      TextButton(
                        child: Text(
                          'Resend',
                          style: TextStyle(
                            color: Color(0xFF143C6D),
                            fontSize: 15.sm,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          //  Get.toNamed('/signup');
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 60.h),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/completeprofile');
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 50.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 3,
                                shadowColor:
                                    const Color.fromARGB(255, 172, 172, 173),
                                backgroundColor: const Color(0xFFFFB600),
                                shape: (RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ))),
                            onPressed: () {
                              Get.toNamed('/completeprofile');
                            },
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sm,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25.r,
                            child: Icon(
                                color: Color(0xFF6B6B6B), Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
