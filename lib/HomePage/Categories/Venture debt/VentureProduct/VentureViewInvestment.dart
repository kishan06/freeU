import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/VentureDebtDetailsService.dart';
import 'package:get/get.dart';

class ViewInvestment extends StatefulWidget {
  final String slug;

  ViewInvestment({super.key, required this.slug});

  @override
  State<ViewInvestment> createState() => _ViewInvestmentState();
}

class _ViewInvestmentState extends State<ViewInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());
  late Future myfuture;

  @override
  void initState() {
    myfuture = VentureDebtDetails().VentureDebtDetailsAPI(widget.slug);
    super.initState();
  }

  List productDetails = [
    {
      "Company Name": ['eChargeUp', 'Vilcart Services Pvt. Ltd.'],
      "header": [
        'Sector',
        "Minimum Investment",
        "Tenure",
        "Total Issue Size",
        "Interest Payout",
        "Principal Payout",
        "Expected Return",
        "Collateral & Cover Multiple",
        "About the Company",
        "Instrument Type",
        'Face Value per unit',
        'Prepayment Covenants',
        'Source of funds for repayment of Debt'
      ],
      "content": [
        [
          'Electric Vehicle Mobility',
          '3,00,000',
          '15 Months',
          '3 CR',
          'Monthly',
          'Monthly',
          '~19% IRR',
          'Secured NCDs – 1.5x Cover of Loan',
          '"ChargeUp offers Battery as a Service solving the high-cost problem and inconvenience of long charging hours through its distributed network of Battery Swapping HubsBacked by Capital A, Anicut Capital, MapmyIndia, Aman Gupta (boAt founder) and celebrity investors; raised \$2.5 million in pre-Series A round"',
          'Senior, Secured, Redeemable, Unlisted, Unrated Non-Convertible Debentures.',
          '1,00,000',
          'Prepayable after 10 months',
          'Operating Cashflows/Equity Raise'
        ],
        [
          'Supply Chain Tech',
          '5,00,000',
          '15 Months',
          '5 CR',
          'At Maturity',
          'At Maturity',
          '"~17% XIRR\nFor investors participating for more than INR 25 lakhs, upside in the form warrants or equivalent instruments for 5% of their respective investment amount "',
          '"Upfront security cheque\nFirst charge on inventory to the outstanding exposure of the facility"',
          '"Upfront security cheque\nFirst charge on inventory to the outstanding exposure of the facility"',
          'NCD',
          '1,00,000',
          '',
          'Operating Cashflows/Equity Raise'
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      ventureDebtDetailsObj!.data!.companyName ?? "",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            sizedBoxHeight(24.h),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height - 265.h,
            //  child:\
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textA4856_20500("Sector"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.sector ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.minimumInvestment ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.tenure ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Total Issue Size"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.totalIssueSize ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Interest Payout"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.interestPayout ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Principal Payout"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.principalPayout ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Expected Return"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.expectedReturn ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Collateral & Cover Multiple"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.collateralCoverMultiple ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("About the Company"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.aboutCompany ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Instrument Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.instrumentType ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Face Value per unit"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.facePerValueUnit ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Prepayment Covenants"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.prepaymentCovenants ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Source of funds for repayment of Debt"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  ventureDebtDetailsObj!.data!.sourceOfFundsRepaymentDebt ?? "",
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
