import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/PrivateRealEstateDetails.dart';
import 'package:get/get.dart';

class RealEstateDetails extends StatefulWidget {
  // final int pageIndex;
  final String slug;

  RealEstateDetails({super.key, required this.slug
      //  required this.pageIndex
      });

  @override
  State<RealEstateDetails> createState() => _RealEstateDetailsState();
}

class _RealEstateDetailsState extends State<RealEstateDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());
  late Future myfuture;

  @override
  void initState() {
    // TODO: implement initState
    myfuture =
        PrivateRealEsateDetails().PrivateRealEsateDetailsAPI(widget.slug);
    super.initState();
  }

  List realdetails = [
    {
      "Company Name": [
        'Sundaram High Yield Secured Real Estate Fund III',
      ],
      "header": [
        'Registration No.',
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
        'Target IRR (%)',
        '''Management Fees and Carry
- Set Up Fee
- Management Fee
- Performance Fee''',
        'Hurdle Rate',
        'Other Expenses',
        'Focused Real estate Sectors',
        'RERA Complied property (Yes/No)',
        'Regions Covered (Geographical Locations covered by the fund)',
      ],
      "content": [
        [
          'IN/AIF2/17-18/0340',
          'II',
          'Closed',
          '''The main investment objective of the Fund is to undertake activities of a Category II AIF and invest in high yielding
 debentures and mezzanine securities (including equities), of Indian entities involved with real asset industries that
 may include (but not limited to) real estate (residential, commercial, retail), logistics (warehouses, supply chain
 facilities, data centers, etc.), hotels (including hostels, resorts) and health care facilities (hospitals, senior care
 homes, etc.).''',
          'India',
          "Sundaram Alternate Assets Limited",
          "https://www.sundaramalternates.com/",
          'N/A',
          'Sundaram Finance',
          'Sundaram Alternate Assets Limited',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          '5 years (extendable by up to 2 years with approval of two-thirds majority of investors by value)',
          'N/A',
          '''INR 7.5 bn (~USD 100 million) green shoe option to
 accept additional INR 2.5 bn (~USD 35 million)''',
          'N/A',
          'N/A',
          '''50% of Capital Commitment; subsequent drawdowns on an as needed basis''',
          'N/A',
          'Target Gross IRR: 18-22% p.a.',
          '''Set up fees – Up to 2% in each case
Administrative expenses - Up to 0.50% p.a.
Performance Fee (without catch up) - 20%''',
          '12%',
          'N/A',
          '''Real estate, logistics, hotels and healthcare
Focus on residential, hybrid and commercial projects
• ~70-75%: focused on self-liquidating projects / secured asset cash flows and ~25-30%: backed by commercial assets / other collaterals with back-ended redemption structures''',
          'Yes',
          '''Predominantly South India - Tamil Nadu, Karnataka, Telangana, Kerala, Andhra Pradesh
Opportunistic co-investments with large investors in Maharashtra & NCR''',
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
              productid: privaterealestdetailsobj?.data?.productsId.toString(),
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
                    height: 85.h,
                    child: Text(
                      privaterealestdetailsobj!.data!.fundName ?? "",
                      // realdetails[0]['Company Name'][widget.pageIndex],
                      // "HDFC AMC Select AIF FOF - 1",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
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
                    privaterealestdetailsobj!.data!.registrationNumber ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Category (I/II/III)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.fundCategory ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Structure (Open/Closed)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.fundStructure ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Strategy"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.fundStrategy ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Domicile"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.fundDomicile ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.fundManagerName ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Website of the fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.websiteOfTheFund ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Experience"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.fundManagerExperience ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Sponsor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privaterealestdetailsobj!.data!.sponsor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Manager"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privaterealestdetailsobj!.data!.manager ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Trustee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privaterealestdetailsobj!.data!.trustee ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Auditor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privaterealestdetailsobj!.data!.auditor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Valuer / Tax Advisor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.valuerTaxAdvisor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.creditRating ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Open Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privaterealestdetailsobj!.data!.openDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("1st Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.firstCloseDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Final Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.finalCloseDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure from Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.tenureFromFinalDate ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Commitment Period"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.commitmentPeriod ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Native Currency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.nativeCurrency ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Target Corpus"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.targetCorpus ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Investment Manager Contribution"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privaterealestdetailsobj!
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
                    privaterealestdetailsobj!.data!.minimumCapitalCommitment ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Initial Drawdown"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.intialDrawdown ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Accepting Overseas investment?"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(privaterealestdetailsobj!
                        .data!.acceptingOverseasInvestment ??
                    "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Target IRR (%)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.targetIrr ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Management Fees and Carry \n- Set Up Fee \n- Management Fee \n- Performance Fee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.managementFeesAndCarry ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Hurdle Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.hurdleRate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Other Expenses"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.otherExpenses ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Focused Real estate Sectors"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.focusedRealEstateSectors ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("RERA Complied property (Yes/No)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.reraCompliedProperty ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Regions Covered (Geographical Locations covered by the fund)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    privaterealestdetailsobj!.data!.regionsCovered ?? "NA"),
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
            //               realdetails[0]['header'][index],
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
            //               realdetails[0]['content'][widget.pageIndex][index],
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
            //       itemCount: realdetails[0]['header'].length),
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
