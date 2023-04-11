import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class FullyFundedBank extends StatefulWidget {
  const FullyFundedBank({super.key});

  @override
  State<FullyFundedBank> createState() => _FullyFundedBankState();
}

class _FullyFundedBankState extends State<FullyFundedBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      // AppBar(
      //   backgroundColor: const Color(0xFFFFFFFF),
      //   elevation: 0,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back,
      //     ),
      //     iconSize: 26.h,
      //     color: Colors.black,
      //   ),
      // ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(10.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBoxWidth(5.w),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 2.w,
                              blurRadius: 2.h,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "assets/images/alternative (6).png",
                          width: 80.w,
                          height: 54.h,
                        ),
                      ),
                      SizedBox(
                        width: 20.h,
                      ),
                      Flexible(
                        child: Text(
                          "HDFC AMC Select AIF FOF - 1",
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  sizedBoxHeight(24.h),
                  Text(
                    'Fund fundamentals',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: const Color(0xff3A4856),
                    ),
                  ),
                  Divider(
                    height: 28.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fund Category',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff616161)),
                            ),
                            sizedBoxHeight(10.h),
                            Text(
                              'Category II AIF',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: const Color(0xff0F0C0C)),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ISIN code',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff616161)),
                          ),
                          sizedBoxHeight(10.h),
                          Text(
                            'N/A',
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff0F0C0C)),
                          )
                        ],
                      ),
                    ],
                  ),
                  sizedBoxHeight(20.h),
                  Text(
                    'Fund Structure',
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff616161)),
                  ),
                  sizedBoxHeight(10.h),
                  Text(
                    'N/A',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                  ),
                  sizedBoxHeight(20.h),
                  Text(
                    'Fund Strategy',
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff616161)),
                  ),
                  sizedBoxHeight(10.h),
                  Text(
                    'Invest in 15 VC/PE funds. Up to 50% in venture capital funds and balance in private equity funds Maximum exposure to co-investment opportunities will be capped at 30% of the corpus.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff0F0C0C)),
                  ),
                  Divider(
                    height: 28.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  Text(
                    'Fund details',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: const Color(0xff3A4856),
                    ),
                  ),
                  sizedBoxHeight(25.h),
                  Text(
                    'Fund Manager name',
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff616161)),
                  ),
                  sizedBoxHeight(10.h),
                  Text(
                    'HDFC AMC',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(25.h),
                  Text(
                    'Fund Manager Experience',
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff616161)),
                  ),
                  sizedBoxHeight(10.h),
                  Text(
                    'N/A',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(25.h),
                  Text(
                    'Website of the fund',
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff616161)),
                  ),
                  sizedBoxHeight(10.h),
                  Text(
                    'N/A',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Fund managements',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: const Color(0xff3A4856),
                    ),
                  ),
                  Divider(
                    height: 28.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Sponsor',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff616161)),
                            ),
                          ),
                          Text(
                            'Manager',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff616161)),
                          ),
                        ],
                      ),
                      sizedBoxHeight(10.h),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                      ),
                      sizedBoxHeight(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Trustee',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff616161)),
                            ),
                          ),
                          Text(
                            'Auditor',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff616161)),
                          ),
                        ],
                      ),
                      sizedBoxHeight(10.h),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                      ),
                      sizedBoxHeight(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Value/tax advisor',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff616161)),
                            ),
                          ),
                          Text(
                            'Credit ratings',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff616161)),
                          ),
                        ],
                      ),
                      sizedBoxHeight(10.h),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                      ),
                    ],
                  ),
                  sizedBoxHeight(20.h),
                  Text(
                    'Fund Dates',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: const Color(0xff3A4856),
                    ),
                  ),
                  Divider(
                    height: 28.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Open Date',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff616161)),
                            ),
                          ),
                          Text(
                            '1st Close Date',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff616161)),
                          ),
                        ],
                      ),
                      sizedBoxHeight(10.h),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                      ),
                      sizedBoxHeight(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Final Close Date',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff616161)),
                            ),
                          ),
                        ],
                      ),
                      sizedBoxHeight(10.h),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Tenure from Final Close',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '11 + 1 + 1 Years',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Commitment Period',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '5 Years',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Native Currency',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '₹ Rupees',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Target Corpus',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '1,500 crore + green shoe of up to 1,500 crore',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Investment Manager Contribution',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '10 % of capital commitment raised',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Minimum Capital Commitment',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '1 crore',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Initial Drawdown',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Accepting Overseas investment?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Target IRR (%)',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Hurdle Rate',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'XIRR of IC (pre-tax) on Capital Contributions received',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Other Expenses',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Focused Sectors (Industries in which they are investing)',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(28.h),
                      Text(
                        'Regions Covered (Geographical Locations covered by the fund)',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: const Color(0xff3A4856),
                        ),
                      ),
                      Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff272424)),
                      ),
                      sizedBoxHeight(45.h),
                      Text(
                        'View HDFC AMC Select AIF FOF - 1 document',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            color: const Color(0xff1B8DC9)),
                      ),
                    ],
                  ),
                  sizedBoxHeight(65.h)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: CustomNextButton(
                    ontap: () {
                      investNow();
                    },
                    text: 'Invest now'),
              ),
            )
          ],
        ),
      )),
    );
  }

  void investNow() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/images/thankyouinvestment.svg"),
              Text(
                "Thank You For Showing Your Interest",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff0F0C0C),
                    fontSize: 30.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              Text(
                "A FreeU Advisory Team will get back to you soon.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff272424),
                    fontSize: 20.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              CustomNextButton(
                  ontap: () {
                    Get.toNamed("/fractionalpropertiespage");
                  },
                  text: 'View more products')
            ],
          ),
        );
      },
    );
  }
}
