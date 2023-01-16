// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecurityQuestion extends StatefulWidget {
  const SecurityQuestion({super.key});

  @override
  State<SecurityQuestion> createState() => _SecurityQuestionState();
}

class _SecurityQuestionState extends State<SecurityQuestion> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: CustomSignupAppBar(
        titleTxt: "Security Questions",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "In what city were you born?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 16, color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF707070)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    hintText: "Answer",
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "What is the name of your favorite pet?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 16, color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF707070)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    hintText: "Answer",
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  "What is your mother's maiden name?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 16, color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF707070)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    hintText: "Answer",
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  "What high school did you attend?",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 16, color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF707070)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    hintText: "Answer",
                  ),
                ),
                SizedBox(height: 30.h),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Security_first(),
                    //   ),
                    // );
                    Get.toNamed('/securityfirst');
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 55.h,
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => Security_first(),
                            //   ),
                            // );
                            Get.toNamed('/securityfirst');
                          },
                          child: const Text(
                            'Proceeds',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
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
                              color: Color(0xFF6B6B6B), Icons.arrow_forward),
                        ),
                      )
                    ],
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
