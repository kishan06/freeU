// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
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
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Center(
            child: Form(
                key: _form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login with OTP",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 25.sp),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      "OTP sent to",
                      // ignore: prefer_const_constructors
                      style: blackStyle20().copyWith(
                        color: Color(0xff000000),
                      ),
                      // TextStyle(
                      //     fontFamily: 'Poppins',
                      //     fontSize: 16.sm,
                      //     color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Color(0xFFF2F2F2),
                        // enabled: false,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFF707070), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFF707070), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFF707070), width: 1),
                        ),
                        hintText: "8467399899",
                        hintStyle:
                            blackStyle15().copyWith(color: Color(0xFF707070)),
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
                      style: blackStyle20().copyWith(
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                        child:
                            //  pinfiledshow
                            //  ?
                            PinCodeTextField(
                      showCursor: true,
                      cursorColor: Color(0xFFCCCCCC),
                      textStyle:
                          TextStyle(fontSize: 18.sp, color: Color(0xFF143C6D)),
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
                        inactiveColor: Color(0xFFCCCCCC),
                        activeColor: Color(0xFFCCCCCC),
                        selectedColor: Color(0xFFCCCCCC),
                        borderWidth: 1,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10),
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
                    SizedBox(height: 50.h),
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
