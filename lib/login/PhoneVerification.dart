// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F8FA),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
            child: Form(
                key: _form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Phone Verification",
                          style:
                              TextStyle(fontFamily: "Poppins", fontSize: 20.sm),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.h),
                    Text(
                      "OTP sent to",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sm,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Color(0xFFF2F2F2),
                        // enabled: false,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color(0xFF707070).withOpacity(0),
                              width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color(0xFF707070).withOpacity(0),
                              width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color(0xFF707070).withOpacity(0),
                              width: 1),
                        ),
                        hintText: "8467399899",
                        suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/loginUsingOTP');
                            },
                            child: Icon(
                              Icons.create_outlined,
                              color: Color(0xff143C6D),
                            ),
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
                          fontSize: 16.sm,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                        child:
                            //  pinfiledshow
                            //  ?
                            PinCodeTextField(
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
                        inactiveColor: Color(0xFF707070),
                        activeColor: Color(0xFF143C6D),
                        selectedColor: Color(0xFF143C6D),
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
                    )
                        // : null,
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Didn't you receive any code ?",
                            style: TextStyle(
                              color: Color.fromARGB(159, 51, 51, 50),
                              fontSize: 14.sm,
                            )),
                        TextButton(
                          child: Text(
                            'Resend',
                            style: TextStyle(
                              color: Color(0xFF143C6D),
                              fontSize: 14.sm,
                            ),
                          ),
                          onPressed: () {
                            //  Get.toNamed('/signup');
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 60.h),
                    CustomNextButton(
                      text: "Verify",
                      ontap: () {
                        final isValid = _form.currentState?.validate();
                        if (isValid!) {
                          Get.toNamed("/completeprofile");
                        } else {
                          Get.snackbar("Error", "Please Enter OTP",
                              margin: EdgeInsets.all(8),
                              snackStyle: SnackStyle.FLOATING,
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      },
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
