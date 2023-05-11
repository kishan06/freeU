import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class LeasingFAQ extends StatefulWidget {
  const LeasingFAQ({super.key});

  @override
  State<LeasingFAQ> createState() => _LeasingFAQState();
}

class _LeasingFAQState extends State<LeasingFAQ> {
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
                  'Asset backed leasing',
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
                        'How does lease-based financing work?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          'In a lease-based financing arrangement, the leasing company purchases the asset and leases it to the company in exchange for regular lease payments. The lease payments typically include a finance charge that covers the cost of the asset plus interest, and the lease term is usually shorter than the expected useful life of the asset.',
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
                          'How does lease-based financing differ from traditional financing?',
                      contentString:
                          'Lease-based financing is distinct from traditional financing as the company leases the asset instead of owning it. It requires less upfront capital and provides greater equipment flexibility. However, it can be more expensive overall due to finance charges and interest payments.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Who provides lease-based financing?',
                      contentString:
                          'Lease-based financing can be provided by banks, leasing companies, and other financial institutions.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What types of assets can be leased through lease-based financing?',
                      contentString:
                          'Almost any type of asset can be leased through lease-based financing, including equipment, machinery, vehicles, and real estate.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Is lease-based financing a secured investment?',
                      contentString:
                          'Lease-based financing is considered secure as it is backed by assets as collateral.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Is ownership of the asset preserved in lease-based financing?',
                      contentString:
                          'Yes. the lessor (person leasing) will transfer all risk and rewards associated with ownership of the asset to the lessee (borrower) but without transferring the asset’s ownership.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Is there a default risk with lease-backed financing?',
                      contentString:
                          'In the event that a company fails to repay a lease rental investment, the investor may have the right to take legal action to recover the outstanding amount. While there is no 100% guarantee, most platforms have safeguards in place for reclaiming the asset and for releasing the same.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'What will be the tax implications?',
                      contentString:
                          "The rentals earned from lease-based financing investments are taxable under the head “Income from Other Sources”. The applicable tax rate depends on the investor's income tax slab."),
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
