import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/FractionalDetails.dart';
import 'package:get/get.dart';

class PropertiesInvestment extends StatefulWidget {
  final String slug;

  PropertiesInvestment({super.key, required this.slug});

  @override
  State<PropertiesInvestment> createState() => _PropertiesInvestmentState();
}

class _PropertiesInvestmentState extends State<PropertiesInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());
  late Future myfuture;

  @override
  void initState() {
    myfuture = FractionaDetails().FractionaDetailsAPI(widget.slug);
    super.initState();
  }

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
        appBar: CustomSignupAppBar(
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
        body: FutureBuilder(
          future: myfuture,
          builder: (ctx, snapshot) {
            if (snapshot.data == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [CircularProgressIndicator()],
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18.spMin),
                  ),
                );
              }
            }
            return _buildBody(
              context,
            );
          },
        ));
  }

  Widget _buildBody(context) {
    return SafeArea(
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
                    fractionalDetailsObj!.data!.slug ?? "",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                textA4856_20500("Property details(Name and Location)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.propertyNameAndLocation ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Description"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.propertyDescription ?? "",
                ),
                
                sizedBoxHeight(20.h),
                textA4856_20500("Property Grade"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.propertyGrade ?? "",
                ),
                
                sizedBoxHeight(20.h),
                textA4856_20500("Asset Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.assetType ?? "",

                ),
                
                sizedBoxHeight(20.h),
                textA4856_20500("Tenant"),
                
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.tenant ?? "",
              
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Deal Size (in Crore)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.dealSizeInCrore ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.minimumInvestment ?? "No data",

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Coupon Rate on CCD"),
                
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.couponRateOnCcd ?? "",

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Rental Escalation"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.rentalEscalation ?? "",

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Capital Appreciation"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.capitalAppreciation ?? "",

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Expected IRR"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.expectedIrr ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("CAGR"),
                
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.cagr ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investor LockIn"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.minimumInvestmentLockin ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenant Lease Term"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.tenantLeaseTerm ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenant Lock In"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.tenantLockIn ?? "",
                  
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenant Security Deposit"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.tenantSecurityDeposit ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Annual Management Fee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.annualManagementFee ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Performance Fee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.performanceFees ?? "",),
                sizedBoxHeight(20.h),
                textA4856_20500("Hurdle rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  fractionalDetailsObj!.data!.hurdleRate ?? "",),
                sizedBoxHeight(20.h),
              ],
            ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height - 245.h,
            //   child: ListView.separated(
            //       itemBuilder: (context, index) {
            //         return Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               productDetails[0]['header'][index],
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 20.sp,
            //                 color: Color(0XFF3A4856),
            //               ),
            //             ),
            //             Divider(
            //               height: 25.h,
            //               thickness: 1.h,
            //               color: Colors.grey.shade400,
            //             ),
            //             Text(
            //               fractionalRealEstateObj!
            //                       .data?[index]
            //                       .fractionalRealEstate!
            //                       .propertyNameAndLocation! ??
            //                   "",
            //               // productDetails[0]['content']
            //               //     // [widget.pageIndex]
            //               //     [index],
            //               style: TextStyle(
            //                 fontSize: 18.sp,
            //                 color: Color(0XFF272424),
            //               ),
            //             ),
            //             sizedBoxHeight(28.h),
            //           ],
            //         );
            //       },
            //       separatorBuilder: (context, index) {
            //         return SizedBox(
            //           height: 0.h,
            //         );
            //       },
            //       itemCount: fractionalRealEstateObj!.data!.length
            //       // productDetails[0]['header'].length
            //       ),
            // )
          
          ],
        ),
      ),
    ));
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
