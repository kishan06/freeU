import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/PrivateInveDetailsModel.dart';
import 'package:get/get.dart';

class PrivateViewDetails extends StatefulWidget {
  // final int pageIndex;
  final String slug;

  PrivateViewDetails(
      {super.key,
      // required this.pageIndex
      required this.slug});

  @override
  State<PrivateViewDetails> createState() => _PrivateViewDetailsState();
}

class _PrivateViewDetailsState extends State<PrivateViewDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    // TODO: implement initState
    myfuture =
        PrivateInvestPublicDetails().PrivateInvestPublicDetailsAPI(widget.slug);
    super.initState();
  }

  List hedgedetails = [
    {
      "Company Name": [
        'Alchemy Capital Management Pvt Ltd',
        // 'ICICI PRUDENTIAL STRATEGIC ALPHA FUND',
        // 'ALPHA ALTERNATIVES MSAR LLP'
      ],
      "header": [
        'Registeration Number',
        "Fund Category (I/II/III)",
        "Fund Structure (Open/Closed)",
        "Fund Strategy",
        "Fund Domicile",
        "Fund Manager Name",
        "Website of the fund",
        "Fund Manager Experience",
        "Sponsor",
        "Manager",
        'Trustee',
        'Auditor',
        'Valuer / Tax Advisor',
        'Credit Rating',
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
        '''Return on investment (%)
 - IRR
 - DPI
 - RVPI
 - TVPI''',
        'Valuation per security (NAV)',
        '''Management Fees and Carry
- Set Up Fee
- Management Fee
- Performance Fee''',
        'Hurdle Rate',
        'Other Expenses',
        'Focused Sector',
      ],
      "content": [
        [
          'IN/AIF3/17-18/0381',
          'III',
          'Open ended',
          '''To generate long-term capital appreciation by investing in companies
showing the best traits of adaptability to the new economic normal, driven by innovation & ingenuity. The Fund shall invest in (i) Listed Indian equities, (ii) Private Investment in Public Equity (“PIPES”) on listed Indian equities, and(iii) IPO opportunities.''',
          'N/A',
          "Mr. Hiren Ved & Mr. Sachin Shah",
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
          'N/A',
          '''With 2 Yr hard lock for each tranche contribution
Fund tenure - Perpectual''',
          'Rupees',
          '500 Cr',
          '5% of the Fund size or INR 10 crores, whichever is lower',
          '1 CR',
          '1 CR',
          'N/A',
          'N/A',
          'N/A',
          '''Fixed Fee - 2% to 2.5%
Variable Fee - 1% to 1.5%''',
          '15% Profit sharing over 10% Hurdle rate',
          'N/A',
          'N/A',
        ],
      ]
    }
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
              productid: privateinvepubdetailssobj?.data?.productsId.toString(),
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
            return
                //  privateequitydetailsobj!.data.
                // ?
                // _buildNoDataBody() :
                _buildBody(
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
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2.w,
                        blurRadius: 2.h,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/alternative (6).png",
                    width: 80.w,
                    height: 54.h,
                  ),
                ),
                SizedBox(
                  width: 20.h,
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 132.w,
                    height: 75.h,
                    child: Text(
                      privateinvepubdetailssobj!.data!.fundName ?? "",
                      // hedgedetails[0]['Company Name'][widget.pageIndex],
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            sizedBoxHeight(24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                textA4856_20500("Registeration Number"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.registrationNumber ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Category (I/II/III)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.registrationNumber ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Structure (Open/Closed)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.fundStructure ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Strategy"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.fundStrategy ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Domicile"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.fundDomicile ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.fundManagerName ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Website of the fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.websiteOfTheFund ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Experience"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.fundManagerExperience ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Sponsor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privateinvepubdetailssobj!.data!.sponsor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Manager"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privateinvepubdetailssobj!.data!.manager ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Trustee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privateinvepubdetailssobj!.data!.trustee ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Auditor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privateinvepubdetailssobj!.data!.auditor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Valuer / Tax Advisor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.valuerTaxAdvisor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.creditRating ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Open Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.openDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("1st Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.firstCloseDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Final Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.finalCloseDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure from Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.tenureFromFinalDate ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Commitment Period"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.commitmentPeriod ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Native Currency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.nativeCurrency ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Target Corpus"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.targetCorpus ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Investment Manager Contribution"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privateinvepubdetailssobj!
                        .data!.investmentManagerContribution ??
                    "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Capital Commitment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.minimumCapitalCommitment ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Initial Drawdown"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.intialDrawdown ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Accepting Overseas investment?"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privateinvepubdetailssobj!
                        .data!.acceptingOverseasInvestment ??
                    "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    '''Return on investment (%)\n- IRR\n- DPI\n- RVPI\n- TVPI'''),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.returnOnInvestment ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Valuation per security (NAV)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.focusedRealEstateSectors ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    '''Management Fees and Carry\n- Set Up Fee\n- Management Fee\n- Performance Fee'''),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.managementFeesAndCarry ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Hurdle Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.hurdleRate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Other Expenses"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.otherExpenses ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Focused Sector"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privateinvepubdetailssobj!.data!.focusedRealEstateSectors ??
                        "NA"),
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
            //               hedgedetails[0]['header'][index],
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
            //               hedgedetails[0]['content'][widget.pageIndex][index],
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
            //       itemCount: hedgedetails[0]['header'].length),
            // ),
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
