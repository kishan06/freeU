import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalproperties.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalrealestate.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

import 'CleanGreenViewMore.dart';
import 'clean green view more product/CleanGreenViewMoreProduct.dart';

class CleanGreenMain extends StatefulWidget {
  const CleanGreenMain({super.key});

  @override
  State<CleanGreenMain> createState() => _CleanGreenMainState();
}

class _CleanGreenMainState extends State<CleanGreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.redL_BE0F02,
      appBar: AppBar(
        backgroundColor: AppColors.redL_BE0F02,
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
                    "Clean and Green Assets",
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
                        "Clean and Green Asset investing is the method of investing in environmentally conscious, sustainable, and socially conscious companies.",
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
                        openBuild: const CleanGreenViewMore(),
                        // onTap: () {
                        //   Get.toNamed("/fractionalrealestate");
                        // },
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
                              text20White("~ 9%-12% p.a.")
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
                                text20White("~ 6-36 months")
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Minimum Investment:",
                                    style: TextStyle(
                                      color: Color(0XFFFBFBFB),
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                    )),
                                text20White("50,000")
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      OpenContainerWrappers(
                        openBuild: const CleanGreenViewMoreProduct(),
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
