import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class InvoiceFAQ extends StatefulWidget {
  const InvoiceFAQ({super.key});

  @override
  State<InvoiceFAQ> createState() => _InvoiceFAQState();
}

class _InvoiceFAQState extends State<InvoiceFAQ> {
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
                  "Invoice discounting",
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
                        'What is invoice discounting?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          "Invoice Discounting is the practice of lending a working capital against a company’s unpaid invoices, in order to maintain the cash flow. This helps the companies with the capital crunch, and the lenders get back their money with interest",
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
                      titleString: 'How does invoice discounting work?',
                      contentString:
                          'Invoice discounting involves three parties: the business selling its invoices (the seller), the financing company (the funder), and the customer who owes money to the business (the debtor). The seller submits unpaid invoices to the funder who pays a percentage upfront (around 80-90%). The funder collects the full amount from the debtor and deducts their fee before paying the remaining amount to the seller.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Is Invoice Discounting a Secured Product? ',
                      contentString:
                          'No, Invoice Discounting is an Unsecured Product.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Can an NRI invest in Invoice Discounting?',
                      contentString:
                          'An NRI can register, and invest in Invoice Discounting opportunities. But he/she needs to provide proof of Indian citizenship, along with an Indian Passport to complete KYC. Additionally, one will require an NRO bank account for debiting and crediting funds.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What is the repayment period for invoice discounting?',
                      contentString:
                          'The loan tenure is the credit period that the seller agreed with the buyer as per the terms of sale. The period gets over on the last date of the credit period of the invoice or on the date of payment of invoice value, whichever is earlier.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What happens if the debtor does not pay the invoice?',
                      contentString:
                          "The main risk associated with invoice discounting is the risk of non-payment. If the debtor does not pay the invoice, the financing company may pursue legal action to recover the funds owed. However, the risk of non-payment is usually borne by the seller, who may be required to repurchase the invoice from the funder or provide additional collateral to secure the financing."),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'What will be the tax impact?',
                      contentString:
                          'These resulting gains are taxable at applicable marginal tax rates under the head “Income from Other Sources”. TDS provisions are not applicable.'),
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
  final String titleString;
  final String contentString;
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
