import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:get/get.dart';

class SecurityQuestion extends StatefulWidget {
  const SecurityQuestion({super.key});

  @override
  State<SecurityQuestion> createState() => _SecurityQuestionState();
}

class _SecurityQuestionState extends State<SecurityQuestion> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Security questions",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 25.sp),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "In what city were you born?",
                      style: TextStyle(fontSize: 20.sp, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      hintText: "Answer",
                      validatorText: "Please Enter Answer",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Answer";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "What is the name of your favorite pet?",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                          color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      hintText: "Answer",
                      validatorText: "Please Enter Answer",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Answer";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "What is your mother's maiden name?",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      hintText: "Answer",
                      validatorText: "Please Enter Answer",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Answer";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "What high school did you attend?",
                      style: TextStyle(fontSize: 20.sp, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      hintText: "Answer",
                      validatorText: "Please Enter Answer",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Answer";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 45.h),
                    CustomNextButton(
                      text: "Next",
                      ontap: () {
                        final isValid = _form.currentState?.validate();
                        if (isValid!) {
                          Get.toNamed('/securityfirst');
                        } else {
                          Get.snackbar("Error", "Please Enter Required Fields",
                              margin: EdgeInsets.all(8),
                              snackStyle: SnackStyle.FLOATING,
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/securityfirst");
                          },
                          child: Text(
                            "Skip",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff6B6B6B),
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
