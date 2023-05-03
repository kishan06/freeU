import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class AngelFundViewDetails extends StatefulWidget {
  int pageIndex;
  AngelFundViewDetails({super.key, required this.pageIndex});

  @override
  State<AngelFundViewDetails> createState() => _AngelFundViewDetailsState();
}

class _AngelFundViewDetailsState extends State<AngelFundViewDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List productDetails = [
    {
      "Company Name": ['Piper Serica Angel Fund'.tr],
      "header": [
        'Registration No.'.tr,
        'Fund Category (I/II/III)'.tr,
        'Fund Structure (Open/Closed)'.tr,
        'Fund Strategy'.tr,
        'Fund Domicile'.tr,
        'Fund Manager Name'.tr,
        'Website of the fund'.tr,
        'Fund Manager Experience'.tr,
        'Sponsor'.tr,
        'Manager'.tr,
        'Trustee'.tr,
        'Auditor'.tr,
        'Valuer / Tax Advisor'.tr,
        'Credit Rating (if any)'.tr,
        'Open Date'.tr,
        '1st Close Date'.tr,
        'Final Close Date'.tr,
        'Tenure from Final Close'.tr,
        'Commitment Period'.tr,
        'Native Currency'.tr,
        'Target Corpus'.tr,
        'Investment Manager Contribution'.tr,
        'Minimum Capital Commitment'.tr,
        'Initial Drawdown'.tr,
        'Accepting Overseas investment?'.tr,
        'Target IRR (%)'.tr,
        '"Management Fees and Carry  - Set Up Fee  - Management Fee  - Performance Fee"'.tr,
        'Hurdle Rate'.tr,
        'Other Expenses'.tr,
        'Focused Sectors (Industries in which they are investing)'.tr,
      ],
      "content": [
        [
          'IN/AIF1/21-22/1028',
          'I',
          'Closed'.tr,
          '"1. Invest only in start ups that have exponential growth business model 2.Business should not require constant infusion of capital to support growth 3.Tech has to be the core driver of business. Invest in bits and not atoms 4. Invest in founders first. Business models pivot  5. Invest along with other active investors who actively provide mentorship and guidance to young founders  6. Stay invested for as long as possible in successful start ups. Water the roses and cut the weeds 7.Reduce the impact of high mortality by building a portfolio of 30 to 40 companies"'.tr,
          'India'.tr,
          'N/A',
          'https://www.piperserica.com/	',
          'https://www.piperserica.com/	',
          'Piper Serica'.tr,
          'Piper Serica Advisors'.tr,
          'Piper Serica Advisors'.tr,
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          '########',
          'N/A',
          '10 Years'.tr,
          'Rupees'.tr,
          '100 Cr',
          'Minimum 2.5% or INR 50 lakhs whichever is lower'.tr,
          '"Minimum commitment of Rs. 25 lakh to be invested over 3 years."'.tr,
          '40%',
          'N/A',
          'N/A',
          '"Management Fee - 2% upto 1 Cr of aggregate capital commitment, otherwise 1.5% Performance Fee - 20% for Unit A & B holders (plus taxes & levies as applicable)"'.tr,
          'N/A',
          'N/A',
          'Tech based Start-Up'.tr,
        ],
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                Get.toNamed("/login");
              }
            },
            text: 'Invest now'.tr),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // sizedBoxHeight(10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxWidth(5.w),
                  SvgPicture.asset(
                    "assets/images/property.svg",
                    width: 80.w,
                    height: 54.h,
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 132.w,
                    height: 75.h,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productDetails[0]['Company Name']
                                  [widget.pageIndex],
                              style: TextStyle(
                                  fontSize: 22.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
              sizedBoxHeight(24.h),
              SizedBox(
                height: MediaQuery.of(context).size.height - 265.h,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productDetails[0]['header'][index],
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
                            productDetails[0]['content'][widget.pageIndex]
                                [index],
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff272424)),
                          ),
                          sizedBoxHeight(28.h)
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return sizedBoxHeight(0.h);
                    },
                    itemCount: productDetails[0]['header'].length),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Flexible(
              //       child: Text(
              //         "view " +
              //             productDetails[0]['Company Name'][widget.pageIndex],
              //         style: TextStyle(
              //             fontWeight: FontWeight.w500,
              //             fontSize: 15.sp,
              //             color: const Color(0xff1B8DC9)),
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
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
                "Thank You For Showing Your Interest".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff0F0C0C),
                    fontSize: 30.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              Text(
                "A FreeU Advisory Team will get back to you soon.".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff272424),
                    fontSize: 20.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              CustomNextButton(
                  ontap: () {
                    Get.back();
                    Get.back();
                  },
                  text: 'View more products'.tr)
            ],
          ),
        );
      },
    );
  }
}
