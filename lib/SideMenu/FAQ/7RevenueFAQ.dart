import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class RevenueFAQ extends StatefulWidget {
  const RevenueFAQ({super.key});

  @override
  State<RevenueFAQ> createState() => _RevenueFAQState();
}

class _RevenueFAQState extends State<RevenueFAQ> {
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
                  'Revenue Based Financing',
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
                        'How does revenue-based financing work?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          'In a revenue-based financing arrangement, the investor provides funding to the company in exchange for a percentage of its revenue. The percentage is usually in the range of 1% to 10%, depending on the size of the investment and the risk level of the company. The company then makes regular payments to the investor based on its revenue until the predetermined amount has been paid back, plus a return on the investment.',
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
                          'How does revenue-based financing differ from traditional financing?',
                      contentString:
                          'Revenue-based financing differs from traditional financing in that it is based on a percentage of future revenue rather than taking on debt or giving up equity. It also offers more flexible repayment terms and can be a better fit for companies with limited assets or a non-traditional business model.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                    titleString: 'How can NRIs invest?',
                    contentString:
                        'Non-Resident investors can invest through an NRO or NRE Account, although the returns and sale proceeds will be credited to their NRO account.',
                  ),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'What are the risks of RBF for investors?',
                      contentString:
                          "As with any investment, there are risks associated with RBF. These include the possibility of the company not generating enough revenue to repay the investment and the potential for changes in the market or industry that could negatively impact the company&#39;s revenue. Additionally, there may be challenges in accurately tracking and verifying the company's revenue."),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What happens if a company fails to repay an RBF investment?',
                      contentString:
                          "If a company fails to repay an RBF investment, the investor may have the right to take legal action to ecover the outstanding amount. However, the investor's ability to recover the investment may depend on the terms of the agreement and the assets that the company has available to repay the investment."),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Who invests in revenue-based financing?',
                      contentString:
                          'Revenue-based financing can be provided by angel investors, venture capital firms, and other financial institutions. Any Indian citizen, HUF, Company, and NRI can invest in an RBF opportunity.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'What will be the tax implications?',
                      contentString:
                          'The interest earned on revenue-based financing investments is taxable under the head “Income from Other Sources&quot;. The applicable tax rate depends on the investor&#39;s income tax slab. TDS of 10% is applicable on the interest component of payouts.'),
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
