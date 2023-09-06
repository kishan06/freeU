import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/VentureCapitalDetailsService.dart';
import 'package:get/get.dart';

class SovereignDetails extends StatefulWidget {
  // final String slug;
  SovereignDetails({super.key, 
  // required this.slug
  });

  @override
  State<SovereignDetails> createState() => _SovereignDetailsState();
}

class _SovereignDetailsState extends State<SovereignDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    // myfuture = VentureCapitalDetails().VentureCapitalDetailsAPI();
    super.initState();
  }

  List productDetails = [
    {
      "Company Name": ['HDFC AMC Select AIF FOF – I'],
      "header": [
        'Registration No.',
        'Fund Category (I/II/III)',
        'Fund Structure (Open/Closed)',
        'Fund Strategy',
        'Fund Domicile',
        'Fund Manager Name',
        'Website of the fund',
        'Fund Manager Experience',
        'Sponsor',
        'Manager',
        'Trustee',
        'Auditor',
        'Valuer / Tax Advisor',
        'Credit Rating (if any)',
        'Open Date',
        '1st Close Date',
        'Final Close Date',
        'Tenure from Final Close',
        'Commitment Period',
        'Native Currency',
        'Target Corpus',
        'Investment Manager Contribution',
        'Minimum Capital Commitment',
        'Initial Drawdown',
        'Accepting Overseas investment?',
        'Target IRR (%)',
        'Management Fees and Carry  - Set Up Fee  - Management Fee  - Performance Fee',
        'Hurdle Rate',
        'Other Expenses',
        'Focused Sectors (Industries in which they are investing)',
        'Regions Covered (Geographical Locations covered by the fund)'
      ],
      "content": [
        [
          'N/A',
          'II',
          'Closed',
          'Invest in ~ 15 VC/PE funds.Up to 50% in venture capital funds and balance in private equity funds Maximum exposure to co-investment opportunities will be capped at 30% of the corpus',
          'N/A',
          'HDFC AMC	',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          '11 + 1 + 1 years',
          '5 Years',
          'N/A',
          '₹ 1,500 crore + green shoe of up to ₹ 1,500 crore',
          '10% of Capital Commitment raised',
          '1 Crore',
          'N/A',
          'N/A',
          'N/A',
          '2.5% p.a. Management Fee & 20% Carry with full catchup',
          'XIRR of 10% (pre-tax) on Capital Contributions received			',
          'N/A',
          'N/A',
          'N/A',
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
      // ),
  
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
                  width: MediaQuery.of(context).size.width - 138.w,
                  height: 75.h,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sovereign Governmet Bonds",
                            // ventureCapitalDetailsObj!.data!.fundName ?? "",
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textA4856_20500("Issuer"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.registrationNumber ?? "N/A",
                  "United States Treasury"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Bond Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.fundCategory ?? "N/A",
                  "Government Bond - Developed Markets - Fixed Income"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("About Issuer"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.fundStructure ?? "N/A",
                "United States Treasury bonds are debt securities issued by the U.S. government to finance its operations and fund public projects. They are considered low-risk investments and pay interest to bondholders over a fixed period, providing a means for individuals and institutions to lend money to the government."
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Industry"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.fundStrategy ?? "N/A",
               "Sovereign"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Country of risk"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.fundDomicile ?? "N/A",
                "United States of America"
                ),
                sizedBoxHeight(20.h),
                 textA4856_20500("Country of Incorporation"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.fundManagerName ?? "N/A",
                "United States of America"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("ISIN"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.websiteOfTheFund ?? "N/A",
                "US91282CEG24"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Bond Type/Maturity Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.fundManagerExperience ??
                  //     "N/A",
                  "31st March, 2024"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Call Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.sponsor ?? "N/A",
               "-"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Coupon"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.manager ?? "N/A",
                "0.0225"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Indicative Yield (p.a.) (Mid)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.trustee ?? "N/A",
                "0.0528"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Indicative Price (USD) (Mid) "),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.auditor ?? "N/A",
                "97.63"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment (USD)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.valuerTaxAdvisor ?? "N/A",
                "100000"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Yield to Worst p.a. (ask)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.creditRating ?? "N/A",
                "0.0522"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Yield to Worst p.a. (bid)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.openDate ?? "N/A",
               "0.0534"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Price (Ask)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.firstCloseDate ?? "N/A",
                "97.66"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Price (Bid)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.finalCloseDate ?? "N/A",
                "97.58"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Accrued Interest"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.tenureFromFinalDate ?? "N/A",
                "0.43"
                ),
                sizedBoxHeight(20.h),
                 textA4856_20500("Yield To Call"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.commitmentPeriod ?? "N/A",
                "-"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Duration (Years)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.nativeCurrency ?? "N/A",
                "0.78"
                ),
                sizedBoxHeight(20.h), 
                textA4856_20500("Amount Outstanding (USD)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.targetCorpus ?? "N/A",
                "59307000000"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Collateral Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!
                  //         .data!.investmentManagerContribution ??
                  //     "N/A",
                  "Unsecured"
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.minimumCapitalCommitment ??
                  //     "N/A",
                  "AAA"
                ),
                sizedBoxHeight(20.h),
                 textA4856_20500("Data As on"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  // ventureCapitalDetailsObj!.data!.intialDrawdown ?? "N/A",
                "23-06-2023"
                ),
                sizedBoxHeight(20.h),
                // textA4856_20500("Accepting Overseas investment?"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   ventureCapitalDetailsObj!.data!.acceptingOverseasInvestment ??
                //       "N/A",
                // ),
                // sizedBoxHeight(20.h), textA4856_20500("Target IRR (%)"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   ventureCapitalDetailsObj!.data!.targetIrr ?? "N/A",
                // ),
                // sizedBoxHeight(20.h),
                // textA4856_20500(
                //     "Management Fees and Carry  - Set Up Fee  - Management Fee  - Performance Fee"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   ventureCapitalDetailsObj!.data!.managementFeesAndCarry ??
                //       "N/A",
                // ),
                // sizedBoxHeight(20.h), textA4856_20500("Hurdle Rate"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   ventureCapitalDetailsObj!.data!.hurdleRate ?? "N/A",
                // ),
                // sizedBoxHeight(20.h), textA4856_20500("Other Expenses"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   ventureCapitalDetailsObj!.data!.otherExpenses ?? "N/A",
                // ),
                // sizedBoxHeight(20.h),
                // textA4856_20500(
                //     "Focused Sectors (Industries in which they are investing)"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   ventureCapitalDetailsObj!.data!.focusedSectorsIndustries ??
                //       "N/A",
                // ),
                // sizedBoxHeight(20.h),
                // textA4856_20500(
                //     "Regions Covered (Geographical Locations covered by the fund)"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   ventureCapitalDetailsObj!.data!.regionsCovered ?? "N/A",
                // ),
                // sizedBoxHeight(20.h),
                // Text(
                //   productDetails[0]['header'][index],
                //   style: TextStyle(
                //     fontWeight: FontWeight.w500,
                //     fontSize: 20.sp,
                //     color: const Color(0xff3A4856),
                //   ),
                // ),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // Text(
                //   productDetails[0]['content'][widget.pageIndex][index],
                //   style: TextStyle(
                //       fontSize: 18.sp, color: const Color(0xff272424)),
                // ),

                sizedBoxHeight(28.h)
              ],
            ),
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
