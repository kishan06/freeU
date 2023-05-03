import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class PeerLearnMore extends StatefulWidget {
  const PeerLearnMore({super.key});

  @override
  State<PeerLearnMore> createState() => _PeerLearnMorexState();
}

class _PeerLearnMorexState extends State<PeerLearnMore> {
  List PeerLearnMoreData = [
    // /
    {
      "index": 0,
      "question": "How does P2P Lending work?",
      "ans":
          """The concept is straightforward. The P2P platforms or online platforms connect the potential borrowers directly with the investors or the lenders. Therefore, there are three parties involved. The Investing platform, the borrower, and the lender. 
The P2P lenders deposit the amount of money they want to invest through an online platform, to be distributed as loans. 
The investors get a choice to evaluate and choose which loans they wish to fund. These are generally used in personal loans or small business loans. The borrower and the lender directly connect and they set the prevailing terms and conditions like interest rates, tenure, repayment terms, fines, penalties, etc. 
Also, certain restrictions are placed by lenders like who can be potential investors. Marketplace lenders charge fees to borrowers and earn a percentage of interest on the loan.
The loan applicant or the borrower has to fill up a detailed financial profile on the peer-to-peer lending platform. The specialized platform then assesses the application based on the risk category and assigns a credit score to the potential applicant. 
Based on that, the interest rates the applicant will pay are decided, and he is provided with loan offers from potential lenders. 
The applicant then evaluates his options and chooses one. If you have a good credit score, interest rates are often lower than bank rates. 
Once the loan is approved, and the applicant gets the money, he/she is responsible for repaying the money with interest. 
The investing platform charges a fee from both the borrower and the lender. 
"""
    },
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
    {
      "question": "What happens usually if the borrower defaults?",
      "ans":
          """The P2P platform can support the lenders in the retrieval of the money, and also help file legal notice against the defaulter if necessary. But the P2P does not guarantee the recovery of lenders' money. Therefore, a very important aspect of any P2P lending is the online platform's risk scoring model, the assessment of a prospective borrower.
If the P2P platform does not have a sacrosanct risk-scoring model, and cannot measure the risk levels of the borrower, the lender's investments can end up being high-risk."""
    },
    {
      "question": "Are there any regulations for P2P lending?",
      "ans":
          """The Reserve Bank of India (RBI) has regulations for all Peer-to-Peer Lending platforms to protect the interest of lenders & borrowers. It made it mandatory for all the existing companies of P2P (Peer to Peer) to apply for Peer-to-Peer Lending License in case they want to continue working as a P2P platform.
RBI has set guidelines around how P2P lending platforms need to work. For example, any company that wants to offer P2P lending services needs to register for an NBFC-P2P license from the RBI.
RBI also ensures policies to reduce the risks in these platforms. As per RBI regulations, if a P2P platform shuts down, there is a pre-decided fallback business continuity plan that comes into effect in case of such events... The plan has all the details to keep the information of all lenders and borrowers safe, including all the nitty-gritty about servicing loans for the entire tenure in case of the closure of the platform. RBI has placed these regulatory measures in place to reduce the risks in P2P lending. 
According to the guidelines of the RBI, a lender cannot invest more than Rs. 10 lakhs across every Peer-to-Peer platform. Also, the RBI set a lending limit of up to Rs. 50,000/- which applies to the Borrower as well. RBI regulations for the functioning of the Peer-to-Peer Lending platform increase the credibility of such companies and have a role to play in the growing popularity of P2P in India."""
    },
    {
      "question": "How can you make money through P2P lending?",
      "ans":
          "For investors, earning depends on the appetite for risks. It mainly depends on two things. The creditworthiness of the borrowers, and the tenure for which you lend. Therefore, the longer your lending period, the higher will be your returns."
    },
    {
      "question":
          "What are the two things to look out for when you are measuring your returns? ",
      "ans":
          """"The default rate, and platform fees. This is mainly because your return amount in actuality will get reduced because of these. 
Example: If you earn a 20% return from your investment and the non-performing assets account for 5%, your net returns will come to 15%. If there is a 2% platform fee, your net return will be 13%."""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/peerproducts");
          },
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      // AppBar(
      //   backgroundColor: Color(0xFFFFFFFF),
      //   elevation: 0,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //     ),
      //     iconSize: 26,
      //     color: Colors.black,
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Peer - Peer Lending",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    if (index == 1) {
                      return fracReal4(
                        // PeerLearnMoreData[index]["bold"],
                        //   PeerLearnMoreData[index]["sent"]
                        );
                    } else if (index == 2) {
                      return fracReal5(
                        // PeerLearnMoreData[index]["bold"],
                        //   PeerLearnMoreData[index]["sent"]
                        );
                    } else {
                      return fracReal1(PeerLearnMoreData[index]["question"],
                          PeerLearnMoreData[index]["ans"]);
                    }

