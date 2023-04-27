// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int selectIndex = 0;
  final List<String> imageUrls = [
    "https://via.placeholder.com/300x200.png?text=Image+1",
    "https://via.placeholder.com/300x200.png?text=Image+2",
    "https://via.placeholder.com/300x200.png?text=Image+3",
  ];
  PageController indicatorcontroller2 = PageController(
    viewportFraction: 0.95,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomSignupAppBar(
        titleTxt: '',
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What is FreeU ?'.tr,
                style: TextStyle(
                    color: Color(0xff0F0C0C),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              sizedBoxHeight(17.h),
              Text(
                'whatsFreeU'.tr,
                style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 20.sp,
                    fontFamily: 'Poppins'),
              ),
              Divider(
                height: 48.h,
                thickness: 1.2.h,
                color: Color(0xff616161).withOpacity(0.3),
              ),
              Text(
                'Why FreeU ?'.tr,
                style: TextStyle(
                    color: Color(0xff0F0C0C),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              sizedBoxHeight(17.h),
              Text(
                'WhyFreeU'.tr,
                style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 20.sp,
                    fontFamily: 'Poppins'),
              ),
              sizedBoxHeight(25.h),
              Row(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color(0xffA0EF87),
                    child: Image.asset(
                      'assets/images/13536.png',
                      width: 42.w,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Experience'.tr,
                          style: TextStyle(
                              color: Color(0xff0F0C0C),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                        Text(
                          'ExpDiscr'.tr,
                          style: TextStyle(
                              color: Color(0xff272424),
                              fontSize: 18.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                height: 58.h,
                thickness: 1.2.h,
                color: Color(0xff616161).withOpacity(0.1),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color(0xff4981C9),
                    child: Image.asset(
                      'assets/images/13540.png',
                      width: 45.w,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quick Support'.tr,
                          style: TextStyle(
                              color: Color(0xff0F0C0C),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                        Text(
                          'QuickSupportDisc'.tr,
                          style: TextStyle(
                              color: Color(0xff272424),
                              fontSize: 18.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              sizedBoxHeight(48.h),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Our Great Team'.tr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xff0F0C0C),
                      fontSize: 25.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Image.asset(
                        'assets/images/team01.png',
                      )),
                  SizedBox(
                    width: 15.w,
                  ),
                  Flexible(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              // RichText(
                              //   text: TextSpan(
                              //     text: '66',
                              //     style: TextStyle(
                              //         color: Colors.black, fontSize: 10.sp),
                              //   ),
                              // ),
                              // Text('"',
                              //     style: TextStyle(
                              //         fontSize: 50.sp,
                              //         color: Color(0xff0F0C0C))),
                              Expanded(
                                child: Text(
                                    'Lorem ipsum contains the typefaces more in use, an aspect that allows you to',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xff0F0C0C))),
                              ),
                              // Row(
                              //   crossAxisAlignment: CrossAxisAlignment.end,
                              //   children: [
                              //     Text(',,',
                              //         style: TextStyle(
                              //             fontSize: 50.sp,
                              //             color: Color(0xff0F0C0C))),
                              //   ],
                              // ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                color: Color(0xff4981C9).withOpacity(0.7),
                                height: 2.5.h,
                                width: 30.w,
                              ),
                              sizedBoxWidth(10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rushabh Parekh',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color(0xff0F0C0C),
                                        fontSize: 16.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Founder, CEO'.tr,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xff272424),
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
              Divider(
                height: 58.h,
                thickness: 1.2.h,
                color: Color(0xff616161).withOpacity(0.1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

