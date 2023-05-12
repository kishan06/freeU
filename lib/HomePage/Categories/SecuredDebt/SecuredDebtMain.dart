import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/SecuredDebt/Securitizedproperties.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

import 'SecuritizedViewMore.dart';

class SecureDebtMain extends StatefulWidget {
  const SecureDebtMain({super.key});

  @override
  State<SecureDebtMain> createState() => _SecureDebtMainState();
}

class _SecureDebtMainState extends State<SecureDebtMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenL_089435,
      appBar: AppBar(
        backgroundColor: AppColors.greenL_089435,
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
                    "Securitized Debt Instruments",
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
                        "Securitization involves the creation of a pool of assets from illiquid financial assets which are repackaged or bundled into marketable securities. Securitized Debt Instruments are financial securities such as bonds/certificates that are created by securitizing individual loans (debt).",
                        style: TextStyle(
                          color: const Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                          //fontFamily: 'Poppins'
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: const SecuritizedViewMore(),
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
                        height: 29.h,
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
                              Text("Expected Return:",
                                  style: TextStyle(
                                    color: const Color(0XFFFBFBFB),
                                    fontSize: 16.sp,
                                    fontFamily: "Poppins",
                                  )),
                              // text20White(widget.irr)
                              text20White("~ 12-16%")
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
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
                                Text("Investment Horizon:",
                                    style: TextStyle(
                                      color: Color(0XFFFBFBFB),
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                    )),
                                // text20White(widget.sih)
                                text20White("More than 3 Years")
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
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
                              Text("Minimum Investment:",
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
                        openBuild: const SecuritizedProperties(),
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