                    // return fracReal1(
                    //   FracRealEstData[index]["question"],
                    //   FracRealEstData[index]["ans"]
                    // );
                  },
                  separatorBuilder: (context, index) {
                    return sizedBoxHeight(20.h);
                  },
                  itemCount: PeerLearnMoreData.length),
            ),

            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
          ],
        ),
      ),
    );
  }

  Widget fracReal1(String question, String ans) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: false,
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          question,
          // 'What do you mean by Fractional Ownership?',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            Text(
              ans,
              // "Fractional ownership refers to a set-up wherein groups of investors pool in funds to purchase an asset.",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fracReal4() {
    List bulletPoints = [
      {
        "bold": "No Middleman: ",
        "sent":
            "For each commercial property, a Special Purpose Vehicle (SPV) is created. The pooled funds from investors are sent through a trusteeship company or LLP within which the created SPV operates."
      },
      {
        "bold": "Quick and Easy: ",
        "sent":
            "Since all the transactions are done online, through P2P platforms, the entire process, starting from application, to approval, is fast and convenient, sometimes within hours."
      },
      {
        "bold": "Multiple & secured Investment Options: ",
        "sent":
            "All the borrowers are verified on the online lending. It is thus safe for the Investors who can see all the details about the borrowers and decide on their own before lending money to them. Investors also have the option to diversify their investments by lending small amounts to multiple borrowers"
      },
      {
        "bold": "Lower Rates of Interest: ",
        "sent":
            "The lenders here directly provide loans to the potential borrowers without going through a bank. Hence the interest rates are also competitive."
      },
      {
        "bold": "More Flexibility than Traditional Loans: ",
        "sent":
            "P2P Lending offers more flexibility when compared to the more traditional approaches to securing a loan. The borrower can repay the capital amount together, much faster than the tenure if he/she wishes to. Also, you can change the monthly payment date anytime you want, to suit your finances."
      },
      {
        "bold": "Higher returns for investors ",
        "sent":
            "For investing, the P2P lending platform is a lucrative medium. There are a few platforms that provide the benefits of p2p lending with full transparency. Some Lending platforms offer Fixed-Maturity Peer-to-Peer Plans with high expected returns."
      },

      // "The SPV purchases the real estate property. All Fractional owners of the asset are shareholders in the SPV, in proportion to their investment-contribution in the real estate asset.",
      // "The SPV is created with the only purpose to hold the property on behalf of the investors. The investment platform dealing with the FRE accepts the responsibility of the SPV and the underlying property.",
      // "Each investors needs to sign relevant SPV agreements to be registered with the ‘Registrar of Companies (RoC)’ under the Ministry of Corporate Affairs (MCA).",
      // "The sale agreement is registered with the ‘Sub-Registrar’ office under whose local jurisdiction the property is situated. All the documents can be signed either digitally or physically. ",
      // "All the necessary documents, including the lease/rental agreement, title report, sale deed, and SPV agreement are shared with each of the investors. It is also accessible on the investor's dashboard in the investment platform portal. ",
      // "The 'Property Sale Deed' along with the SPV agreement copy becomes the proof of ownership, and records of the same are maintained in government records, public databases, and the investor's dashboard.",
      // "Once an investor expresses interest, he/she pays the initial amount to confirm. The investors can track and monitor the asset in real-time. If at any point, an investor wants to exit, there are multiple exit options usually available that offer a smooth exit. ",
    ];
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: false,
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          "What are the advantages of peer-to-peer lending?",
          // 'What do you mean by Fractional Ownership?',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(
                      bulletPoints[index]["sent"], bulletPoints[index]["bold"]);
                })
          ],
        ),
      ),
    );
  }

  Widget fracReal5() {
    List bulletPoints5 = [
      {
        "bold": "Default Risk by borrowers: ",
        "sent":
            "There is no market-related risk involved in P2P lending. Therefore, there is no risk that your investments in P2P lending will fluctuate daily. The primary risk with peer-to-peer lending is the risk of default by the borrower. This means that the borrower is not able to pay the principal amount or the interest."
      },
      // "The SPV purchases the real estate property. All Fractional owners of the asset are shareholders in the SPV, in proportion to their investment-contribution in the real estate asset.",
      // "The SPV is created with the only purpose to hold the property on behalf of the investors. The investment platform dealing with the FRE accepts the responsibility of the SPV and the underlying property.",
      // "Each investors needs to sign relevant SPV agreements to be registered with the ‘Registrar of Companies (RoC)’ under the Ministry of Corporate Affairs (MCA).",
      // "The sale agreement is registered with the ‘Sub-Registrar’ office under whose local jurisdiction the property is situated. All the documents can be signed either digitally or physically. ",
      // "All the necessary documents, including the lease/rental agreement, title report, sale deed, and SPV agreement are shared with each of the investors. It is also accessible on the investor's dashboard in the investment platform portal. ",
      // "The 'Property Sale Deed' along with the SPV agreement copy becomes the proof of ownership, and records of the same are maintained in government records, public databases, and the investor's dashboard.",
      // "Once an investor expresses interest, he/she pays the initial amount to confirm. The investors can track and monitor the asset in real-time. If at any point, an investor wants to exit, there are multiple exit options usually available that offer a smooth exit. ",
    ];
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: false,
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          "What is the risk/disadvantage involved in P2P lending?",
          // 'What do you mean by Fractional Ownership?',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints5.length,
                itemBuilder: (context, index) {
                  return bulletText(bulletPoints5[index]["sent"],
                      bulletPoints5[index]["bold"]);
                }),
            SizedBox(
              height: 10,
            ),
            Text(
              "One argument given to counter the credit risk is that investors can diversify their investments across various high-creditworthy borrowers. This strategy cannot make these investments risk-free entirely but helps minimize it.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bulletText(String sent, String bold) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "> ",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: bold,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: sent,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    )),
              ],
            ),
            // sent,
            // style: TextStyle(
            //   color: Colors.black,
            //   fontFamily: "Poppins",
            //   fontSize: 18.sp,
          ),
        ),
      ],
    );
  }

  // Widget fracReal2() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'Why invest in Commercial Real Estate (CRE)?',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget fracReal3() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'How does it work?',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget fracReal4() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'Advantages of Fractional Real Estate Investing',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget fracReal5() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'Platforms that provide investment opportunity in Fractional Real Estate',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
