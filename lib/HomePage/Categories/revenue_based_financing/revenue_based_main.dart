import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalrealestate.dart';
import 'package:freeu/HomePage/Categories/PeerLendingAssets/PeerLearnMore.dart';
import 'package:freeu/HomePage/Categories/revenue_based_financing/revenue_based_learn_more.dart';
import 'package:freeu/HomePage/Categories/revenue_based_financing/revenueproperties.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import '../Alternative/Fractionalproperties.dart';

class RevenueBasedMain extends StatefulWidget {
  const RevenueBasedMain({super.key});

  @override
  State<RevenueBasedMain> createState() => _RevenueBasedMainState();
}

class _RevenueBasedMainState extends State<RevenueBasedMain> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return
        // SafeArea(
        //child:
        Scaffold(
      backgroundColor: AppColors.brownL_973926,
      // Color(0xFF089435),
      appBar:
          // CustomSignupAppBar(
          //   titleTxt: "",
          //   bottomtext: false,
          // ),
          AppBar(
        backgroundColor: AppColors.brownL_973926,
        // Color(0xFF089435),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 26,
          color: Color(0XFFFFFFFF),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Revenue-based Financing",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Revenue-based financing is an investment done to help small and rising startups grow their business with the invested capital, in return for a fixed percentage of their ongoing gross revenues, measured mainly as monthly revenues.",
                        // "Peer-to-Peer lending, or P2P lending, is a new, innovative platform for alternate financing that allows individuals to directly acquire loans from other individuals, without going through banks, or other financial institutions.",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                          //fontFamily: 'Poppins'
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      OpenContainerWrappers(
                        // ope
                        openBuild: RevenueBasedLearnMore(),

                        // openBuild: PeerLearnMore(),

                        // onTap: () {
                        //   Get.toNamed("/fractionalrealestate");
                        // },
                        closeBuild: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Learn more",
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/privatecategories.png",
                        width: 70.w,
                        height: 70.w,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expected Return (IRR)",
                              style: TextStyle(
                                color: const Color(0XFFFBFBFB),
                                fontSize: 16.sp,
                                fontFamily: "Poppins",
                              )),
                          // text20White(widget.irr)
                          text20White("~ 12%-16% p.a.")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/privateequitytime.png",
                        width: 70.w,
                        height: 70.w,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Suggested Investment Horizon",
                                style: TextStyle(
                                  color: Color(0XFFFBFBFB),
                                  fontSize: 16.sp,
                                  fontFamily: "Poppins",
                                )),
                            // text20White(widget.sih)
                            text20White("~ 1-4 years")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/funding.png",
                        width: 70.w,
                        height: 70.w,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Minimum Investment",
                              style: TextStyle(
                                color: Color(0XFFFBFBFB),
                                fontSize: 16.sp,
                                fontFamily: "Poppins",
                              )),
                          text20White("5,00,000")
                        ],
                      ),
                    ],
                  ),
                    SizedBox(
                        height: 40.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: const RevenueProperties(),
                        closeBuild: Container(
                          decoration: BoxDecoration(
                              color: const Color(0XFFFBFBFB),
                              borderRadius: BorderRadius.circular(10.r)),
                          width: double.infinity,
                          height: 50.h,
                          child: Center(
                            child: Text(
                              "View more product",
                              style: TextStyle(
                                color: Color(0XFF000000),
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      sizedBoxHeight(38.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // );
  }
}
