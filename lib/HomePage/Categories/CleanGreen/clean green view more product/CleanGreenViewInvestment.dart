import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class CleanGreenViewInvestment extends StatefulWidget {
  int pageIndex;
  CleanGreenViewInvestment({super.key, required this.pageIndex});

  @override
  State<CleanGreenViewInvestment> createState() =>
      _CleanGreenViewInvestmentState();
}

class _CleanGreenViewInvestmentState extends State<CleanGreenViewInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List productDetails = [
    {
      "Company Name": [
        'Groundmount Solar supplying power to Bennett Coleman - Times of India',
        'Bounce EV Deal',
        'Bennett, Coleman & Company Ltd'
      ],
      "header": [
        'Focus Area',
        'Asset Value',
        'Asset Life',
        'Entry Load',
        'LockIn Period',
        'Minimum Investment',
        'Maximum Investment',
        'Expected Returns (IRR)',
        'Payouts',
      ],
      "content": [
        [
          'Solar Power Project',
          '5,80,00,000',
          '25 Years',
          '1%',
          '6 Months',
          '5,00,000',
          '75,00,000',
          '9.70%',
          'Monthly',
        ],
        [
          'Electric Mobility',
          '70,00,000',
          '4 Years',
          '1%',
          '12 Months',
          '50,000',
          '1,00,000',
          '11%',
          'Monthly',
        ],
        [
          'Solar Power Project',
          '5,50,00,000',
          '25 Years',
          '1%',
          '6 Months',
          '5,00,000',
          '75,00,000',
          '9.70%',
          'Monthly',
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
            text: 'Invest now'),
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
                    Get.back();
                    Get.back();
                  },
                  text: 'View more products')
            ],
          ),
        );
      },
    );
  }
}
