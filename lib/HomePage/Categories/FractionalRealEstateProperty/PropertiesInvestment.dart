import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class PropertiesInvestment extends StatefulWidget {
  int pageIndex;

  PropertiesInvestment({super.key, required this.pageIndex});

  @override
  State<PropertiesInvestment> createState() => _PropertiesInvestmentState();
}

class _PropertiesInvestmentState extends State<PropertiesInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List productDetails = [
    {
      "Company Name": [
        'Navi Mumbai Office Opportunity II',
        'Prestige Tech Platina, Bangalore',
        'Bangalore Warehousing Opportunity I.',
      ],
      "header": [
        'Property details(Name and Location)',
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
          '''The opportunity is to purchase the level 3, C-wing in Tower-I.\nThe asset is located in Seawoods, an upscale part of Navi Mumbai. The property is well connected to the rest of the Mumbai Metropolitan Region by road, rail, and water services. \nWith the upcoming Navi Mumbai airport, metro, and trans-harbour sea link, the area is bound to see greater value appreciation.''',
          'A',
          'Corporate Office',
          // '3 CR',
          'The tenant is a leading Gas Pipeline Operator and sponsored by Brookfield Asset Management.',
          '53,30,00,000',
          '25,00,000',
          '8.1% \nAdditional 1% return in Year 1 for pre-booking',
          '15% every 3 Years',
          //'"ChargeUp offers Battery as a Service solving the high-cost problem and inconvenience of long charging hours through its distributed network of Battery Swapping HubsBacked by Capital A, Anicut Capital, MapmyIndia, Aman Gupta (boAt founder) and celebrity investors; raised \$2.5 million in pre-Series A round"',
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
          //'Senior, Secured, Redeemable, Unlisted, Unrated Non-Convertible Debentures.',
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
          //'Senior, Secured, Redeemable, Unlisted, Unrated Non-Convertible Debentures.',
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                Get.toNamed("/login");
              }
              // Get.toNamed("/login");
              //investNow();
            },
            text: 'Invest now'),
      ),
      body: SafeArea(
          child: Padding(
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
                  Container(
                    // decoration: BoxDecoration(
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.grey.withOpacity(0.1),
                    //       //spreadRadius: 2.w,
                    //       //blurRadius: 2.h,
                    //     ),
                    //   ],
                    // ),
                    child: SvgPicture.asset(
                      "assets/images/property.svg",
                      width: 80.w,
                      height: 54.h,
                    ),
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
                    // ListView.builder(
                    //   itemCount: 1,
                    //   itemBuilder: (context, index) {
                    //     return Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           productDetails[0]['Company Name']
                    //               [widget.pageIndex],
                    //           style: TextStyle(
                    //               fontSize: 20.sp, fontWeight: FontWeight.w500),
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // ),
                  ),
                  // Flexible(
                  //   child: Text(
                  //     "Navi Mumbai Office Opportunity II",
                  //     style: TextStyle(
                  //         fontSize: 22.sp, fontWeight: FontWeight.w500),
                  //   ),
                  // )
                ],
              ),
              sizedBoxHeight(24.h),
              SizedBox(
                height: MediaQuery.of(context).size.height - 245.h,
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
                              color: Color(0XFF3A4856),
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
                              color: Color(0XFF272424),
                            ),
                          ),
                          sizedBoxHeight(28.h),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 0.h,
                      );
                    },
                    itemCount: productDetails[0]['header'].length),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text(
              //       'view ',
              //       style: TextStyle(
              //           fontWeight: FontWeight.w500,
              //           fontSize: 15.sp,
              //           color: const Color(0xff1B8DC9)),
              //     ),
              //     Text(
              //       productDetails[0]['Company Name'][widget.pageIndex],
              //       style: TextStyle(
              //           fontWeight: FontWeight.w500,
              //           fontSize: 15.sp,
              //           color: const Color(0xff1B8DC9)),
              //     )
              //   ],
              // ),
            ],
          ),
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
                    Get.back();
                    Get.back();
                    // Get.toNamed("/fractionalpropertiespage");
                  },
                  text: 'View more products')
            ],
          ),
        );
      },
    );
  }

  // void investNow() {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(30),
  //         topRight: Radius.circular(30),
  //       ),
  //     ),
  //     builder: (context) {
  //       return Container(
  //         margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             SvgPicture.asset("assets/images/thankyouinvestment.svg"),
  //             Text(
  //               "Thank You For Showing Your Interest",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                   color: const Color(0xff0F0C0C),
  //                   fontSize: 30.sp,
  //                   fontFamily: "Poppins"),
  //             ),
  //             sizedBoxHeight(30.h),
  //             Text(
  //               "A FreeU Advisory Team will get back to you soon.",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                   color: const Color(0xff272424),
  //                   fontSize: 20.sp,
  //                   fontFamily: "Poppins"),
  //             ),
  //             sizedBoxHeight(30.h),
  //             CustomNextButton(ontap: () {}, text: 'View more products')
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
