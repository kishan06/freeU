import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class Fractional1 extends StatefulWidget {
  const Fractional1({super.key});

  @override
  State<Fractional1> createState() => _Fractional1State();
}

class _Fractional1State extends State<Fractional1> {
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
                  "Fractional Real Estate",
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
                        'When I invest in a fractional ownership asset, what do I actually own?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          "You’ll own equity or debentures or both depending on the structure of SPV.",
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
                      titleString: 'Is FRE investment compliant?',
                      contentString:
                          'Yes. Since the investment is routed through an SPV and investors are given a shareholding in the very same SPV, all investment records are filed under the ROC (Registrar of Companies) and need to be compliant with the Companies Act. The investment portal dealing with FRE needs to have a license from RERA (Real Estate Regulatory Authority) in order to carry out its operations.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Can NRIs invest in Commercial Real Estate?',
                      contentString:
                          'Yes. Any Indian citizen or an NRI (Non-Resident Indian) can own commercial real estate provided that a valid KYC (Know Your Customer), and documents are there, and regulatory guidelines are met. But NRIs can only make investments through their NRO (non-resident ordinary) accounts.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What are the documents needed to invest in fractional ownership of real estate?',
                      contentString:
                          'PAN card, address proof (Aadhar/Passport), bank account details for transfer of money, and depending on the property, and the platform, sometimes demat account number.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Is fractional ownership risky? ',
                      contentString:
                          'All investments carry risks. Therefore, in the case of fractional ownership, risks inherent to properties are also applicable in fractional ownership. Typical risks include liquidity, re-lease ability if the tenant leaves, and potential loss of capital.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Modes of Exit from Fractional CRE?',
                      contentString:
                          "Exits happen in three ways—in the resale market is done through the investor's dashboard, private sales where investors are free to sell their fractional ownership to anyone on their own. The third way to exit fractional ownership is through complete asset sale, which requires agreement from the majority investors in the SPV."),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'How is Fractional Ownership different from investing in REIT?',
                      contentString:
                          'REIT (Real Estate Investment Trust)  are similar to mutual funds in that they pool funds from investors and invest in profitable real estate assets such as government bonds, direct equity, and stocks, among others. However, investors cannot choose the property to invest in with REITs, whereas fractional ownership allows investors to select their desired property.'),
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

  // Widget expansionFAQ(String titleString, String contentString) {
  // return
  //  Container(
  //   decoration: BoxDecoration(
  //       border:
  //           isExpanded ? null : Border.all(color: const Color(0xffCCCCCC)),
  //       color: isExpanded ? const Color(0xff143C6D) : Colors.white,
  //       borderRadius: BorderRadius.circular(10.r)),
  //   child: ExpansionTile(
  //     childrenPadding: EdgeInsets.all(15.h),
  //     initiallyExpanded: isExpanded,
  //     onExpansionChanged: (bool expanding) {
  //       setState(() {
  //         isExpanded = expanding;
  //       });
  //     },
  //     trailing: Icon(
  //       isExpanded
  //           ? Icons.remove_circle_outline_rounded
  //           : Icons.add_circle_outline_rounded,
  //       size: 18.sp,
  //       color: isExpanded ? Colors.white : Colors.black,
  //     ),
  //     title: Text(
  //       titleString,
  //       style: TextStyle(
  //           fontFamily: "Poppins",
  //           fontSize: 20.sp,
  //           color: isExpanded ? Colors.white : Colors.black),
  //     ),
  //     children: <Widget>[
  //       Text(
  //         contentString,
  //         style: TextStyle(
  //             color: Colors.white,
  //             fontFamily: "Poppins",
  //             fontSize: 16.sp,
  //             fontWeight: FontWeight.w300),
  //       ),
  //     ],
  //   ),
  // );

  // }
}
