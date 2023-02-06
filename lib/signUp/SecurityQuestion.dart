// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/signUp/SecurityFirst.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecurityQuestion extends StatefulWidget {
  const SecurityQuestion({super.key});

  @override
  State<SecurityQuestion> createState() => _SecurityQuestionState();
}

class _SecurityQuestionState extends State<SecurityQuestion> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "Security Questions",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Form(
            key: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "In what city were you born?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 16.sm,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
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
                  height: 30.h,
                ),
                Text(
                  "What is the name of your favorite pet?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 16.sm,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
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
                // TextFormField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderSide:
                //           BorderSide(width: 2, color: Color(0xFF707070)),
                //       borderRadius: BorderRadius.all(Radius.circular(30)),
                //     ),
                //     hintText: "Answer",
                //   ),
                // ),
                SizedBox(height: 30.h),
                Text(
                  "What is your mother's maiden name?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 16.sm,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
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
                // TextFormField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderSide:
                //           BorderSide(width: 2, color: Color(0xFF707070)),
                //       borderRadius: BorderRadius.all(Radius.circular(30)),
                //     ),
                //     hintText: "Answer",
                //   ),
                // ),
                SizedBox(height: 30.h),
                Text(
                  "What high school did you attend?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 16.sm,
                      fontFamily: 'Poppins',
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
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
                // TextFormField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderSide:
                //           BorderSide(width: 2, color: Color(0xFF707070)),
                //       borderRadius: BorderRadius.all(Radius.circular(30)),
                //     ),
                //     hintText: "Answer",
                //   ),
                // ),
                SizedBox(height: 30.h),
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
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecurityFirst(),
                        ),
                      );
                    },
                    child: Text(
                      "Skip",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff6B6B6B),
                        fontSize: 16.sm,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
