import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class PeerFAQ extends StatefulWidget {
  const PeerFAQ({super.key});

  @override
  State<PeerFAQ> createState() => _PeerFAQState();
}

class _PeerFAQState extends State<PeerFAQ> {
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
                  "Peer To Peer Lending",
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
                        'How does Peer-to-Peer Lending work?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          "The Peer-2-Peer online platforms connects the lender (investor) with the borrower directly, after evaluating the credit worthiness of the borrowers. The borrower gets the loan, and the investor earn interest on the loan payments.",
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
                          'What are the benefits of peer-to-peer lending? ',
                      contentString:
                          'Peer-to-peer lending can provide several benefits, including lower interest rates for borrowers, higher returns for investors, and more flexible loan terms. Peer-to-peer lending can also provide access to credit for borrowers who may not qualify for traditional bank loans.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Who can invest in Peer-to-peer?',
                      contentString:
                          'Any individual, body of individuals, HUF, firm, society or any artificial body, whether incorporated or not, with a valid bank account in India and PAN card can be a lender on a P2P Platform. Also, any NBFC listed by the RBI or companies under the Indian Companies Act can apply as lenders or investors as well.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What happens in the case of delayed non-payment by a borrower?',
                      contentString:
                          'Usually, the borrower is charged with an additional penal interest charge for the duration of the delay, and the borrower will be required to pay directly to his lender.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Are there any restrictions on the maximum amount a lender can invest on peer-to-peer?',
                      contentString:
                          'Across all peer-to-peer lending platforms regulated by the RBI you can invest a maximum of ₹50 lakhs. However, if a lender lends above Rs 10,00,000, a certificate from a practising Chartered Accountant certifying minimum net-worth of Rs 50,00,000.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString: 'Is P2P lending regulated?',
                      contentString:
                          "Yes, only NBFCs with P2P license can enable P2P Lending. Every P2P lender should obtain a certificate of registration from the RBI."),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What are the risks of peer-to-peer lending?',
                      contentString:
                          'The main risk of peer-to-peer lending is the possibility of default by the borrower. If the borrower defaults on the loan, investors may lose a portion or all of their investment. All the P2P platforms try and minimize the lender’s risks through a strict, thorough verification and credit underwriting process.'),
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
