import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/DebtfundDetails.dart';
import 'package:get/get.dart';

class ProductsDetailsDebtFund extends StatefulWidget {
  // final int pageIndex;
  final String slug;

  ProductsDetailsDebtFund({super.key, required this.slug
      //  required this.pageIndex
      });

  @override
  State<ProductsDetailsDebtFund> createState() =>
      _ProductsDetailsDebtFundState();
}

class _ProductsDetailsDebtFundState extends State<ProductsDetailsDebtFund> {
  final controllerEntryPoint = Get.put(EntryPointController());
  late Future myfuture;

  @override
  void initState() {
    // TODO: implement initState
    myfuture = DebtfundDetails().DebtfundDetailsAPI(widget.slug);
    super.initState();
  }

  List productDetails = [
    {
      "Company Name": [
        "Vivriti Alpha Debt Fund Enhanced",
        "Structured Debt Opportunities Fund III"
      ],
      "header": [
        "Registration No.",
        "Fund Category (I/II/III)",
        "Fund Structure (Open/Closed)",
        "Fund Strategy",
        "Fund Domicile",
        "Fund Manager Name",
        "Website of the fund",
        "Fund Manager Experience",
        "Sponsor",
        "Manager",
        "Trustee",
        "Auditor",
        "Valuer / Tax Advisor",
        "Credit Rating (if any)",
        "Open Date",
        "1st Close Date",
        "Final Close Date",
        "Tenure from Final Close",
        "Commitment Period",
        "Native Currency",
        "Target Corpus",
        "Investment Manager Contribution",
        "Minimum Capital Commitment",
        "Initial Drawdown",
        "Accepting Overseas investment?",
        "Target IRR (%)",
        "Management Fees and Carry \n- Set Up Fee \n- Management Fee \n- Performance Fee",
        "Hurdle Rate",
        "Other Expenses",
        "Focused Sectors (Industries in which they are investing)",
      ],
      "content": [
        [
          "IN/AIF2/19-20/0742",
          "II",
          "Closed",
          "Invest in Senior Secured MLDs",
          "India",
          "Mohamed Irfan",
          "https://vivritiamc.com/funds/alpha-debt-fund-enhanced/",
          "Private credit fund manager with expertise in originating, negotiating, structuring, and lifecycle management of exposures across the risk/return spectrum. Currently managing 7 live funds across the risk/return spectrum.",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "ICRA A+ (SO)",
          "N/A",
          "N/A",
          "Mar-23",
          "3.5 years",
          "N/A",
          "N/A",
          "500 Cr including green shoe",
          "N/A",
          "1 Crore",
          "N/A",
          "N/A",
          "11.40% (post expenses, pre tax)",
          "N/A",
          "11.20% annualized	",
          "N/A",
          "N/A",
        ],
        [
          "IN/AIF2/17-18/0358",
          "II",
          "Closed",
          "invest across strategies in the credit space, with the overall strategy to generate high risk-adjusted rewards with downside protection",
          "India",
          "Ritesh Nambiar",
          "https://www.utimf.com/about/other-business/aif/",
          "Ritesh Nambiar is a qualified CFA, FRM and MBA Prior to joining UTI, he has worked with CRISIL and TransMarket Group Research In",
          "UTI AMC",
          "UTI Capital",
          "IDBI Trustee",
          "Affiliate of KPMG",
          "EY / PWC",
          "N/A",
          "N/A",
          "Sept 30, 2022",
          "By Sept 30, 2024 (may be extended by 12 months)",
          "4 years from Final close (1+1 extension permitted with investor approval as per regulations) ",
          "N/A",
          "Rupees",
          "Upto 15,000 mm",
          "INR 1,500 mm",
          "1 Crore",
          "N/A",
          "N/A",
          "N/A",
          "Management Fee - 1%-1.5 p.a. depending upon commitment Carried Interest - 10% with catch-up",
          "10% for less than 100 Mm Commitment and 12% for others ",
          "N/A",
          "Economic, Social and Governance",
        ],
      ]
    },
  ];

  // N/A

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
                          sizedBoxHeight(8.h),
                          Text(
                            debtfunddetailsobj!.data!.fundName ?? "",
                            // productDetails[0]['Company Name']
                            //     [widget.pageIndex],
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
                textA4856_20500("Registration No."),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.registrationNumber ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Category (I/II/III)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.fundCategory ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Structure (Open/Closed)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.fundStructure ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Strategy"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.fundStrategy ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Domicile"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.fundDomicile ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.fundManagerName ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Website of the fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.websiteOfTheFund ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Experience"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(debtfunddetailsobj!.data!.fundManagerExperience ??
                    "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Sponsor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(debtfunddetailsobj!.data!.sponsor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Manager"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(debtfunddetailsobj!.data!.manager ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Trustee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(debtfunddetailsobj!.data!.trustee ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Auditor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(debtfunddetailsobj!.data!.auditor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Valuer / Tax Advisor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.valuerTaxAdvisor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating (if any)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.creditRating ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Open Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(debtfunddetailsobj!.data!.openDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("1st Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.firstCloseDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Final Close Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.finalCloseDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure from Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.tenureFromFinalDate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Commitment Period"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.commitmentPeriod ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Native Currency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.nativeCurrency ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Target Corpus"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.targetCorpus ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Investment Manager Contribution"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.investmentManagerContribution ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Capital Commitment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.minimumCapitalCommitment ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Initial Drawdown"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.intialDrawdown ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Accepting Overseas investment?"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.acceptingOverseasInvestment ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Target IRR (%)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(debtfunddetailsobj!.data!.targetIrr ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Management Fees and Carry \n- Set Up Fee \n- Management Fee \n- Performance Fee"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.managementFeesAndCarry ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Hurdle Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.hurdleRate ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Other Expenses"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.otherExpenses ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500(
                    "Focused Sectors (Industries in which they are investing)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    debtfunddetailsobj!.data!.focusedSectorsIndustries ??
                        "NA"),
                sizedBoxHeight(20.h),
              ],
            )
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
