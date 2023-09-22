import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/InvegradeCorpbond/Invegradeproducts/invegradeproductstab.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/InvegradeCorpbond/invelearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/SovereignBonds/Sovereignproducts/sovereignproductTab.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/SovereignBonds/sovereignlearnmore.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class InvestmentGradeMain extends StatefulWidget {
  const InvestmentGradeMain({super.key});

  @override
  State<InvestmentGradeMain> createState() => _InvestmentGradeMainState();
}

class _InvestmentGradeMainState extends State<InvestmentGradeMain> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB23C7E),
      appBar: AppBar(
        backgroundColor: const Color(0xffB23C7E),
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
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      "Corporate Bonds-Investment Grade",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 25.sp,
                          color: const Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500),
                    ),
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
                        "International investment-grade corporate bonds are debt securities issued by foreign companies with a credit rating equal to or higher than BBB. These bonds offer investors a relatively lower risk compared to non-investment-grade bonds, providing stability and potential income. Investing in international investment-grade corporate bonds can diversify portfolios while maintaining a focus on stable and reliable companies.",
                        style: TextStyle(
                          color: const Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: const InvegradeLearnmore(),
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
                              text20White("~ 4%-10% (in USD Terms)")
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
                        openBuild: const Investmentgradeproductstab(),
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
