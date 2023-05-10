import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class AlternativeFAQ extends StatefulWidget {
  const AlternativeFAQ({super.key});

  @override
  State<AlternativeFAQ> createState() => _AlternativeFAQState();
}

class _AlternativeFAQState extends State<AlternativeFAQ> {
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
                  "Alternative Investment Fund",
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
                        'Who can invest in an alternative investment fund?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          "Due to the risks involved, investing in an alternative investment fund is typically limited to accredited investors, institutional investors, and high-net-worth individuals.",
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
                      titleString: 'Can NRIs invest in AIF?',
                      contentString:
                          'NRIs (Non-Resident Indians) are allowed to invest in AIFs subject to compliance with the necessary rules and regulations as per the Foreign Exchange Management Act (FEMA) and other applicable laws.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'How to invest in an AIF?',
                      contentString:
                          'Proof of income, PAN card, and ID proof are required to invest in an AIF. The minimum investment amount for AIFs is INR 1 crore, while for angel funds, it is INR 25 lakhs.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Who regulates the AIF?',
                      contentString:
                          'The regulation of Alternative Investment Funds (AIF) in India is done by the Securities and Exchange Board of India (SEBI).  Investors can address their complaints against AIFs at the SEBI-regulated web-based centralized grievance redress system called SCORES or SEBI Complaint Redress System.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'How is an AIF tenure calculated?',
                      contentString:
                          'The tenure of any scheme of the AIF is calculated from the date of the final closing of the scheme.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What is the general fee structure under the AIF scheme?',
                      contentString:
                          'The fee structure under the AIF scheme includes a one-time setup fee (if applicable) and two types of compensation: a flat management fee charged proportionately every month based on the funds managed, and a performance-based fee computed based on a pre-agreed proportion of the profit earned over and above a predetermined threshold return.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Can an AIF accept investments from more than one investor?',
                      contentString:
                          'An AIF accepts two individuals as joint partners for a minimum investment of one crore rupees. Joint investors may include an investor and their spouse, parent, or child. Only two persons can act as joint investors for an AIF, and for any other investors acting as joint investors, the minimum investment amount of INR 1 crore shall apply.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What is the taxation on the secondary sale of AIF units by investors?',
                      contentString:
                          'When an investor exits an AIF by a transfer of units or partnership interests to another investor (this transaction is called a ‘secondary transfer’), gains on the sale of units may be taxable directly in the hands of the investors. The taxability of gains on the sale of AIF units during a secondary transfer will depend on the holding period of the units. If the holding period is more than 36 months, the sale would be categorized as a long-term capital gain and taxed at 20% with indexation. If the holding period is less than 36 months, it would be considered a short-term capital gain and taxed at the applicable slab rates.')
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
