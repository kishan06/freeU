
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class LoginUsingOTP extends StatefulWidget {
  const LoginUsingOTP({super.key});

  @override
  State<LoginUsingOTP> createState() => _LoginUsingOTPState();
}

class _LoginUsingOTPState extends State<LoginUsingOTP> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final tecPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar:
          const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: Form(
            key: _form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      "Login with OTP",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 25.sp),
                    ),
                  ],
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 40.h),
                      SvgPicture.asset('assets/images/loginusingotp.svg'),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Please enter your mobile number",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sp,
                                color: const Color(0xFF000000)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30.w,
                            //   height: 20.h,
                            child: TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                  border: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF143C6D)),
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF143C6D)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF143C6D)),
                                  ),
                                  hintText: "+91",
                                  hintStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.black,
                                      fontFamily: "Poppins")),
                            ),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Expanded(
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: tecPhone,
                              style: TextStyle(
                                  fontSize: 16.sp, fontFamily: "Poppins"),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                errorStyle: TextStyle(fontSize: 12.sp),
                                contentPadding: const EdgeInsets.only(left: 10),
                                border: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF143C6D)),
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF143C6D)),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF143C6D)),
                                ),
                                hintText: "",
                                //helperText: ""
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Mobile Number";
                                } else if (value.length < 10) {
                                  return "Please Enter Correct Mobile Number";
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      CustomNextButton(
                        text: "Next",
                        ontap: () {
                          final isValid = _form.currentState?.validate();
                          if (isValid!) {
                            setState(() {
                              Get.toNamed('/phoneverification',
                                  arguments: tecPhone.text);
                            });
                          } else {
                            Get.snackbar(
                                "Error", "Please Enter Valid Phone Number",
                                margin: const EdgeInsets.all(8),
                                snackStyle: SnackStyle.FLOATING,
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
