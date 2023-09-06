import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Leasefinancingdetails.dart';
import 'package:get/get.dart';

class MutualFundDetails extends StatefulWidget {
  // final int pageIndex;
  // final String slug;

  MutualFundDetails(
      {super.key,
      // required this.pageIndex
      // required this.slug
      });

  @override
  State<MutualFundDetails> createState() => _MutualFundDetailsState();
}

class _MutualFundDetailsState extends State<MutualFundDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  // late Future myfuture;

  @override
  void initState() {
    // myfuture = LeasefinancingDetails().LeasefinancingDetailsAPI(widget.slug);
    super.initState();
  }

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
        body: _buildBody(context),
        // FutureBuilder(
        //   future: myfuture,
        //   builder: (ctx, snapshot) {
        //     if (snapshot.data == null) {
        //       return Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [Center(child: CircularProgressIndicator())],
        //       );
        //     }
        //     if (snapshot.connectionState == ConnectionState.done) {
        //       if (snapshot.hasError) {
        //         return Center(
        //           child: Text(
        //             '${snapshot.error} occured',
        //             style: TextStyle(fontSize: 18.spMin),
        //           ),
        //         );
        //       }
        //     }
        //     return _buildBody(
        //       context,
        //     );
        //   },
        // )
        );
  }

  Widget _buildBody(context) {
    return Padding(
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
                          sizedBoxHeight(10.h),
                          Text(
                            "Lorem ipsum",
                            // leasefinancingdetailsobj!.data!.company ?? "",
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                textA4856_20500("Issuer"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.assetClass ?? "",
                "Allianz Global Investors Asia Pacific Limited"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.underlyingAsset ?? "",
                "Allianz China Class A Shares AT Fund"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.sector ?? "",
                "Equity"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("About Issuer"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.mobilityPlatform ?? "",
                "Allianz Global Investors is a globally diversified active investment manager with EUR400 billion AUM. Owned by Allianz, a leading financial services company in 70 countries. With 500+ investment professionals in 23 locations across 17 countries, their funds focus on active management and domestic markets, including Asia and China."
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Description"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.totalDealSize ?? "",
                "The fund believes in fundamental analysis and active management and aims at long term capital growth to outperform its becnhmark - MSCI China A Onshore TR Index. The fund invests 70% of its portfolio in China-A shares and balance may be invested in other Emerging Markets"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Sharpe Ratio"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.minimumInvestment ?? "",
                "0.11"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Annualized Volatility"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.tenure ?? "",
                "0.2377"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Max Drawdown"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.payoutFrequency ?? "",
                "-0.473"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("ISIN"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "LU1997245177"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Inception Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "Aug 19, 2019"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund AUM"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                '''8.76B (As of 31st March 2022)''',
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Expense Ratio"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                '''Total Expense Ratio: 2.3%
Fund Management Fee: 1.75%
Fund Performance Fee: NA
Transaction Fee: Upto 2%'''
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("NAV per unit (USD)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "10.6308"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment (USD)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "50002"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Returns"),
                sizedBoxHeight(10.h),
                textA4856_20500("YTD"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "-12.72"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("1 Year Return"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "-25.24"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("3 Year Return"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "-4.01"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("2018"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "-25.85"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("2019"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "58.47"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("2020"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "72.73"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("2021"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "-0.73"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("2022"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "-35.75"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Data As on"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "23-06-2023"
                ),
                sizedBoxHeight(20.h),

              ],
            )

            // SizedBox(
            //   height: MediaQuery.of(context).size.height - 265.h,
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
            //                 color: const Color(0xff3A4856),
            //               ),
            //             ),
            //             Divider(
            //               height: 25.h,
            //               thickness: 1.h,
            //               color: Colors.grey.shade400,
            //             ),
            //             Text(
            //               // productDetails[0]['content'][widget.pageIndex]
            //                   // [index],
            //                   ""
            //                   ,
            //               style: TextStyle(
            //                   fontSize: 18.sp,
            //                   color: const Color(0xff272424)),
            //             ),
            //             sizedBoxHeight(28.h)
            //           ],
            //         );
            //       },
            //       separatorBuilder: (context, index) {
            //         return SizedBox(
            //           height: 0.h,
            //         );
            //       },
            //       itemCount: productDetails[0]['header'].length),
            // ),
          ],
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
