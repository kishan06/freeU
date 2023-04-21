import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class LeaseViewInvestment extends StatefulWidget {
  int pageIndex;
  LeaseViewInvestment({super.key, required this.pageIndex});

  @override
  State<LeaseViewInvestment> createState() => _LeaseViewInvestmentState();
}

class _LeaseViewInvestmentState extends State<LeaseViewInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List productDetails = [
    {
      "Company Name": [
        'Evert Fleet',
        'Omega Seiki',
      ],
      "header": [
        'Asset Class',
        'Underlying Asset',
        'Sector',
        'Mobility Platform',
        'Total Deal Size',
        'Minimum Investment',
        'Tenure',
        'Payout Frequency',
        'Pre-tax Return',
      ],
      "content": [
        [
          'Asset Backed Leasing',
          'Cars',
          'Urban Mobility',
          'Uber',
          '5,04,00,000',
          '1,00,000',
          '36 M',
          'Monthly',
          '17.50%',
        ],
        [
          'Leasing',
          'Three Wheelers',
          'Urban Mobility',
          'Yatra',
          '2,10,00,000',
          '70,000',
          '36 M',
          'Monthly',
          '21.50%',
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
                      return Divider(
                        height: 25.h,
                        thickness: 1.h,
                        color: Colors.grey.shade400,
                      );
                    },
                    itemCount: productDetails[0]['header'].length),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'view ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: const Color(0xff1B8DC9)),
                  ),
                  Text(
                    productDetails[0]['Company Name'][widget.pageIndex],
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: const Color(0xff1B8DC9)),
                  )
                ],
              )
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