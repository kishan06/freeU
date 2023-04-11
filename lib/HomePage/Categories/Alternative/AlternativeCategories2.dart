import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AlternativeCategories2 extends StatefulWidget {
  const AlternativeCategories2({super.key});

  @override
  State<AlternativeCategories2> createState() => _AlternativeCategories2State();
}

class _AlternativeCategories2State extends State<AlternativeCategories2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,

      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/VerticalSlider");

            // Get.toNamed("/privateequity");
          },
        ),
      ),


      ),
      //  AppBar(0xFFFFFFFF
      //   backgroundColor: Color(0xFFFFFFFF),
      //   elevation: 0,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //     ),
      //     iconSize: 26,
      //     color: Colors.black,
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // GestureDetector(
                  //     onTap: () {
                  //       Get.back();
                  //     },
                  //     child: Icon(
                  //       Icons.arrow_back,
                  //       size: 24.sp,
                  //       color: const Color(0xff000000),
                  //     )),
                  // SizedBox(
                  //   height: 10.h,
                  // ),
                  Text(
                    "Alternative Investment Funds Category II",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              sizedBoxHeight(20.h),
              faqAccod(expandAccod: true),
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
      ),
    );
  }

  Widget faqAccod({bool? expandAccod}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: expandAccod ?? false,
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
          'Alternative Investment Funds Category II',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: "Poppins",
          ),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.brown,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "As per SEBI Regulations Category II AIF are AIFs which does not fall in Category I and III and which do not undertake leverage or borrowing other than to meet day-to-day operational requirements. The government or the regulator does not offer any concessions or incentives for these funds. Private equity funds or debt funds are examples of Category II AIFs. This category comprises 80% AIFs and is the most popular among AIFs.",
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
