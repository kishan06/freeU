import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class SecuritizedFAQ extends StatefulWidget {
  const SecuritizedFAQ({super.key});

  @override
  State<SecuritizedFAQ> createState() => _SecuritizedFAQState();
}

class _SecuritizedFAQState extends State<SecuritizedFAQ> {
  bool notCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.sp,
                      color: const Color(0xff000000),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Securitized Debt Instrument",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: notCollapsed
                            ? null
                            : Border.all(color: const Color(0xffCCCCCC)),
                        color: notCollapsed
                            ? const Color(0xff143C6D)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: ExpansionTile(
                      childrenPadding: EdgeInsets.all(15.h),
                      initiallyExpanded: notCollapsed,
                      onExpansionChanged: (value) {
                        setState(() {
                          notCollapsed = value;
                        });
                      },
                      trailing: Icon(
                        notCollapsed
                            ? Icons.remove_circle_outline_rounded
                            : Icons.add_circle_outline_rounded,
                        size: 18.sp,
                        color: notCollapsed ? Colors.white : Colors.black,
                      ),
                      title: Text(
                        'How does securitization work?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          "Securitization works by creating a special purpose vehicle (SPV) that purchases a pool of similar debt instruments from a lender or originator. The SPV then issues securities that are backed by the payments on those debts.",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What are the benefits of securitized debt instruments?',
                      contentString:
                          'Securitized debt instruments can provide several benefits, including diversification, liquidity, and potentially higher yields.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What are the risks of securitized debt instruments?',
                      contentString:
                          'Securitized debt instruments can be risky, especially if the underlying debt instruments are of low quality or if the credit ratings are not accurate. In addition, securitization can be complex and difficult to understand, which may lead to mispricing or overvaluation of the securities.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What types of debt instruments can be securitized?',
                      contentString:
                          'Almost any type of debt instrument can be securitized, including mortgages, auto loans, credit card debt, student loans, and corporate loans. The most common types of securitized debt instruments are mortgage-backed securities (MBS) and asset-backed securities (ABS).'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What are the regulations governing the securitized debt market?',
                      contentString:
                          'SEBI (Issue and Listing of Securitized Debt Instruments and Security Receipts) Regulations, introduced in 2008, established SDI.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Can NRI invest in SDI?',
                      contentString:
                          'Yes, Non-Resident Indians are permitted to invest in SDIs issued by Indian entities, subject to the rules and regulations set by the Reserve Bank of India (RBI) and the Securities and Exchange Board of India (SEBI).'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Are SDIs liquid investments?',
                      contentString:
                          "SDIs' liquidity may vary based on the transaction structure and market conditions. SDIs can be traded on secondary markets, providing liquidity to investors, but careful consideration of liquidity needs is advised before investing."),
                  sizedBoxHeight(15.h),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class FaqBox extends StatefulWidget {
  String titleString;
  String contentString;
  FaqBox({super.key, required this.titleString, required this.contentString});

  @override
  State<FaqBox> createState() => _FaqBoxState();
}

class _FaqBoxState extends State<FaqBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              isExpanded ? null : Border.all(color: const Color(0xffCCCCCC)),
          color: isExpanded ? const Color(0xff143C6D) : Colors.white,
          borderRadius: BorderRadius.circular(10.r)),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(15.h),
        initiallyExpanded: isExpanded,
        onExpansionChanged: (bool expanding) {
          setState(() {
            isExpanded = expanding;
          });
        },
        trailing: Icon(
          isExpanded
              ? Icons.remove_circle_outline_rounded
              : Icons.add_circle_outline_rounded,
          size: 18.sp,
          color: isExpanded ? Colors.white : Colors.black,
        ),
        title: Text(
          widget.titleString,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20.sp,
              color: isExpanded ? Colors.white : Colors.black),
        ),
        children: <Widget>[
          Text(
            widget.contentString,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
