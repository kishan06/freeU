import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/HighyieldCorporatebonds/highyieldlearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/SovereignBonds/Sovereignproducts/sovereignproductTab.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/SovereignBonds/sovereignlearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/bondsAssets/HighyieldCorporatebonds/Highyieldsproducts/highyieldproductstab.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class Highyieldbondsmain extends StatefulWidget {
  const Highyieldbondsmain({super.key});

  @override
  State<Highyieldbondsmain> createState() => _HighyieldbondsmainState();
}

class _HighyieldbondsmainState extends State<Highyieldbondsmain> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff008A5B),
      appBar: AppBar(
        backgroundColor: const Color(0xff008A5B),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          iconSize: 26,
          color: const Color(0XFFFFFFFF),
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
                    "Corporate Bonds - High Yield",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        color: const Color(0XFFFFFFFF),
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
                        "International high-yield corporate bonds are debt securities issued by foreign companies with lower credit ratings. These bonds offer higher yields to compensate for the increased risk associated with investing in companies with a non-investment grade rating. While they carry greater risk, they can potentially provide higher returns, making them attractive to risk-taking investors.",
                        style: TextStyle(
                          color: const Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: const HighyieldBondsLearnmore(),
                        closeBuild: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Learn more",
                              style: TextStyle(
                                  color: const Color(0XFFFFFFFF),
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
                              Text("Expected Return",
                                  style: TextStyle(
                                    color: const Color(0XFFFBFBFB),
                                    fontSize: 16.sp,
                                    fontFamily: "Poppins",
                                  )),
                              text20White("~ 6%-14% (in USD Terms)")
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
                                Text("Investment Horizon",
                                    style: TextStyle(
                                      color: const Color(0XFFFBFBFB),
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                    )),
                                text20White("Less than 1 Year to 15 Years")
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
                                    color: const Color(0XFFFBFBFB),
                                    fontSize: 16.sp,
                                    fontFamily: "Poppins",
                                  )),
                              text20White("\$10,000 (₹8,25,000)")
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: const Highyieldproductstab(),
                        closeBuild: Container(
                          decoration: BoxDecoration(
                              color: const Color(0XFFFBFBFB),
                              borderRadius: BorderRadius.circular(10.r)),
                          width: double.infinity,
                          height: 50.h,
                          child: Center(
                            child: Text(
                              "View Assets",
                              style: TextStyle(
                                color: const Color(0XFF000000),
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
