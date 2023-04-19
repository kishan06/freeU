import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/SideMenu/FAQ/1Fractional.dart';
import 'package:freeu/SideMenu/FAQ/2peerFAQ.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

import '3InvoiceFAQ.dart';
import '4AlternativeFAQ.dart';
import '5CleanGreenFAQ.dart';
import '6SecuritizedFAQ.dart';

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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  "FAQ's",
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
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(20.h),
                  const OpenContainerWrappers(
                    openBuild: Fractional1(),
                    closeBuild: Text('Fractional Real Estate FAQ'),
                  ),
                  sizedBoxHeight(15.h),
                  const OpenContainerWrappers(
                      openBuild: PeerFAQ(),
                      closeBuild: Text('Peer to Peer Lending FAQ')),
                  sizedBoxHeight(15.h),
                  const OpenContainerWrappers(
                    openBuild: InvoiceFAQ(),
                    closeBuild: Text('Invoice discounting FAQ'),
                  ),
                  sizedBoxHeight(15.h),
                  const OpenContainerWrappers(
                    openBuild: AlternativeFAQ(),
                    closeBuild: Text('Alternative Investment Fund FAQ'),
                  ),
                  sizedBoxHeight(15.h),
                  const OpenContainerWrappers(
                    openBuild: CleanGreenFAQ(),
                    closeBuild: Text('Clean and Green Assets FAQ'),
                  ),
                  sizedBoxHeight(15.h),
                  const OpenContainerWrappers(
                    openBuild: SecuritizedFAQ(),
                    closeBuild: Text('Securitized Debt Instrument FAQ'),
                  ),
                  sizedBoxHeight(15.h),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
