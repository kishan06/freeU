// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Terms & condition",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 38.w, right: 54.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1. Terms',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          'By accessing this web site, you are agreeing to be bound by these web site Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. ',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trade mark law.',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff131313),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '2. Limitations',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Whilst we try to ensure that the standard of the Website remains high and to maintain the continuity of it, the internet is not an inherently stable medium, and errors, omissions, interruptions of service and delays may occur at any time. ',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'We do not accept any liability arising from any such errors, omissions, interruptions or delays or any ongoing obligation or responsibility to operate the Website (or any particular part of it) or to provide the service offered on the Website. We may vary the specification of this site from time to time without notice.',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '3. Revisions and Errata',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'You may only use the Website for lawful purposes when seeking employment or help with your career, when purchasing training courses or when recruiting staff. You must not under any circumstances seek to undermine the security of the Website or any information submitted to or available through it. In particular, but without limitation, you must not seek to access, alter or delete any information to which you do not have authorised access, seek to overload the system via spamming or flooding, take any action or use any device, routine or software to crash, delay, damage or otherwise interfere with the operation of the Website or attempt to decipher, disassemble or modify any of the software, coding or information comprised in the Website.',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff131313),
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                  sizedBoxHeight(20.h)
                ],
              ),
            )),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     GestureDetector(
            //         onTap: () {
            //           Get.back();
            //         },
            //         child: Icon(
            //           Icons.arrow_back,
            //           size: 24.sp,
            //           color: Color(0xff000000),
            //         )),
            //     SizedBox(
            //       height: 10.h,
            //     ),
            //     Text(
            //       "Terms & condition",
            //       style: TextStyle(
            //           fontFamily: "Poppins",
            //           fontSize: 25.sp,
            //           fontWeight: FontWeight.w500),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
