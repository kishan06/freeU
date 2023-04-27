import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/SideMenu/FAQ/1Fractional.dart';
import 'package:freeu/SideMenu/FAQ/2peerFAQ.dart';
import 'package:freeu/Utils/colors.dart';
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
                  "FAQ's".tr,
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
                  OpenContainerWrappers(
                    openBuild: const Fractional1(),
                    closeBuild: catTitle('Fractional Real Estate FAQ'.tr,
                        'assets/newImages/cat2.png', AppColors.blueL_006796),
                  ),
                  Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                  // sizedBoxHeight(15.h),
                  OpenContainerWrappers(
                      openBuild: const PeerFAQ(),
                      closeBuild: catTitle('Peer to Peer Lending FAQ'.tr,
                          'assets/newImages/cat3.png', AppColors.greenL_089435)

                      // Text('Peer to Peer Lending FAQ')
                      ),
                  Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                  OpenContainerWrappers(
                      openBuild: const InvoiceFAQ(),
                      closeBuild: catTitle(
                          'Invoice discounting FAQ'.tr,
                          'assets/newImages/cat4.png',
                          AppColors.purpleL_474E88)),
                  Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                  OpenContainerWrappers(
                      openBuild: const AlternativeFAQ(),
                      closeBuild: catTitle('Alternative Investment Fund FAQ'.tr,
                          'assets/newImages/cat1.png', AppColors.redL_BE0F02)),
                  Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                  OpenContainerWrappers(
                      openBuild: const CleanGreenFAQ(),
                      closeBuild: catTitle('Clean and Green Assets FAQ'.tr,
                          'assets/newImages/cat7.png', AppColors.redL_BE0F02)),
                  Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                  OpenContainerWrappers(
                      openBuild: const SecuritizedFAQ(),
                      closeBuild: catTitle(
                          'Securitized Debt Instrument FAQ'.tr,
                          'assets/newImages/cat9.png',
                          AppColors.greenL_089435)),
                  Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                  sizedBoxHeight(15.h),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget catTitle(String title, String image, Color color) {
    return SizedBox(
      width: double.infinity - 32.w,
      // height: 80.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 45.h,
            width: 45.h,
            color: color,
          ),
          sizedBoxWidth(20.w),
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
