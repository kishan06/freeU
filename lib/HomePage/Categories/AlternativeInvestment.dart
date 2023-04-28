import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AlternativeInsvestment extends StatefulWidget {
  const AlternativeInsvestment({super.key});

  @override
  State<AlternativeInsvestment> createState() => _AlternativeInsvestmentState();
}

class _AlternativeInsvestmentState extends State<AlternativeInsvestment> {
  List AlternativeData = [
    {"question": "What are AIFs?".tr, "ans": "AIFAns1".tr},
    {
      "question": "Who can invest in AIF?".tr,
      "ans": "AIFAns2".tr,
    },
    {
      "question": "What is the minimum amount needed to invest in AIF?".tr,
      "ans": 'AIFAns3'.tr,
    },
    {
      "question": "In Which Formats Can an AIF Be Set Up?".tr,
      "ans": "AIFAns4".tr
    },
    {"question": "Size of the AIF scheme".tr, "ans": "AIFAns5".tr},
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
    {
      "question": "Alternative Investment Funds v/s Mutual Funds".tr,
      "ans": 'AIFAns6'.tr
    },
    {"question": "Difference between AIF and PMS".tr, "ans": "AIFAns7".tr},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),

      // AppBar(
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories'.tr,
          ontap: () {
            Get.toNamed("/altenativecategories");
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 10.h,
                // ),
                Flexible(
                  child: Text(
                    "Alternative Investment Funds(AIF)".tr,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      if (index == 5) {
                        return faqAccod4();
                      } else if (index == 6) {
                        return faqAccod5();
                      } else {
                        return faqAccod1(AlternativeData[index]["question"],
                            AlternativeData[index]["ans"]);
                      }
                    },
                    separatorBuilder: (context, index) {
                      return sizedBoxHeight(20.h);
                    },
                    itemCount: AlternativeData.length)
                //     SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       sizedBoxHeight(20.h),
                //       faqAccod(expandAccod: true),
                //       sizedBoxHeight(15.h),
                //       faqAccod1(),
                //       sizedBoxHeight(15.h),
                //       faqAccod2(),
                //       sizedBoxHeight(15.h),
                //       faqAccod3(),
                //       sizedBoxHeight(15.h),
                //       faqAccod4(),
                //       sizedBoxHeight(15.h),
                //       faqAccod5(),
                //       sizedBoxHeight(15.h),
                //       faqAccod6(),
                //       sizedBoxHeight(15.h),
                //       faqAccod7(),
                //       sizedBoxHeight(15.h),
                //     ],
                //   ),
                // )
                ),
          ],
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
          'What are AIFs?'.tr,
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
              "AIFAns1".tr,
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

  Widget faqAccod1(String question, String ans) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: false,
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
          question,
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
              ans,
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

  Widget faqAccod4() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: false,
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
          'What are the benefits of investing through an AIF?'.tr,
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
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "> Regulations are in place:".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "AIFAns8".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: '\n' "Higher Returns:".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "AIFAns9".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: '\n' "Low Volatility:".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "AIFAns10".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: '\n' "> Diversification:".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "AIFAns11".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: '\n' "> Better Negotiation with AIF:".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "AIFAns12".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: '\n' "> Professional Guidance:".tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: 'AIFAns13'.tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget faqAccod5() {
    List bulletPoints = [
      "AIFAns14".tr,
      "AIFAns15".tr,
      "AIFAns16".tr,
      "AIFAns17".tr,
    ];
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: false,
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
          'Downsides of AIF Investment'.tr,
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
              "",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 16.sp,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(bulletPoints[index]);
                }),
            //sizedBoxHeight(5.h),
            // Text.rich(TextSpan(children: [
            //   TextSpan(
            //     text: "Structure of AIF",
            //     style: TextStyle(
            //       fontSize: 18.sp,
            //       color: Colors.black,
            //       fontFamily: "Poppins",
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            //   TextSpan(
            //     text: "(Recreate below diagram for website)",
            //     style: TextStyle(
            //       fontSize: 18.sp,
            //       color: Colors.red,
            //       fontFamily: "Poppins",
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ])),
            // Image.asset(
            //   "assets/newImages/alternative.png",
            //   height: 300.h,
            // ),
            // sizedBoxHeight(5.h),
          ],
        ),
      ),
    );
  }

  Widget bulletText(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "> ",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 18.sp,
            ),
          ),
        ),
      ],
    );
  }
}
