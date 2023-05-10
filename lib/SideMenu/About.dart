// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
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
                'What is FreeU ?',
                style: TextStyle(
                    color: Color(0xff0F0C0C),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              sizedBoxHeight(17.h),
              Text(
                "FreeU is an online platform that has handpicked the best Alternate Investment Assets in India, offering the best returns for our investors. It is the only platform, that doesn't tell you what to do, but lets you decide and shop from the best. Read, research, and find out everything you need to know about Alternate Asset Investments before you invest!"
                '\nOur investment experts and wealth counselors have carefully selected and analyzed a range of high-return alternate investment assets, which are available for investors to choose from on the FreeU online platform. These opportunities have been handpicked based on extensive research and a proven track record of performance, providing investors with the assurance that they are investing in some of the best alternative investment options available in India.',
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
                'Why FreeU ?',
                style: TextStyle(
                    color: Color(0xff0F0C0C),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              sizedBoxHeight(17.h),
              Text(
                "Though alternative assets deliver higher returns and are not linked to the volatile market, their risks are higher. Therefore, it is imperative that as an investor you know exactly what alternate assets are, what is expected from your investment, and whether it at all works for you."
                '\nFreeU is the one-stop shop for Alternate Investments. We want you to learn, compare, and choose before you invest. Luckily, we have curated the best of the best’s options for you.',
                style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 20.sp,
                    fontFamily: 'Poppins'),
              ),
              // sizedBoxHeight(25.h),
              // Row(
              //   children: [
              //     CircleAvatar(
              //       radius: 45.r,
              //       backgroundColor: Color(0xffA0EF87),
              //       child: Image.asset(
              //         'assets/images/13536.png',
              //         width: 42.w,
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15.w,
              //     ),
              //     Expanded(
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Experience',
              //             style: TextStyle(
              //                 color: Color(0xff0F0C0C),
              //                 fontSize: 22.sp,
              //                 fontWeight: FontWeight.w500,
              //                 fontFamily: 'Poppins'),
              //           ),
              //           Text(
              //             'Our great team of more than 1400 software experts.',
              //             style: TextStyle(
              //                 color: Color(0xff272424),
              //                 fontSize: 18.sp,
              //                 fontFamily: 'Poppins'),
              //           ),
              //         ],
              //       ),
              //     )
              //   ],
              // ),
              // Divider(
              //   height: 58.h,
              //   thickness: 1.2.h,
              //   color: Color(0xff616161).withOpacity(0.1),
              // ),
              // Row(
              //   children: [
              //     CircleAvatar(
              //       radius: 45.r,
              //       backgroundColor: Color(0xff4981C9),
              //       child: Image.asset(
              //         'assets/images/13540.png',
              //         width: 45.w,
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15.w,
              //     ),
              //     Expanded(
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Quick Support',
              //             style: TextStyle(
              //                 color: Color(0xff0F0C0C),
              //                 fontSize: 22.sp,
              //                 fontWeight: FontWeight.w500,
              //                 fontFamily: 'Poppins'),
              //           ),
              //           Text(
              //             'We’ll help you test bold new ideas while sharing your.',
              //             style: TextStyle(
              //                 color: Color(0xff272424),
              //                 fontSize: 18.sp,
              //                 fontFamily: 'Poppins'),
              //           ),
              //         ],
              //       ),
              //     )
              //   ],
              // ),

              sizedBoxHeight(48.h),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Meet Our Founder',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xff0F0C0C),
                      fontSize: 25.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
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
                  Text(
                    'Abhishek Sipani',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xff0F0C0C),
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Expanded(
                  //   flex: 3,
                  //   child: Image.asset(
                  //     'assets/images/team01.png',
                  //   ),
                  // ),
                  Flexible(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                    'He has 18+ years of experience in banking and financial markets. Before starting his entrepreneurial journey, he had worked in the corporate world with HSBC Bank, Kotak Securities, Religare Macquarie Private Wealth and others. He has done MBA and CFP and has deep experience in the financial industry.',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xff0F0C0C))),
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
