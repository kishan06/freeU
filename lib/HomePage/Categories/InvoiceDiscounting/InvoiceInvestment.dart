import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/ViewModel/InvoiceDetails.dart';
import 'package:get/get.dart';

class InvoiceInvestment extends StatefulWidget {
  // final int pageIndex;
  final String slug;

  InvoiceInvestment(
      {super.key,
      //  required this.pageIndex
      required this.slug});

  @override
  State<InvoiceInvestment> createState() => _InvoiceInvestmentState();
}

class _InvoiceInvestmentState extends State<InvoiceInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;
  @override
  void initState() {
    myfuture = InvoiceDetails().InvoiceDetailsAPI(widget.slug);
    super.initState();
  }

  List productDetails = [
    {
      "Company Name": ['Cocoblu', 'Zetwerk', 'Aris Infra'],
      "header": [
        'Sector',
        "About the Company",
        "Key Performance Metrics",
        "Minimum Investment",
        "Total Deal Size",
        "Tenure",
        "Pre-tax IRR",
        "Coupon Rate",
        "Vendor",
        "Recourse On",
        'Settlement Date',
        'PayOut Frequency',
        'Payment Obligor',
        'Security Structure',
      ],
      "content": [
        [
          'E-Commerce',
          '''CocoBlu is an online-retail seller operating on e-commerce marketplace - Amazon; started its operations in Feb-22
Promoter has infused INR 350 crs. of equity in the company.
Product Categories : Office Products, Musical Instruments, Eyewear, Handbags, Apparel, Shoes, Wireless accessories, Books''',
          '''Sales ~459 Crores (Sep, 2022)
Cash (including liquid investments) ~297 crores (Sep, 2022)
Profitable Company; Provisional PBT for Q2FY23 ~1.8%''',
          '95000',
          '3 CR',
          '90 days',
          '12.50%',
          '11.95%',
          'Cocoblu',
          'Cocoblu',
          '19 Jul 2023',
          'At Maturity',
          'Cocoblu',
          'Upfront security cheque obtained from vendor for the entire invoice amount',
        ],
        [
          'Manufacturing Tech',
          '''Zetwerk, founded by IIT Graduates in 2017, is a technology driven company that uses technology to streamline manufacturing across domains.
Zetwerk serves 200+ clients such as Indian Railways, GE, Indian Oil, L&T, TATA Steel, etc.
Zetwerk recently bagged a Rs. 126 cr order from L&T for the Mumbai – Ahmedabad bullet train project.''',
          '''Revenue for FY22(Provisional) are Rs. 4,309Cr.
PAT of Rs.11.8 Cr.
Cash and Bank Balances: Rs. 2,653 Cr
Total Debt of Rs. 275Cr
Strong pipeline worth Rs. 6000 Crores''',
          '95000',
          '2 CR',
          '90 days',
          '12.25%',
          '11.72%',
          'Zetwerk',
          'Zetwerk',
          '16-May-23',
          'At Maturity',
          'Zetwek',
          'Upfront security cheque obtained from Zetwerk for the entire invoice amount.',
        ],
        [
          'Construction Material',
          '''Aris Infra is a technology based B2B platform providing a wide array of building material products across the construction life cycle.
Aris is enabling Better Price Discovery and Transparency in construction material sector which currently is highly fragmented which helps construction companies to save on input cost. It Provides one-stop B2B platform for all construction and building material
Optimizing pricing by removing multiple brokers/retailers in input supply chain for construction companies''',
          '''Revenue CAGR of 25% during FY2022 on m-o-m basis
~50% of revenue from top 10 customers
~80-90% repeat business''',
          '95000',
          '1.42 CR',
          '60 days',
          '',
          '11.65%',
          'Aris Infra',
          'Aris Infra',
          '19-June-2023',
          'At Maturity',
          'Aris Infra',
          '''Upfront security cheque obtained from vendor for the entire invoice amount
Entire cash flow to be routed through escrow mechanism''',
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
              productid: invoicedetailsmodelobj?.data?.productsId.toString(),
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                      invoicedetailsmodelobj!.data!.slug ?? "",

                      // productDetails[0]['Company Name'][widget.pageIndex],
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
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
                textA4856_20500("Sector"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.sector ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("About the Company"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.aboutCompany ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Key Performance Metrics"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.keyPerformanceMetrics ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.minimumInvestment ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Total Deal Size"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.totalDealSize ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.tenure ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Pre-tax IRR"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.preTaxIrr ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Coupon Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.couponRate ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Vendor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.vendor ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Recourse On"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.recourseOn ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Settlement Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.settlementDate ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("PayOut Frequency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.payoutFrequency ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Payment Obligor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.paymentObligor ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Security Structure"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  invoicedetailsmodelobj!.data!.securityStructure ?? "",
                ),
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
            //               // productDetails[0]['header'][index],
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
            //               // productDetails[0]['content'][widget.pageIndex]
            //                   [index],
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
            //       itemCount: productDetails[0]['header'].length),
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
