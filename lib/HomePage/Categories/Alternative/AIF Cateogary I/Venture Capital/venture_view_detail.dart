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

class VentureViewDetails extends StatefulWidget {
  final String slug;
  VentureViewDetails({super.key, required this.slug});

  @override
  State<VentureViewDetails> createState() => _VentureViewDetailsState();
}

class _VentureViewDetailsState extends State<VentureViewDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = VentureCapitalDetails().VentureCapitalDetailsAPI(widget.slug);
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
      body: FutureBuilder(
        future: myfuture,
        builder: (ctx, snapshot) {
          if (snapshot.data == null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Center(child: CircularProgressIndicator())],
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
      ),
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
                            ventureCapitalDetailsObj!.data!.fundName ?? "",
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
                textA4856_20500("Registration No."),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.registrationNumber ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Category (I/II/III)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.fundCategory ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Structure (Open/Closed)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.fundStructure ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Strategy"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.fundStrategy ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Domicile"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.fundDomicile ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.fundManagerName ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Website of the fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.websiteOfTheFund ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Experience"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.fundManagerExperience ??
                      "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Sponsor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.sponsor ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Manager"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.manager ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Trustee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.trustee ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Auditor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.auditor ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Valuer / Tax Advisor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.valuerTaxAdvisor ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating (if any)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.creditRating ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Open Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.openDate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("1st Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.firstCloseDate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Final Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.finalCloseDate ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure from Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.tenureFromFinalDate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Commitment Period"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.commitmentPeriod ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Native Currency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.nativeCurrency ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Target Corpus"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.targetCorpus ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Investment Manager Contribution"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!
                          .data!.investmentManagerContribution ??
                      "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Capital Commitment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.minimumCapitalCommitment ??
                      "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Initial Drawdown"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.intialDrawdown ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Accepting Overseas investment?"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.acceptingOverseasInvestment ??
                      "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Target IRR (%)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.targetIrr ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Management Fees and Carry  - Set Up Fee  - Management Fee  - Performance Fee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.managementFeesAndCarry ??
                      "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Hurdle Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.hurdleRate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Other Expenses"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.otherExpenses ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Focused Sectors (Industries in which they are investing)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.focusedSectorsIndustries ??
                      "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Regions Covered (Geographical Locations covered by the fund)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureCapitalDetailsObj!.data!.regionsCovered ?? "N/A",
                ),
                sizedBoxHeight(20.h),
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
