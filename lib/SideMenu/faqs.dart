// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 24.sp,
                        color: Color(0xff000000),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "FAQ's",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              faqAccod(), sizedBoxHeight(15.h),
              faqAccod(), sizedBoxHeight(15.h),
              faqAccod(), sizedBoxHeight(15.h),
              faqAccod(), sizedBoxHeight(15.h),
              faqAccod(), sizedBoxHeight(15.h),
              faqAccod(), sizedBoxHeight(15.h),
              faqAccod(), sizedBoxHeight(15.h),
              faqAccod(), sizedBoxHeight(15.h),
              // Accordion(
              //   paddingListBottom: 0,
              //   paddingListTop: 0,
              //   paddingListHorizontal: 0,
              //   disableScrolling: true,
              //   maxOpenSections: 2,
              //   scaleWhenAnimating: true,
              //   openAndCloseAnimation: true,
              //   // headerPadding:
              //   //     const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              //   sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              //   sectionClosingHapticFeedback: SectionHapticFeedback.light,
              //   children: [
              //     listOfAccod(),
              //     listOfAccod(),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // AccordionSection listOfAccod() {
  //   return AccordionSection(
  //     scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
  //     isOpen: false,
  //     headerBackgroundColor: Color.fromARGB(3, 255, 255, 255),
  //     headerBackgroundColorOpened: Color(0xff143C6D),
  //     contentBackgroundColor: Color(0xff143C6D),
  //     contentBorderColor: Color(0xff143C6D),
  //     contentBorderRadius: 10.r,
  //     headerBorderRadius: 10.r,
  //     rightIcon: Icon(Icons.add_circle_outline_rounded, size: 18.sp),
  //     header: Text(
  //       'What is Free U?',
  //       style: TextStyle(
  //           fontFamily: "Poppins", fontSize: 18.sp, color: Colors.black),
  //     ),
  //     content: Column(
  //       children: [
  //         Text(
  //           "Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.",
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontFamily: "Poppins",
  //             fontSize: 16.sp,
  //           ),
  //         ),
  //       ],
  //     ),
  //     contentHorizontalPadding: 10.w,
  //   );
  // }

  Widget faqAccod() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff143C6D), borderRadius: BorderRadius.circular(10.r)),
      child: GFAccordion(
        titleBorderRadius: BorderRadius.circular(10.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
        ),
        margin: EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: const Color(0xff143C6D),
        contentBackgroundColor: const Color(0xff143C6D),
        collapsedIcon: Icon(
          Icons.add_circle_outline_rounded,
          size: 18.sp,
        ),
        expandedIcon: Icon(
          Icons.remove_circle_outline_rounded,
          size: 18.sp,
          color: Colors.white,
        ),
        titleChild: Text(
          'What is Free U?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: "Poppins",
          ),
        ),
        contentChild: Text(
          "Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
