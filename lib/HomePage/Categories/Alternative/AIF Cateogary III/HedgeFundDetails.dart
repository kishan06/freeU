import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class HedgeFundDetails extends StatefulWidget {
  int pageIndex;

  HedgeFundDetails({super.key, required this.pageIndex});

  @override
  State<HedgeFundDetails> createState() => _HedgeFundDetailsState();
}

class _HedgeFundDetailsState extends State<HedgeFundDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

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
              // controllerEntryPoint.logedIn!?
              // investNow():SizedBox();
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
                        hedgedetails[0]['Company Name'][widget.pageIndex],
                        // "HDFC AMC Select AIF FOF - 1",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
              sizedBoxHeight(24.h),

              SizedBox(
                height: MediaQuery.of(context).size.height - 265.h,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hedgedetails[0]['header'][index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: const Color(0xff3A4856),
                            ),
                          ),
                          Divider(
                            height: 25.h,
                            thickness: 1.h,
                            color: Colors.grey.shade400,
                          ),
                          Text(
                            hedgedetails[0]['content'][widget.pageIndex][index],
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff272424)),
                          ),
                          sizedBoxHeight(28.h)
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 0.h,
                      );
                      // Divider(
                      //   height: 25.h,
                      //   thickness: 1.h,
                      //   color: Colors.grey.shade400,
                      // );
                    },
                    itemCount: hedgedetails[0]['header'].length),
              ),

              // Text(
              //   'Fund fundamentals',
              //   style: TextStyle(
              //     fontWeight: FontWeight.w500,
              //     fontSize: 18.sp,
              //     color: const Color(0xff3A4856),
              //   ),
              // ),
              // Divider(
              //   height: 28.h,
              //   thickness: 1.h,
              //   color: Colors.grey.shade400,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     SizedBox(
              //       width: MediaQuery.of(context).size.width / 2,
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Fund Category',
              //             style: TextStyle(
              //                 fontSize: 16.sp, color: const Color(0xff616161)),
              //           ),
              //           sizedBoxHeight(10.h),
              //           Text(
              //             'Category II AIF',
              //             style: TextStyle(
              //                 fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              //           )
              //         ],
              //       ),
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'ISIN code',
              //           style: TextStyle(
              //               fontSize: 16.sp, color: const Color(0xff616161)),
              //         ),
              //         sizedBoxHeight(10.h),
              //         Text(
              //           'N/A',
              //           style: TextStyle(
              //               fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              //         )
              //       ],
              //     ),
              //   ],
              // ),
              // sizedBoxHeight(20.h),
              // Text(
              //   'Fund Structure',
              //   style:
              //       TextStyle(fontSize: 16.sp, color: const Color(0xff616161)),
              // ),
              // sizedBoxHeight(10.h),
              // Text(
              //   'N/A',
              //   style:
              //       TextStyle(fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              // ),
              // sizedBoxHeight(20.h),
              // Text(
              //   'Fund Strategy',
              //   style:
              //       TextStyle(fontSize: 16.sp, color: const Color(0xff616161)),
              // ),
              // sizedBoxHeight(10.h),
              // Text(
              //   'Invest in 15 VC/PE funds. Up to 50% in venture capital funds and balance in private equity funds Maximum exposure to co-investment opportunities will be capped at 30% of the corpus.',
              //   style: TextStyle(
              //       fontWeight: FontWeight.w500,
              //       fontSize: 18.sp,
              //       color: const Color(0xff0F0C0C)),
              // ),
              // Divider(
              //   height: 28.h,
              //   thickness: 1.h,
              //   color: Colors.grey.shade400,
              // ),
              // Text(
              //   'Fund details',
              //   style: TextStyle(
              //     fontWeight: FontWeight.w500,
              //     fontSize: 20.sp,
              //     color: const Color(0xff3A4856),
              //   ),
              // ),
              // sizedBoxHeight(25.h),
              // Text(
              //   'Fund Manager name',
              //   style:
              //       TextStyle(fontSize: 16.sp, color: const Color(0xff616161)),
              // ),
              // sizedBoxHeight(10.h),
              // Text(
              //   'HDFC AMC',
              //   style:
              //       TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              // ),
              // sizedBoxHeight(25.h),
              // Text(
              //   'Fund Manager Experience',
              //   style:
              //       TextStyle(fontSize: 16.sp, color: const Color(0xff616161)),
              // ),
              // sizedBoxHeight(10.h),
              // Text(
              //   'N/A',
              //   style:
              //       TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              // ),
              // sizedBoxHeight(25.h),
              // Text(
              //   'Website of the fund',
              //   style:
              //       TextStyle(fontSize: 16.sp, color: const Color(0xff616161)),
              // ),
              // sizedBoxHeight(10.h),
              // Text(
              //   'N/A',
              //   style:
              //       TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              // ),
              // sizedBoxHeight(28.h),
              // Text(
              //   'Fund managements',
              //   style: TextStyle(
              //     fontWeight: FontWeight.w500,
              //     fontSize: 20.sp,
              //     color: const Color(0xff3A4856),
              //   ),
              // ),
              // Divider(
              //   height: 28.h,
              //   thickness: 1.h,
              //   color: Colors.grey.shade400,
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         SizedBox(
              //           width: MediaQuery.of(context).size.width / 2,
              //           child: Text(
              //             'Sponsor',
              //             style: TextStyle(
              //                 fontSize: 16.sp, color: const Color(0xff616161)),
              //           ),
              //         ),
              //         Text(
              //           'Manager',
              //           style: TextStyle(
              //               fontSize: 16.sp, color: const Color(0xff616161)),
              //         ),
              //       ],
              //     ),
              //     sizedBoxHeight(10.h),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              //     ),
              //     sizedBoxHeight(20.h),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         SizedBox(
              //           width: MediaQuery.of(context).size.width / 2,
              //           child: Text(
              //             'Trustee',
              //             style: TextStyle(
              //                 fontSize: 16.sp, color: const Color(0xff616161)),
              //           ),
              //         ),
              //         Text(
              //           'Auditor',
              //           style: TextStyle(
              //               fontSize: 16.sp, color: const Color(0xff616161)),
              //         ),
              //       ],
              //     ),
              //     sizedBoxHeight(10.h),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              //     ),
              //     sizedBoxHeight(20.h),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         SizedBox(
              //           width: MediaQuery.of(context).size.width / 2,
              //           child: Text(
              //             'Value/tax advisor',
              //             style: TextStyle(
              //                 fontSize: 16.sp, color: const Color(0xff616161)),
              //           ),
              //         ),
              //         Text(
              //           'Credit ratings',
              //           style: TextStyle(
              //               fontSize: 16.sp, color: const Color(0xff616161)),
              //         ),
              //       ],
              //     ),
              //     sizedBoxHeight(10.h),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              //     ),
              //   ],
              // ),
              // sizedBoxHeight(20.h),
              // Text(
              //   'Fund Dates',
              //   style: TextStyle(
              //     fontWeight: FontWeight.w500,
              //     fontSize: 20.sp,
              //     color: const Color(0xff3A4856),
              //   ),
              // ),
              // Divider(
              //   height: 28.h,
              //   thickness: 1.h,
              //   color: Colors.grey.shade400,
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         SizedBox(
              //           width: MediaQuery.of(context).size.width / 2,
              //           child: Text(
              //             'Open Date',
              //             style: TextStyle(
              //                 fontSize: 16.sp, color: const Color(0xff616161)),
              //           ),
              //         ),
              //         Text(
              //           '1st Close Date',
              //           style: TextStyle(
              //               fontSize: 16.sp, color: const Color(0xff616161)),
              //         ),
              //       ],
              //     ),
              //     sizedBoxHeight(10.h),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              //     ),
              //     sizedBoxHeight(20.h),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         SizedBox(
              //           width: MediaQuery.of(context).size.width / 2,
              //           child: Text(
              //             'Final Close Date',
              //             style: TextStyle(
              //                 fontSize: 16.sp, color: const Color(0xff616161)),
              //           ),
              //         ),
              //       ],
              //     ),
              //     sizedBoxHeight(10.h),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff0F0C0C)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Tenure from Final Close',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       '11 + 1 + 1 Years',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Commitment Period',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       '5 Years',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Native Currency',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       '₹ Rupees',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Target Corpus',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       '1,500 crore + green shoe of up to 1,500 crore',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Investment Manager Contribution',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       '10 % of capital commitment raised',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Minimum Capital Commitment',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       '1 crore',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Initial Drawdown',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Accepting Overseas investment?',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Target IRR (%)',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Hurdle Rate',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       'XIRR of IC (pre-tax) on Capital Contributions received',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Other Expenses',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Focused Sectors (Industries in which they are investing)',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(28.h),
              //     Text(
              //       'Regions Covered (Geographical Locations covered by the fund)',
              //       style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 20.sp,
              //         color: const Color(0xff3A4856),
              //       ),
              //     ),
              //     Divider(
              //       height: 25.h,
              //       thickness: 1.h,
              //       color: Colors.grey.shade400,
              //     ),
              //     Text(
              //       'N/A',
              //       style: TextStyle(
              //           fontSize: 18.sp, color: const Color(0xff272424)),
              //     ),
              //     sizedBoxHeight(45.h),
              //     Text(
              //       'View HDFC AMC Select AIF FOF - 1 document',
              //       style: TextStyle(
              //           fontWeight: FontWeight.w500,
              //           fontSize: 15.sp,
              //           color: const Color(0xff1B8DC9)),
              //     ),
              //   ],
              // ),
              // sizedBoxHeight(65.h)
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
}
