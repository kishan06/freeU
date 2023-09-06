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

class PrivateEquityFundsDetails extends StatefulWidget {
  // final int pageIndex;
  // final String slug;

  PrivateEquityFundsDetails(
      {super.key,
      // required this.pageIndex
      // required this.slug
      });

  @override
  State<PrivateEquityFundsDetails> createState() => _PrivateEquityFundsDetailsState();
}

class _PrivateEquityFundsDetailsState extends State<PrivateEquityFundsDetails> {
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
                            "Lorem Ipsum",
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
                "Point72 Asset Management, L.P"
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
                "Point72 (AAAP Feeder)"
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
                "Multi-Asset"
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
                "Point72 is a renowned global asset management firm founded by Steven Cohen. With a focus on long-term value investing, it manages substantial assets. Employing a team of skilled investment professionals, Point72 combines advanced technology and rigorous research to make strategic investment decisions across various markets."
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
                "The fund seeks to generate absolute returns, typically with a market neutral approach, from trading their respective strategies. The fund is anchored in fundamental long/short equity trading, representing approximately 75% of the capital allocation, with approximately 20% of the remaining capital allocated to systematic strategies and the remaining 5% to Global Macro and other strategies."
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
                "2.14"
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
                "0.0816"
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
                "-0.2411"
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
                "VGG0395J5750"
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
                "May 30, 2022"
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
                "27.77B (As of 1st March 2023)"
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
                '''Fund Management Fee: 2.85%
Fund Performance Fee: NA
Transaction Fee: Upto 2.00%
Other Fee: 0.9% p.a.'''
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("NAV per Unit (USD)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                "153.92"
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
                "50000"
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
                "4.27"
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
                "11.05"
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
                "18.79"
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
                "15.41"
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
                "15.18"
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
                "29.74"
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
                "8.8"
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
