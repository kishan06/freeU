import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/helper.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

import '../../viewModel/Investment/Investment.dart';

class ProductAction extends StatefulWidget {
  final int pageIndex;
  final String categories;
  final String routeId;

  ProductAction(
      {super.key,
      required this.pageIndex,
      required this.categories,
      required this.routeId});

  @override
  State<ProductAction> createState() => _ProductActionState();
}

class _ProductActionState extends State<ProductAction> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List<String> alternativeInvestmentFundHeader = [
    'Product Category',
    'Partner Platform',
    'Commitment Amount',
    'Contribution Amount',
    'Contribution Called Amount',
    'Contribution Uncalled Amount',
    'Date Of Initial Contribution',
    'Face Value/ NAV per Unit',
    'Principal (capital) repaid',
    'Gross Income',
    'Total Fees Paid (Set Up, Management, Operating)',
    'Net Income',
    'No. of Units Alloted',
    'No. of Units Reedemed',
    'Current Valuation',
    'Current NAV',
    'No Of Units Held',
    'Repayment Schedule',
  ];

  List<String> peerToPeerLendingHeader = [
    'Product Category',
    'Partner Platform',
    'Total Investment',
    'Principal Redemption',
    'Interest Paidout',
    'Net Principal Redemption',
    'Capitalised Interest',
    'Accrued Interest',
    'Portfolio Value',
    'Absolute Return (in Rs)',
    'Absolute Return (in %)',
    'Annualised Return',
    'Repayment Schedule',
  ];

  List<String> peerToPeerLendingFaircentHeader = [
    'Product Category',
    'Partner Platform',
    'Total Value',
    'Investment Amount',
    'All Time Amount Invested',
    'Interest Accrued',
    'Principal Redemption',
    'Net Interest Redemption',
    'Escrow Balance',
    'Average ROI',
    'Repayment Schedule',
  ];

  List<String> peerToPeerLendingFinancePeerHeader = [
    'Product Category',
    'Partner Platform',
    'All Time Investment Added',
    'Total Active Investments',
    'Net Expected Value At Maturity',
    'Net Asset Value',
    'Amount Withdrawn',
    'Interest Paidout',
    'Absolute Return (in Rs)',
    'Absolute Return (in %)',
    'Repayment Schedule',
  ];

  List<String> fractionalRealEstateHeader = [
    'Product Category',
    'Partner Platform',
    'Account Number',
    'SPV Details',
    'Total Value Of The Property',
    'Investment Value',
    'Investment Date',
    'Total Gross Interest',
    'TDS',
    'Total Net Interest',
    'Gross Entry Yield(%)',
    'Target Return',
    'Absolute Return Till Date',
    'Absolute Return In Date (in %)',
    'Repayment Schedule',
  ];

  List<String> invoiceDiscountingHeader = [
    'Product Category',
    'Partner Platform',
    'Product Name',
    'Counter-Party',
    'Investment Date',
    'Amount Invested',
    'Total Gross Repaid Amount',
    'Tenure (Days)',
    'Principal Payment Frequency',
    'Interest Payment Frequency',
    'Next Repayment Due Date',
    'Maturity Date',
    'Next Repayment Amount',
    'Expected IRR',
    'Repayment Schedule',
  ];

  List productDetails = [
    {
      "Company Name": [
        'NAVI Technologies NCD',
      ],
      "header": [
        'Product Category',
        'Partner Platform',
        'Asset Class',
        'Counter-Party',
        'Investment Date',
        'Amount Invested',
        'Total Gross Repaid Amount',
        'Status',
        'Expected IRR',
        'Tenure',
        'Payment Frequency',
        'Next Repayment Due Date',
        'Expected Maturity Date',
        'Next Repayment Amount',
        'Repayment Schedule',
      ],
      "content": [
        [
          contentText('High Yield Finance'),
          contentText('Jiraaf'),
          contentText('Corporate Debt(Unlisted)'),
          contentText('Navi Technologies CDNAV003'),
          contentText('29-Apr-23'),
          contentText('₹7,00,000'),
          contentText('Corporate Debt (Unlisted)'),
          contentText('Navi Technologies CDNAV003'),
          contentText('11.96%'),
          contentText('24 Months'),
          contentText('At Maturity'),
          contentText('31-May-23'),
          contentText('31-May-25'),
          contentText('₹6300'),
          Text(
            'Link Repayment Schedule',
            style: TextStyle(
                fontSize: 18.sp,
                color: Colors.blue,
                decoration: TextDecoration.underline),
          ),
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
          future: Investment()
              .InvestmentDetailsAPI(widget.routeId, widget.categories),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
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
              } else if (snapshot.hasData) {
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
                            Image.network(
                              widget.categories == "Alternative Investment Fund"
                                  ? alternativeInvestmentFundModel!.companyLogo!
                                  : widget.categories ==
                                          "Fractional Real Estate"
                                      ? fractionalRealEstateModel!.companyLogo!
                                      : (widget.categories ==
                                                  "Peer To Peer Lending" ||
                                              widget.categories ==
                                                  "Liquiloans" ||
                                              widget.categories == "Faircent" ||
                                              widget.categories ==
                                                  "Finance Peer")
                                          ? peerToPeerLendingModel!.companyLogo!
                                          : widget.categories ==
                                                      "Indian Financial Assets" ||
                                                  widget.categories ==
                                                      "Invoice Discounting" ||
                                                  widget.categories ==
                                                      "Clean and green asset" ||
                                                  widget.categories ==
                                                      "Venture Debt" ||
                                                  widget.categories ==
                                                      "High Yield Finance" ||
                                                  widget.categories ==
                                                      "Securitized Debt Instrument" ||
                                                  widget.categories ==
                                                      "Lease Based Financing" ||
                                                  widget.categories ==
                                                      "Revenue Based Financing"
                                              ? invoiceDiscountingModel!
                                                  .companyLogo!
                                              : "https://uat-vesale.mjunction.in//assets/images/no_image_available.jpg",
                              width: 80.w,
                              height: 54.h,
                            ),
                            SizedBox(
                              width: 14.h,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 132.w,
                              height: 75.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.categories ==
                                            "Alternative Investment Fund"
                                        ? alternativeInvestmentFundModel!
                                            .companyName!
                                        : widget.categories ==
                                                "Fractional Real Estate"
                                            ? fractionalRealEstateModel!
                                                .companyName!
                                            : (widget.categories ==
                                                        "Peer To Peer Lending" ||
                                                    widget.categories ==
                                                        "Liquiloans" ||
                                                    widget.categories ==
                                                        "Faircent" ||
                                                    widget.categories ==
                                                        "Finance Peer")
                                                ? peerToPeerLendingModel!
                                                    .companyName!
                                                : widget.categories ==
                                                            "Indian Financial Assets" ||
                                                        widget.categories ==
                                                            "Invoice Discounting" ||
                                                        widget.categories ==
                                                            "Clean and green asset" ||
                                                        widget.categories ==
                                                            "Venture Debt" ||
                                                        widget.categories ==
                                                            "High Yield Finance" ||
                                                        widget.categories ==
                                                            "Securitized Debt Instrument" ||
                                                        widget.categories ==
                                                            "Lease Based Financing" ||
                                                        widget.categories ==
                                                            "Revenue Based Financing"
                                                    ? invoiceDiscountingModel!
                                                        .companyName!
                                                    : "",
                                    style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height - 225.h,
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return index == 0
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Product Category",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.sp,
                                              color: const Color(0xff3A4856),
                                            ),
                                          ),
                                          contentText(widget.categories ==
                                                  "Alternative Investment Fund"
                                              ? alternativeInvestmentFundModel!
                                                  .basicDetails!
                                                  .productCategory!
                                              : widget.categories ==
                                                      "Fractional Real Estate"
                                                  ? fractionalRealEstateModel!
                                                      .basicDetails!
                                                      .productCategory!
                                                  : (widget.categories == "Peer To Peer Lending" ||
                                                          widget.categories ==
                                                              "Liquiloans" ||
                                                          widget.categories ==
                                                              "Faircent" ||
                                                          widget.categories ==
                                                              "Finance Peer")
                                                      ? peerToPeerLendingModel!
                                                          .category!
                                                      : widget.categories ==
                                                                  "Indian Financial Assets" ||
                                                              widget.categories ==
                                                                  "Invoice Discounting" ||
                                                              widget.categories ==
                                                                  "Clean and green asset" ||
                                                              widget.categories ==
                                                                  "Venture Debt" ||
                                                              widget.categories ==
                                                                  "High Yield Finance" ||
                                                              widget.categories ==
                                                                  "Securitized Debt Instrument" ||
                                                              widget.categories ==
                                                                  "Lease Based Financing" ||
                                                              widget.categories ==
                                                                  "Revenue Based Financing"
                                                          ? invoiceDiscountingModel!
                                                              .basicDetails!
                                                              .productCategory!
                                                          : ""),
                                          Divider(
                                            height: 25.h,
                                            thickness: 1.h,
                                            color: Colors.grey.shade400,
                                          ),
                                          //  sizedBoxHeight(10.h)
                                        ],
                                      )
                                    : index == 1
                                        ? Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Partner Platform",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.sp,
                                                  color:
                                                      const Color(0xff3A4856),
                                                ),
                                              ),
                                              contentText(widget.categories ==
                                                      "Alternative Investment Fund"
                                                  ? alternativeInvestmentFundModel!
                                                      .basicDetails!
                                                      .investmentPlatform!
                                                  : widget.categories ==
                                                          "Fractional Real Estate"
                                                      ? fractionalRealEstateModel!
                                                          .basicDetails!
                                                          .investmentPlatform!
                                                      : (widget.categories ==
                                                                  "Peer To Peer Lending" ||
                                                              widget.categories ==
                                                                  "Liquiloans" ||
                                                              widget.categories ==
                                                                  "Faircent" ||
                                                              widget.categories ==
                                                                  "Finance Peer")
                                                          ? peerToPeerLendingModel!
                                                              .basicDetails!
                                                              .investmentPlatform!
                                                          : widget
                                                                          .categories ==
                                                                      "Indian Financial Assets" ||
                                                                  widget.categories ==
                                                                      "Invoice Discounting" ||
                                                                  widget.categories ==
                                                                      "Clean and green asset" ||
                                                                  widget.categories ==
                                                                      "Venture Debt" ||
                                                                  widget.categories ==
                                                                      "High Yield Finance" ||
                                                                  widget.categories ==
                                                                      "Securitized Debt Instrument" ||
                                                                  widget.categories ==
                                                                      "Lease Based Financing" ||
                                                                  widget.categories ==
                                                                      "Revenue Based Financing"
                                                              ? invoiceDiscountingModel!
                                                                  .basicDetails!
                                                                  .investmentPlatform!
                                                              : ""),
                                              Divider(
                                                height: 25.h,
                                                thickness: 1.h,
                                                color: Colors.grey.shade400,
                                              ),
                                              //  sizedBoxHeight(10.h)
                                            ],
                                          )
                                        : index == 2
                                            ? widget.categories ==
                                                    "Fractional Real Estate"
                                                ? Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Account Number",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 20.sp,
                                                          color: const Color(
                                                              0xff3A4856),
                                                        ),
                                                      ),
                                                      contentText(
                                                          fractionalRealEstateModel!
                                                              .basicDetails!
                                                              .accountNumber!),
                                                      Divider(
                                                        height: 25.h,
                                                        thickness: 1.h,
                                                        color: Colors
                                                            .grey.shade400,
                                                      ),
                                                      //  sizedBoxHeight(10.h)
                                                    ],
                                                  )
                                                : widget.categories ==
                                                        "Alternative Investment Fund"
                                                    ? Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Commitment Amount",
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 20.sp,
                                                              color: const Color(
                                                                  0xff3A4856),
                                                            ),
                                                          ),
                                                          contentText(
                                                              alternativeInvestmentFundData[
                                                                  index]),
                                                          Divider(
                                                            height: 25.h,
                                                            thickness: 1.h,
                                                            color: Colors
                                                                .grey.shade400,
                                                          ),
                                                          //  sizedBoxHeight(10.h)
                                                        ],
                                                      )
                                                    : (widget.categories ==
                                                                "Peer To Peer Lending" ||
                                                            widget.categories ==
                                                                "Liquiloans" ||
                                                            widget.categories ==
                                                                "Faircent" ||
                                                            widget.categories ==
                                                                "Finance Peer")
                                                        ? Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                widget.categories ==
                                                                        "Faircent"
                                                                    ? "Total Value"
                                                                    : widget.categories ==
                                                                            "Finance Peer"
                                                                        ? "All Time Investment Added"
                                                                        : "Total Investment",
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: const Color(
                                                                      0xff3A4856),
                                                                ),
                                                              ),
                                                              contentText(
                                                                  peerToPeerData[
                                                                      index]),
                                                              Divider(
                                                                height: 25.h,
                                                                thickness: 1.h,
                                                                color: Colors
                                                                    .grey
                                                                    .shade400,
                                                              ),
                                                              //  sizedBoxHeight(10.h)
                                                            ],
                                                          )
                                                        : (widget.categories ==
                                                                    "Indian Financial Assets" ||
                                                                widget.categories ==
                                                                    "Invoice Discounting" ||
                                                                widget.categories ==
                                                                    "Clean and green asset" ||
                                                                widget.categories ==
                                                                    "Venture Debt" ||
                                                                widget.categories ==
                                                                    "High Yield Finance" ||
                                                                widget.categories ==
                                                                    "Securitized Debt Instrument" ||
                                                                widget.categories ==
                                                                    "Lease Based Financing" ||
                                                                widget.categories ==
                                                                    "Revenue Based Financing")
                                                            ? Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Product Name",
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.sp,
                                                                      color: const Color(
                                                                          0xff3A4856),
                                                                    ),
                                                                  ),
                                                                  contentText(
                                                                      invoiceDiscountingData[
                                                                          index]),
                                                                  Divider(
                                                                    height:
                                                                        25.h,
                                                                    thickness:
                                                                        1.h,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade400,
                                                                  ),
                                                                  //  sizedBoxHeight(10.h)
                                                                ],
                                                              )
                                                            : SizedBox()
                                            : index == 3
                                                ? widget.categories ==
                                                        "Fractional Real Estate"
                                                    ? Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "SPV Details",
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 20.sp,
                                                              color: const Color(
                                                                  0xff3A4856),
                                                            ),
                                                          ),
                                                          contentText(
                                                              fractionalRealEstateModel!
                                                                  .basicDetails!
                                                                  .spvDetails!),
                                                          Divider(
                                                            height: 25.h,
                                                            thickness: 1.h,
                                                            color: Colors
                                                                .grey.shade400,
                                                          ),
                                                          //  sizedBoxHeight(10.h)
                                                        ],
                                                      )
                                                    : widget.categories ==
                                                            "Alternative Investment Fund"
                                                        ? Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Contribution Amount",
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: const Color(
                                                                      0xff3A4856),
                                                                ),
                                                              ),
                                                              contentText(
                                                                  alternativeInvestmentFundData[
                                                                      index]),
                                                              Divider(
                                                                height: 25.h,
                                                                thickness: 1.h,
                                                                color: Colors
                                                                    .grey
                                                                    .shade400,
                                                              ),
                                                              //  sizedBoxHeight(10.h)
                                                            ],
                                                          )
                                                        : (widget.categories ==
                                                                    "Peer To Peer Lending" ||
                                                                widget.categories ==
                                                                    "Liquiloans" ||
                                                                widget.categories ==
                                                                    "Faircent" ||
                                                                widget.categories ==
                                                                    "Finance Peer")
                                                            ? Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    widget.categories ==
                                                                            "Faircent"
                                                                        ? "Investment Amount"
                                                                        : widget.categories ==
                                                                                "Finance Peer"
                                                                            ? "Total Active Investments"
                                                                            : "Principal Redemption",
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.sp,
                                                                      color: const Color(
                                                                          0xff3A4856),
                                                                    ),
                                                                  ),
                                                                  contentText(
                                                                      peerToPeerData[
                                                                          index]),
                                                                  Divider(
                                                                    height:
                                                                        25.h,
                                                                    thickness:
                                                                        1.h,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade400,
                                                                  ),
                                                                  //  sizedBoxHeight(10.h)
                                                                ],
                                                              )
                                                            : (widget
                                                                            .categories ==
                                                                        "Indian Financial Assets" ||
                                                                    widget.categories ==
                                                                        "Invoice Discounting" ||
                                                                    widget.categories ==
                                                                        "Clean and green asset" ||
                                                                    widget.categories ==
                                                                        "Venture Debt" ||
                                                                    widget.categories ==
                                                                        "High Yield Finance" ||
                                                                    widget.categories ==
                                                                        "Securitized Debt Instrument" ||
                                                                    widget.categories ==
                                                                        "Lease Based Financing" ||
                                                                    widget.categories ==
                                                                        "Revenue Based Financing")
                                                                ? Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "Counter-Party",
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              20.sp,
                                                                          color:
                                                                              const Color(0xff3A4856),
                                                                        ),
                                                                      ),
                                                                      contentText(
                                                                          invoiceDiscountingData[
                                                                              index]),
                                                                      Divider(
                                                                        height:
                                                                            25.h,
                                                                        thickness:
                                                                            1.h,
                                                                        color: Colors
                                                                            .grey
                                                                            .shade400,
                                                                      ),
                                                                      //  sizedBoxHeight(10.h)
                                                                    ],
                                                                  )
                                                                : SizedBox()
                                                : Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        widget.categories ==
                                                                "Alternative Investment Fund"
                                                            ? alternativeInvestmentFundHeader[
                                                                index]
                                                            : widget.categories ==
                                                                    "Fractional Real Estate"
                                                                ? fractionalRealEstateHeader[
                                                                    index]
                                                                : (widget.categories ==
                                                                            "Peer To Peer Lending" ||
                                                                        widget.categories ==
                                                                            "Liquiloans")
                                                                    ? peerToPeerLendingHeader[
                                                                        index]
                                                                    : widget.categories ==
                                                                            "Faircent"
                                                                        ? peerToPeerLendingFaircentHeader[
                                                                            index]
                                                                        : widget.categories ==
                                                                                "Finance Peer"
                                                                            ? peerToPeerLendingFinancePeerHeader[index]
                                                                            : (widget.categories == "Indian Financial Assets" || widget.categories == "Invoice Discounting" || widget.categories == "Clean and green asset" || widget.categories == "Venture Debt" || widget.categories == "High Yield Finance" || widget.categories == "Securitized Debt Instrument" || widget.categories == "Lease Based Financing" || widget.categories == "Revenue Based Financing")
                                                                                ? invoiceDiscountingHeader[index]
                                                                                : productDetails[0]['header'][index],
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 20.sp,
                                                          color: const Color(
                                                              0xff3A4856),
                                                        ),
                                                      ),
                                                      widget
                                                                  .categories ==
                                                              "Alternative Investment Fund"
                                                          ? alternativeInvestmentFundData[index] ==
                                                                  "Link Repayment Schedule"
                                                              ? alternativeInvestmentFundModel!
                                                                          .data!
                                                                          .statementReports ==
                                                                      null
                                                                  ? contentText(
                                                                          "NA")
                                                                  : repaymentScheduled(
                                                                      alternativeInvestmentFundModel!
                                                                          .data!
                                                                          .statementReports!)
                                                              : contentText(
                                                                  alternativeInvestmentFundData[
                                                                      index])
                                                          : widget.categories ==
                                                                  "Fractional Real Estate"
                                                              ? fractionalRealEstateData[index] ==
                                                                      "Link Repayment Schedule"
                                                                  ? fractionalRealEstateModel!
                                                                              .data!
                                                                              .statementReports ==
                                                                          null
                                                                      ? contentText(
                                                                          "NA")
                                                                      : repaymentScheduled(fractionalRealEstateModel!
                                                                          .data!
                                                                          .statementReports!)
                                                                  : contentText(
                                                                      fractionalRealEstateData[
                                                                          index])
                                                              : (widget.categories ==
                                                                          "Peer To Peer Lending" ||
                                                                      widget.categories ==
                                                                          "Liquiloans" ||
                                                                      widget.categories ==
                                                                          "Faircent" ||
                                                                      widget.categories ==
                                                                          "Finance Peer")
                                                                  ? peerToPeerData[index] ==
                                                                          "Link Repayment Schedule"
                                                                      ? peerToPeerLendingModel!.data!.statementReports ==
                                                                              null
                                                                          ? contentText(
                                                                          "NA")
                                                                          : repaymentScheduled(
                                                                              peerToPeerLendingModel!.data!.statementReports!)
                                                                      : contentText(peerToPeerData[index])
                                                                  : (widget.categories == "Indian Financial Assets" || widget.categories == "Invoice Discounting" || widget.categories == "Clean and green asset" || widget.categories == "Venture Debt" || widget.categories == "High Yield Finance" || widget.categories == "Securitized Debt Instrument" || widget.categories == "Lease Based Financing" || widget.categories == "Revenue Based Financing")
                                                                      ? invoiceDiscountingData[index] == "Link Repayment Schedule"
                                                                          ? invoiceDiscountingModel!.data!.repaymentSchedule == null
                                                                              ? contentText(
                                                                          "NA")
                                                                              : repaymentScheduled(invoiceDiscountingModel!.data!.repaymentSchedule!)
                                                                          : contentText(invoiceDiscountingData[index])
                                                                      : contentText(productDetails[0]['content'][widget.pageIndex][index]),
                                                      Divider(
                                                        height: 25.h,
                                                        thickness: 1.h,
                                                        color: Colors
                                                            .grey.shade400,
                                                      ),
                                                      //  sizedBoxHeight(10.h)
                                                    ],
                                                  );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 0.h,
                                );
                              },
                              itemCount: widget.categories ==
                                      "Alternative Investment Fund"
                                  ? alternativeInvestmentFundHeader.length
                                  : widget.categories ==
                                          "Fractional Real Estate"
                                      ? fractionalRealEstateHeader.length
                                      : (widget.categories ==
                                                  "Peer To Peer Lending" ||
                                              widget.categories == "Liquiloans")
                                          ? peerToPeerLendingHeader.length
                                          : widget.categories == "Faircent"
                                              ? peerToPeerLendingFaircentHeader
                                                  .length
                                              : widget.categories ==
                                                      "Finance Peer"
                                                  ? peerToPeerLendingFinancePeerHeader
                                                      .length
                                                  : (widget.categories ==
                                                              "Indian Financial Assets" ||
                                                          widget.categories ==
                                                              "Invoice Discounting" ||
                                                          widget.categories ==
                                                              "Clean and green asset" ||
                                                          widget.categories ==
                                                              "Venture Debt" ||
                                                          widget.categories ==
                                                              "High Yield Finance" ||
                                                          widget.categories ==
                                                              "Securitized Debt Instrument" ||
                                                          widget.categories ==
                                                              "Lease Based Financing" ||
                                                          widget.categories ==
                                                              "Revenue Based Financing")
                                                      ? invoiceDiscountingHeader
                                                          .length
                                                      : productDetails[0]
                                                              ['header']
                                                          .length),
                        ),
                      ],
                    ),
                  ),
                );
              }
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Center(child: CircularProgressIndicator())],
            );
          }),
    );
  }

  Widget repaymentScheduled(
    List<String> listV,
  ) {
    return InkWell(
      onTap: () {
        for (var i in listV) {
          Helper.downloadImage(i, context);
        }
      },
      child: Text(
        'Link Repayment Schedule',
        style: TextStyle(
            fontSize: 18.sp,
            color: Colors.blue,
            decoration: TextDecoration.underline),
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
