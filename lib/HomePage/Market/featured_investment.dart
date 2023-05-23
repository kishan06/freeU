import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

import 'offer_pricing.dart';

class FeaturedInvestment extends StatefulWidget {
  final int pageIndex;
  FeaturedInvestment({super.key, required this.pageIndex});

  @override
  State<FeaturedInvestment> createState() => _FeaturedInvestmentState();
}

class _FeaturedInvestmentState extends State<FeaturedInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List productDetails = [
    {
      "Company Name": [
        'Navi Mumbai Office Opportunity II',
        'Prestige Tech Platina, Bangalore',
        'Bangalore Warehousing Opportunity I.',
      ],
      "header": [
        'Property details',
        "Property Grade",
        "Asset Type",
        "Tenant",
        "Deal Size (in Crore)",
        'Minimum Investment',
        "Coupon Rate on CCD",
        'Rental Escalation',
        "Capital Appreciation",
        "Expected IRR",
        "CAGR",
        "Minimum Investor LockIn",
        'Tenant Lease Term',
        'Tenant Lock In',
        'Tenant Security Deposit',
        'Annual Management Fee',
        'Performance Fee',
        'Hurdle rate',
      ],
      "content": [
        [
          '''> The opportunity is to purchase the level 3, C-wing in Tower-I.\n\n> The asset is located in Seawoods, an upscale part of Navi Mumbai.\n\n> The property is well connected to the rest of the Mumbai Metropolitan Region by road, rail, and water services. \n\n> With the upcoming Navi Mumbai airport, metro, and trans-harbour sea link, the area is bound to see greater value appreciation.''',
          'A',
          'Corporate Office',
          'The tenant is a leading Gas Pipeline Operator and sponsored by Brookfield Asset Management.',
          '53,30,00,000',
          '25,00,000',
          '8.1% \nAdditional 1% return in Year 1 for pre-booking',
          '15% every 3 Years',
          '2.0x Target Multiple',
          '12.70%',
          '6.00%',
          '1 Year',
          '7 Year',
          '6 Year',
          '3 Months Rent',
          '1% of Net Purchase Price',
          '20%',
          '10%',
        ],
        [
          '''Prestige Tech Platina is a LEED Platinum building on the main Outer Ring Road and is part of the larger Prestige Tech Park campus with MNC tenants like JP Morgan Chase, Adobe, Schneider Electric and Juniper Networks.''',
          'A+',
          'Corporate Office',
          '[24]7.ai - US Tech Company',
          '~ 2,19,50,00,000',
          '25,00,000',
          '''9%\nAdditional 1% return in Year 1 for pre-booking''',
          '15% every 3 Years',
          "1.76x multiple",
          '17.50%',
          '6.50%',
          '1 Year Recommended - 4 Years',
          '9 Years',
          '7 Years',
          'N/A',
          '1%',
          'N/A',
          'N/A',
        ],
        [
          'N/A',
          'N/A',
          'Warehouse',
          '''The tenant is a leading provider of end-to-end supply chain management and logistics services in India. The company is a specialist in providing logistics for high-end mobile phones, computers, and other electronic goods.''',
          '63,50,00,000',
          '30,00,000',
          '''8.3%\nAdditional 1% return in Year 1 for pre-booking''',
          'N/A',
          "1.7x Multiple",
          '13%',
          '6.00%',
          '1 Year',
          '15 Years',
          '7 Years',
          '6 months rent',
          '1%',
          '20%',
          '10%',
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
                Get.to(() => const OfferPricing());
              } else {
                Get.toNamed("/login");
              }
            },
            text: 'Make an offer'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(10.h),
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
                    height: 85.h,
                    child: Text(
                      productDetails[0]['Company Name'][widget.pageIndex],
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(24.h),
              SizedBox(
                height: MediaQuery.of(context).size.height - 245.h,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
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
                            color: const Color(0XFF3A4856),
                          ),
                        ),
                        Divider(
                          height: 25.h,
                          thickness: 1.h,
                          color: Colors.grey.shade400,
                        ),
                        Text(
                          productDetails[0]['content'][widget.pageIndex][index],
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: const Color(0XFF272424),
                          ),
                        ),
                        sizedBoxHeight(28.h),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 0);
                  },
                  itemCount: productDetails[0]['header'].length,
                ),
              ),
              text14Black('dawesfrghfdasddsgdhf'),
              sizedBoxHeight(60.h),
            ],
          ),
        ),
      ),
    );
  }
}
