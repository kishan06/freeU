import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class HighYeldFAQ extends StatefulWidget {
  const HighYeldFAQ({super.key});

  @override
  State<HighYeldFAQ> createState() => _HighYeldFAQState();
}

class _HighYeldFAQState extends State<HighYeldFAQ> {
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
                  'High Yield Finance FAQ'.tr,
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
                        'How does high yield fixed income differ from investment-grade fixed income?'.tr,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          'High yield fixed income is issued by riskier companies with lower credit ratings, while investment- grade fixed income is issued by more creditworthy companies. High yield fixed income provides higher yields but also higher risk.'.tr,
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
                          'What types of securities are considered high yield fixed income?'.tr,
                      contentString:
                          'High yield fixed income securities include corporate bonds, municipal bonds, and asset-backed securities, among others. In the majority of cases the underlying instrument is a Non-Convertible Debenture (NCD)'.tr),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Is it possible for the investor to exit their investment before the maturity date?'.tr,
                      contentString:
                          'The investment is in the form of NCD, which can be transferred to another person provided one is able to find the buyer.'.tr),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Who can invest in high yielding NCDs?'.tr,
                      contentString:
                          'Resident investors and unincorporated bodies are eligible to invest in NCDs, while NRIs may invest in NCDs if the rules of the issuing company permit them to do so. It is rare for companies in India to allow NRIs to invest in a public issue NCD.'.tr),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'How will the investor receive repayments?'.tr,
                      contentString:
                          'Repayment to the investor will be made directly to the bank account linked to their demat account.'.tr),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What is the course of action in case of default in NCD investments?'.tr,
                      contentString:
                          'In such a scenario, the debenture trustee, who acts in the best interest of the debenture holders (investors), will take necessary measures to ensure that the issuer (borrower) rectifies the default and/or enforces security to recover the invested amount.'.tr),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Does the borrower deduct TDS on a payout in NCD investments, and what is the applicable rate?'.tr,
                      contentString:
                          "Yes, TDS is applicable on the interest component of the payout, and the borrower deducts 10% TDS at the source. The deducted TDS amount will be automatically reflected in the investor's form 26AS.".tr),
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
