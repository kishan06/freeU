import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/HedgeDetailsService.dart';
import 'package:get/get.dart';

class HedgeFundDetails extends StatefulWidget {
  final String slug;

  HedgeFundDetails({super.key, required this.slug});

  @override
  State<HedgeFundDetails> createState() => _HedgeFundDetailsState();
}

class _HedgeFundDetailsState extends State<HedgeFundDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = HedgeDetails().HedgeDetailsAPI(widget.slug);
    super.initState();
  }

  List hedgedetails = [
    {
      "Company Name": [
        'Bay Capital India Leaders Fund',
        'ICICI PRUDENTIAL STRATEGIC ALPHA FUND',
        'ALPHA ALTERNATIVES MSAR LLP'
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
        'Focused Funds (Type of Funds in which they are investing)',
        'Trading Strategy Used',
        'Involved in Short Selling (Yes/No)',
      ],
      "content": [
        [
          'IN/AIF3/14-15/0132',
          'Category III AIF',
          'Open Ended',
          '''Invest in business which are asset light and do not require much capital to grow and is capable of reinvesting Free Cash Flow at similar or higher RoCE. ''',
          'N/A',
          "Bay Capital Investment Advisors Private Limited",
          "https://baycapindia.com/",
          '''Bay Capital is an independent investment firm established in 2006. The firm was founded with a singular conviction in the India growth story and with the overarching objective of participating in it via the equity markets. ''',
          'Bay Capital Investment Advisors Private Limited',
          'Bay Capital Investment Advisors Private Limited',
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
          '5000 CR',
          'N/A',
          '1 CR',
          'N/A',
          'N/A',
          'YTD -3.5%',
          'N/A',
          '''Management Fee - 1 to 2.5% depending on capital contribution
Performance Fee - 20% if capital contribution is more than 10 M''',
          '10%  if capital contribution is more than 10 M',
          'N/A',
          'They do not invest in any Infrastructure, Real estate, commodities, and other capital-intensive cyclical businesses',
          'Equity - Long Only',
          'No',
        ],
        [
          'IN/AIF3/16-17/0310',
          'Category III AIF',
          'N/A',
          '''The scheme aims to capture positive returns with lower volatility relative to a diversified equity market index''',
          'N/A',
          'Nandik Mallik',
          'N/A',
          '''Nandik holds a master’s degree in finance from London Business School, a postgraduate diploma in management from IIM Calcutta, and a bachelor’s degree in engineering from IIT Kharagpu''',
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
          'N/A',
          'N/A',
          '''Class A: Rs 1 cr (Persons nominated by the Investment Manager) | Class B: Rs 1 cr to <5 cr | Class C: Rs. 5 cr to <20 cr | Class E: Rs 20 cr & above''',
          '100% Upfront',
          'yes',
          'Since Inception - 13.78%',
          'N/A',
          '''Management Fee – 1.50 percent of NAV per annum (paid daily) for Class B & C, 1 percent of NAV per annum (charged daily) for Class A
Performance Fee – on a pre-tax basis, 20% per annually (p.a.) for Class A and B and 15% per annum (p.a.) for Class C beyond hurdle, with a high watermark. The ending NAV (after tax) of the year in which Performance Fees were last charged is the high watermark NAV.''',
          '12% p.a.',
          'N/A',
          'N/A',
          'N/A',
          'Yes',
        ],
        [
          'IN/AIF3/21-22/0901',
          'Category III AIF',
          'Open Ended',
          '''Combining two distinct asset classes 
> Commodities (Agri + Metals): Arbitrage Strategy capturing pricing inefficiencies between the spot and futures markets
> Equities: Multiple, active, low-risk strategies (Option Strategies, Special Situations Etc.)
''',
          'N/A',
          'Mudit Singhania, Prashant Mohanraj',
          'https://www.alt-alpha.com/multi-strategy-absolute-returns',
          '''Mudit Singhania (BMS-Finance), Prashant Mohanraj (MBA – IIM A)''',
          'Alpha Alternatives Finserve Solutions LLP',
          'Alpha Alternatives Fund Advisors LLP',
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
          'INR 1950 Crore',
          '5% of fund or Rs.10 crore whichever is lower',
          '1 CR',
          'N/A',
          'N/A',
          'Trailing 12 Months Return - 12.7%',
          'N/A',
          '''Management Fee - 1.75% for Class B1, 2.00% for Class B2, 0.10% for Class B3 and B4
Carry - 50% for Class B3 and B4''',
          '8% for Class B3 and 7%  for Class B4',
          'N/A',
          'N/A',
          'N/A',
          'Yes',
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
                SizedBox(
                  width: MediaQuery.of(context).size.width - 139.w,
                  height: 70.h,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hedgeDetailsObj!.data!.fundName ?? "",
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
                  hedgeDetailsObj!.data!.registrationNumber ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Category (I/II/III)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.fundCategory ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Structure (Open/Closed)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.fundStructure ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Fund Strategy"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.fundStrategy ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Fund Domicile"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.fundDomicile ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.fundManagerName ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Website of the fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.websiteOfTheFund ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Experience"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.fundManagerExperience ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Sponsor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.sponsor ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Manager"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.manager ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Trustee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.trustee ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Auditor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.auditor ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Valuer / Tax Advisor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.valuerTaxAdvisor ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.creditRating ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Open Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.openDate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("1st Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.firstCloseDate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Final Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.finalCloseDate ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure from Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.tenureFromFinalDate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Commitment Period"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.commitmentPeriod ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Native Currency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.nativeCurrency ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Target Corpus"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.targetCorpus ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Investment Manager Contribution"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.investmentManagerContribution ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Capital Commitment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.minimumCapitalCommitment ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Initial Drawdown"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.intialDrawdown ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Accepting Overseas investment?"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.acceptingOverseasInvestment ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500('''Return on investment (%)
 - IRR
 - DPI
 - RVPI
 - TVPI'''),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.returnOnInvestment ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Valuation per security (NAV)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.valuationPerSector ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500('''Management Fees and Carry
  - Set Up Fee
  - Management Fee
  - Performance Fee'''),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.managementFeesAndCarry ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Hurdle Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.hurdleRate ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Other Expenses"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.otherExpenses ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Focused Funds (Type of Funds in which they are investing)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.focusedFunds ?? "N/A",
                ),
                sizedBoxHeight(20.h), textA4856_20500("Trading Strategy Used"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.tradingStrategy ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Involved in Short Selling (Yes/No)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  hedgeDetailsObj!.data!.involvedInShortSelling ?? "N/A",
                ),
                sizedBoxHeight(20.h),
                // Text(
                //   hedgedetails[0]['header'][index],
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
                //   hedgedetails[0]['content'][widget.pageIndex][index],
                //   style: TextStyle(
                //       fontSize: 18.sp, color: const Color(0xff272424)),
                // ),
                sizedBoxHeight(28.h)
              ],
            ),
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
