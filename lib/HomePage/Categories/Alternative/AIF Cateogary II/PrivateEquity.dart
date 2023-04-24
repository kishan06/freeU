import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class PrvateEquity extends StatefulWidget {
  String title;
  String des;
  String irr;
  String sih;
  Color color;
  String ontapNamed;
  String viewMoreProdcut;
  String? minInvestment = '1 Crore';
  bool? swipeup;
  PrvateEquity(
      {super.key,
      required this.title,
      required this.des,
      required this.irr,
      required this.sih,
      required this.color,
      required this.ontapNamed,
      required this.viewMoreProdcut,
      this.minInvestment,
      this.swipeup});

  @override
  State<PrvateEquity> createState() => _PrvateEquityState();
}

class _PrvateEquityState extends State<PrvateEquity> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      appBar: AppBar(
          backgroundColor: widget.color,
          elevation: 0,
          titleSpacing: 0,
          leading: const SizedBox()),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      widget.title,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 140.h,
                    child: SingleChildScrollView(
                      child: Text(
                        widget.des,
                        // "Private Equity Funds is a collective investment scheme used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership.",
                        style: TextStyle(
                          color: const Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                          //fontFamily: 'Poppins'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(widget.ontapNamed);
                    },
                    child: Row(
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

                  // Spacer(),
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
                          text20White(widget.irr)
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
                            Text("Suggested Investment Horizon:",
                                style: TextStyle(
                                  color: Color(0XFFFBFBFB),
                                  fontSize: 16.sp,
                                  fontFamily: "Poppins",
                                )),
                            text20White(widget.sih)
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
                          Text("Minimum Investment:",
                              style: TextStyle(
                                color: const Color(0XFFFBFBFB),
                                fontSize: 16.sp,
                                fontFamily: "Poppins",
                              )),
                          text20White(widget.minInvestment == null
                              ? '1 Crore'
                              : widget.minInvestment!)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        //shadowColor: Color.fromARGB(255, 220, 220, 226),

                        backgroundColor: const Color(0XFFFBFBFB),

                        //  color: Color(0xFFFFB600),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed(widget.viewMoreProdcut);
                      },
                      child: Text(
                        "View more product",
                        style: TextStyle(
                          color: const Color(0XFF000000),
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  sizedBoxHeight(10.h),
                  widget.swipeup == false
                      ? Lottie.asset(
                          'assets/logos/swipeup.json',
                        )
                      : const SizedBox(),
                  sizedBoxHeight(38.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
