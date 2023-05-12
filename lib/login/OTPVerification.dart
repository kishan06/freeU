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
    phoneController.text = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Form(
              key: _form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 25.sp,
                            color: const Color(0XFF0F0C0C),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "We will send a verification email to the email address on your account in order to reset your password",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: const Color(0XFF272424),
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
                              readOnly: true,
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              decoration: InputDecoration(
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1, //<-- SEE HERE
                                    color: Color(0xFF6B6B6B),
                                  ),
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, //<-- SEE HERE
                                      color: Color(0xFF6B6B6B)),
                                ),
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, //<-- SEE HERE
                                      color: Color(0xFF6B6B6B)),
                                ),
                                hintText: "Enter number",
                                hintStyle: TextStyle(
                                    fontFamily: "Poppins", fontSize: 15.sm),
                                prefixIcon: const Align(
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
                            Text(
                              "Enter OTP",
                              style: blackStyle16().copyWith(
                                color: const Color(0xff303030),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                child: PinCodeTextField(
                              showCursor: true,
                              cursorColor: const Color(0xFF143C6D),
                              textStyle: TextStyle(
                                  fontSize: 18.sm,
                                  color: const Color(0xFF143C6D)),
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
                                inactiveColor: const Color(0xFFCCCCCC),
                                activeColor: const Color(0xFFCCCCCC),
                                selectedColor: const Color(0xFFCCCCCC),
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(15),
                                fieldHeight: 60.h,
                                fieldWidth: 60.w,
                                activeFillColor: Colors.white,
                              ),
                              animationDuration:
                                  const Duration(milliseconds: 300),
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
                                      margin: const EdgeInsets.all(8),
                                      snackStyle: SnackStyle.FLOATING,
                                      snackPosition: SnackPosition.BOTTOM);
                                }
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        )
                      ],
                    ),
                  )),
                ],
              )),
        )));
  }
}
