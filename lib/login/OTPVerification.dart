// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class otpVerification extends StatefulWidget {
  const otpVerification({super.key});

  @override
  State<otpVerification> createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {
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
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
            iconSize: 22,
            color: Color(0xFF6B6B6B),
          ),
          title: Text(
            "Forget Password",
            style: TextStyle(color: Color(0xFF242323)),
          ),
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
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 55.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color(0xff303030)),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          TextFormField(
                            maxLength: 10,
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, //<-- SEE HERE
                                    color: Color(0xFFFFB600)),
                              ),
                              hintText: "Enter your number",
                              prefixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: Icon(
                                  Icons.call,
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
                          SizedBox(
                            height: 30.h,
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
                                    hintText: "0",
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff143C6D),
                                            width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 224, 223, 223),
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
                                    hintText: "0",
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff143C6D),
                                            width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 224, 223, 223),
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
                                    hintText: "0",
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff143C6D),
                                            width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 224, 223, 223),
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
                                    hintText: "0",
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff143C6D),
                                            width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 224, 223, 223),
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
                          SizedBox(
                            height: 80.h,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/resetpassword');
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
                                      Get.toNamed('/resetpassword');
                                    },
                                    child: const Text(
                                      'Proceeds',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
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
