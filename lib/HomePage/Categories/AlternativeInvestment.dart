import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AlternativeInsvestment extends StatefulWidget {
  const AlternativeInsvestment({super.key});

  @override
  State<AlternativeInsvestment> createState() => _AlternativeInsvestmentState();
}

class _AlternativeInsvestmentState extends State<AlternativeInsvestment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Stack(children: [
            SingleChildScrollView(
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
                            color: const Color(0xff000000),
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Alternative Investment Funds",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  sizedBoxHeight(20.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod(),
                  sizedBoxHeight(15.h),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: CustomNextButton(text: 'View Categories'),
            )
          ]),
        ),
      ),
    );
  }

  Widget faqAccod() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          'What is Free U?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: "Poppins",
          ),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterSwitch(
              onToggle: (value) {},
              switchBorder: Border.all(
                  strokeAlign: BorderSide.strokeAlignCenter,
                  style: BorderStyle.solid,
                  width: 0,
                  color: Colors.green),
              padding: 4.h,
              borderRadius: 20.r,
              width: 80.w,
              height: 30.h,
              toggleSize: 20.sp,
              toggleColor: const Color(0xff143C6D),
              activeColor: Colors.white,
              inactiveColor: const Color(0xffB1B1B1),
              value: true,
            ),
            Text(
              "Alternative Investment Fund (AIF) is a type of investment fund that is registered with the Securities and Exchange Board of India (SEBI). They are privately pooled investment vehicles generally set up by high-net-worth individuals, Indian or foreign, as per a defined investment policy",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
