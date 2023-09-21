import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/SideMenu/FAQ/1Fractional.dart';
import 'package:freeu/SideMenu/FAQ/2peerFAQ.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/ViewModel/FAQ/FAQ.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import '10VentureDebtFAQ.dart';
import '3InvoiceFAQ.dart';
import '4AlternativeFAQ.dart';
import '5CleanGreenFAQ.dart';
import '6SecuritizedFAQ.dart';
import '7RevenueFAQ.dart';
import '8HighYeldFAQ.dart';
import '9LeasingFAQ.dart';

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
      body: FutureBuilder(
        future: FAQ().GeneralFaqApi(),
        builder: (ctx, snapshot) {
          if (snapshot.data == null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Center(child: CircularProgressIndicator())],
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  '${snapshot.error} occured',
                  style: TextStyle(fontSize: 18.spMin),
                ),
              );
            }
          }
          return _buildBody();
        },
      ),
    );
  }

  Widget _buildBody() {
    return SafeArea(
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
                OpenContainerWrappers(
                  openBuild: const Fractional1(),
                  closeBuild: catTitle('Fractional Real Estate',
                      'assets/newImages/cat2.png', AppColors.blueL_006796),
                ),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                // sizedBoxHeight(15.h),
                OpenContainerWrappers(
                    openBuild: const PeerFAQ(),
                    closeBuild: catTitle('Peer to Peer Lending',
                        'assets/newImages/cat3.png', AppColors.greenL_089435)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                OpenContainerWrappers(
                    openBuild: const InvoiceFAQ(),
                    closeBuild: catTitle('Invoice discounting',
                        'assets/newImages/cat4.png', AppColors.purpleL_474E88)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                OpenContainerWrappers(
                    openBuild: const AlternativeFAQ(),
                    closeBuild: catTitle('Alternative Investment Fund',
                        'assets/newImages/cat1.png', AppColors.redL_BE0F02)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                OpenContainerWrappers(
                    openBuild: const CleanGreenFAQ(),
                    closeBuild: catTitle('Clean and Green Assets',
                        'assets/newImages/cat7.png', AppColors.redL_BE0F02)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

                OpenContainerWrappers(
                    openBuild: const SecuritizedFAQ(),
                    closeBuild: catTitle('Securitized Debt Instrument',
                        'assets/newImages/cat9.png', AppColors.greenL_089435)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                OpenContainerWrappers(
                    openBuild: const RevenueFAQ(),
                    closeBuild: catTitle('Revenue Based Financing',
                        'assets/newImages/cat5.png', AppColors.brownL_973926)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                OpenContainerWrappers(
                    openBuild: const HighYeldFAQ(),
                    closeBuild: catTitle(
                        'High Yield Finance',
                        'assets/newImages/cat10.png',
                        AppColors.purpleL_474E88)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                OpenContainerWrappers(
                    openBuild: const LeasingFAQ(),
                    closeBuild: catTitle('Asset backed leasing',
                        'assets/newImages/cat6.png', AppColors.pinkL_E6088B)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                OpenContainerWrappers(
                    openBuild: const VentureDebtFAQ(),
                    closeBuild: catTitle('Venture Debt',
                        'assets/newImages/cat8.png', AppColors.blueL_006796)),
                Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
                sizedBoxHeight(15.h),
              ],
            ),
          ),
        ),
      ],
    ));
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
