import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Alternative/Alternative1/Getalternative1.dart';
import 'package:freeu/viewModel/Alternative/Alternative2/Getalternative2.dart';
import 'package:freeu/viewModel/AngelFundDetailsService.dart';
import 'package:get/get.dart';

class FundDistressedViewDetails extends StatefulWidget {
  final String slug;
  FundDistressedViewDetails({super.key, required this.slug});

  @override
  State<FundDistressedViewDetails> createState() =>
      _FundDistressedViewDetailsState();
}

class _FundDistressedViewDetailsState extends State<FundDistressedViewDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = Alternative2().FundDistressedDetailsAPI(widget.slug);
    super.initState();
  }

  List productDetails = [
    {
      "Company Name": ['Piper Serica Angel Fund'],
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
      ],
      "content": [
        [
          'IN/AIF1/21-22/1028',
          'I',
          'Closed',
          '1. Invest only in start ups that have exponential growth business model 2.Business should not require constant infusion of capital to support growth 3.Tech has to be the core driver of business. Invest in bits and not atoms 4. Invest in founders first. Business models pivot  5. Invest along with other active investors who actively provide mentorship and guidance to young founders  6. Stay invested for as long as possible in successful start ups. Water the roses and cut the weeds 7.Reduce the impact of high mortality by building a portfolio of 30 to 40 companies',
          'India',
          'N/A',
          'https://www.piperserica.com/	',
          'https://www.piperserica.com/	',
          'Piper Serica',
          'Piper Serica Advisors',
          'Piper Serica Advisors',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          '########',
          'N/A',
          '10 Years',
          'Rupees',
          '100 Cr',
          'Minimum 2.5% or INR 50 lakhs whichever is lower',
          'Minimum commitment of Rs. 25 lakh to be invested over 3 years.',
          '40%',
          'N/A',
          'N/A',
          'Management Fee - 2% upto 1 Cr of aggregate capital commitment, otherwise 1.5% Performance Fee - 20% for Unit A & B holders (plus taxes & levies as applicable)',
          'N/A',
          'N/A',
          'Tech based Start-Up',
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
            productid: detailsfunddistessedobj?.data?.productsId.toString(),
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                // Get.toNamed("/login");
                Get.offAllNamed('/login');
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
                  height: 70.h,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            detailsfunddistessedobj!.data!.fundName ?? "",
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
                // textA4856_20500("Registration No."),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   detailsinfrastructureobj!.data!. ?? "N/A",
                // ),
                // sizedBoxHeight(20.h),
                textA4856_20500("Fund Category (I/II/III)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.fundCategory ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Structure (Open/Closed)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.fundStructure ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Strategy"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.fundStrategy ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Domicile"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.fundDomicile ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.fundManagerName ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Website of the fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.websiteOfTheFund ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Experience"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.fundManagerExperience ??
                      "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Sponsor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.sponsor ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Manager"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.manager ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Trustee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.trustee ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Auditor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.auditor ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Valuer / Tax Advisor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.valuerTaxAdvisor ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating (if any)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.creditRating ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Open Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.openDate ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("1st Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.firstCloseDate ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Final Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.finalCloseDate ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure from Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.tenureFromFinalClose ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Commitment Period"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.commitmentPeriod ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Native Currency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.nativeCurrency ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Target Corpus"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.targetCorpus ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Investment Manager Contribution"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!
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
                  detailsfunddistessedobj!.data!.minimumCapitalCommitment ??
                      "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Initial Drawdown"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.intialDrawdown ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Accepting Overseas investment?"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.acceptingOverseasInvestment ??
                      "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Target IRR (%)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  //this should contain target_irr
                  detailsfunddistessedobj!.data!.targetIrr ?? "N/A",
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
                  detailsfunddistessedobj!.data!.managementFeesAndCarry ??
                      "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Hurdle Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.hurdleRate ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Other Expenses"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  detailsfunddistessedobj!.data!.otherExpenses ?? "N/A",
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
                  detailsfunddistessedobj!.data!.focusedSectorsIndustries ??
                      "N/A",
                ),
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
