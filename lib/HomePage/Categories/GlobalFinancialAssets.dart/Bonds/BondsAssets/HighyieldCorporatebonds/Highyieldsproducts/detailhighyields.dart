import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Highdetailsbonds.dart';
import 'package:get/get.dart';

class HighyieldDetails extends StatefulWidget {
  final String slug;
  HighyieldDetails({super.key, required this.slug});

  @override
  State<HighyieldDetails> createState() => _HighyieldDetailsState();
}

class _HighyieldDetailsState extends State<HighyieldDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = HighyieldbondsDetails().HighyieldbondsDetailsAPI(widget.slug);
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
                          sizedBoxHeight(10.h),
                          Text(
                            HighyieldbondsdetailsObj!.data!.issuer ?? "",
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
                  HighyieldbondsdetailsObj!.data!.issuer ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Bond Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.bondType ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("About Issuer"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.aboutIssuer ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Industry"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.industry ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Country of risk"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.countryOfRisk ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Country of Incorporation"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.countryOfIncorporation ??
                      "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("ISIN"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.isin ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Bond Type/Maturity Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.bondTypeOrMaturityDate ??
                      "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Call Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.callDate ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Coupon"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.coupon ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Indicative Yield (p.a.) (Mid)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.indicativeYieldPaMid ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Indicative Price (USD) (Mid) "),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.indicativePriceUsMid ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment (USD)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.minimumInvestment ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Yield to Worst p.a. (ask)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.yieldToWorstPaAsk ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Yield to Worst p.a. (bid)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.yieldToWorstPaBid ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Price (Ask)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.priceAsk ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Price (Bid)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.priceBid ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Accrued Interest"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.accruedInterest ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Yield To Call"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.yieldToCall ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Duration (Years)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.duration ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Amount Outstanding (USD)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.amountOutstanding ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Collateral Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.collateralType ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  HighyieldbondsdetailsObj!.data!.creditRating ?? "NA",
                ),
                sizedBoxHeight(20.h),
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
