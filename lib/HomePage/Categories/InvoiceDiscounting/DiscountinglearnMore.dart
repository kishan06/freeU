import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class DiscountingLearnMore extends StatefulWidget {
  const DiscountingLearnMore({super.key});

  @override
  State<DiscountingLearnMore> createState() => _DiscountingLearnMorexState();
}

class _DiscountingLearnMorexState extends State<DiscountingLearnMore> {
  List discountingLearnMoreData = [
    // /
    {
      "index": 0,
      "question": "What is Invoice Discounting?",
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/invoiceviewproductsproducts");
          },
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
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
                    "Invoice Discounting",
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
                    if (index == 0) {
                      return fracReal2();
                    } else if (index == 1) {
                      return fracReal9();
                    } else if (index == 2) {
                      return fracReal3();
                    } else if (index == 3) {
                      return fracReal6();
                    } else if (index == 4) {
                      return fracReal5();
                    } else if (index == 5) {
                      return fracReal8();
                    } else {
                      return fracReal1(
                          discountingLearnMoreData[index]["question"],
                          discountingLearnMoreData[index]["ans"]);
                    }
                  },
                  separatorBuilder: (context, index) {
                    return sizedBoxHeight(20.h);
                  },
                  itemCount: discountingLearnMoreData.length),
            ),
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
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

  Widget fracReal4(String bold, String sent) {
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
        "bold": "Risk of defaulting: ",
        "sent":
            "A risk involved is that the customer of the borrower does not return the funds against which the invoices were raised. There may also be a default situation where the borrowing entity itself does not repay the investors."
      },
      {
        "bold": "Delay in Payment: ",
        "sent":
            "In case there is a delay in payment from the customer of the borrower, there may be a delay in the investor receiving his returns."
      },
      {
        "bold": "Fraudulent Invoices: ",
        "sent":
            "There is a risk of errors or fraud in the invoice discounting process, such as fake invoices or the borrower misrepresenting the quality of their receivables. Investors should carefully assess the operational processes of the invoice discounting platform to ensure that there are appropriate controls and risk management procedures in place."
      },
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
          "What are the investment risks involved in Invoice Discounting?",
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bulletPoints5.length,
                itemBuilder: (context, index) {
                  return bulletText(bulletPoints5[index]["sent"],
                      bulletPoints5[index]["bold"]);
                }),
            const SizedBox(
              height: 10,
            ),
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
              style: const TextStyle(
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
          ),
        ),
      ],
    );
  }

  Widget fracReal2() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
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
          'What is Invoice Discounting?',
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "Invoice discounting is a form of financing that allows businesses to access cash by borrowing against their outstanding invoices. Here is how it works:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            sizedBoxHeight(20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "1. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Expanded(
                    child: Text(
                  "A business sells its products or services to its customers on credit, generating invoices for the amounts owed.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "2. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Expanded(
                    child: Text(
                  "Rather than waiting for those invoices to be paid, the business can sell them to a third-party financing company, called a factor.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "3. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Expanded(
                    child: Text(
                  "The factor then provides the business with a percentage of the invoice amount, typically ranging from 70% to 90%.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "4. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Expanded(
                    child: Text(
                  "Once the factor receives payment from the customer, it pays the remaining balance of the invoice amount to the business, less a fee for providing the financing.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                )),
              ],
            ),
            sizedBoxHeight(20.h),
            Text(
              "From an investment perspective, invoice discounting can be an attractive option for investors looking for low-risk, short-term investments with relatively stable returns. However, it's important for investors to carefully evaluate the creditworthiness of the businesses they are investing in, as well as the creditworthiness of the customers of those businesses.",
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

  Widget fracReal6() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
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
          'What are the advantages/benefits of invoice discounting?',
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "For the Issuer (Borrower):",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
            sizedBoxHeight(20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "•	Improved liquidity/cash flow: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text:
                                "One of the biggest benefits of invoice discounting for the seller/vendor is improved liquidity, as it allows them to access the instant cash when they need it, rather than waiting for their customers to pay their invoices. This can be particularly helpful for businesses that are experiencing cash flow difficulties or are looking to invest in growth opportunities.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 18.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "•	Reduced operating cycle time: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text:
                                "The invoice discounting process is often much quicker than traditional financing options, allowing companies to access funds in as little as one day. This can help reduce the operating cycle time for the business and improve its overall efficiency.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 18.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "•	No collateral required: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text:
                                "Unlike many other types of financing, invoice discounting does not require the borrower to put up collateral, such as bonds or stocks, to secure the funds. This can be particularly helpful for businesses that don't have significant assets to pledge as collateral.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 18.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(20),
            Text(
              "For the Investor (Lender):",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
            sizedBoxHeight(20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "•	Short-term investment with high returns: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text:
                                "One of the key benefits of investing in invoice discounting is the potential for high returns in a short amount of time. This can make it an attractive option for investors looking for short-term investment opportunities with a relatively low level of risk.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 18.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "•	Stable investment: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text:
                                "Because the investment is made against an invoice, it is not dependent on market conditions, and is typically more stable than other types of investments that may be subject to market fluctuations.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 18.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "•	Diversification: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text:
                                "Investors can choose to invest in multiple invoices, thereby diversifying their portfolio and reducing their overall risk exposure. This can be particularly helpful for investors who are looking to build a diversified investment portfolio with a mix of high- and low-risk assets.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 18.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(20.h),
          ],
        ),
      ),
    );
  }

  Widget fracReal3() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
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
          'Who can invest in Invoice Discounting?',
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "Any individual, HUF, Partnership Firm/LLP. Private/Public Limited Companies/ NBFC/Banks or NRI can invest in this product.",
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

  Widget fracReal8() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
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
          'What are the tax implications on gains from invoice discounting?',
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "The gains will be taxed according to the income tax slab of the individual.",
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

  Widget fracReal9() {
    List bulletPoints6 = [
      {
        "bold": "1. Payment flows: ",
        "sent":
            "Factors may evaluate the payment flows associated with the invoices, such as the use of an escrow account or the visibility of the parties' bank accounts. These mechanisms can help provide additional security and reduce the risk of fraud."
      },
      {
        "bold": "2. The credibility of parties: ",
        "sent":
            "Factors may also assess the credibility of the parties involved in the transaction, such as the buyer, seller, and any intermediaries. This may involve reviewing prior records of raised invoices and timely payments, as well as the credit history of the parties involved."
      },
      {
        "bold": "3.	Working capital cycles: ",
        "sent":
            "Factors may analyze the working capital cycles of the businesses involved in the transaction, including the aging of receivables and payables, and the cash realization cycles. This can help ensure that the parties have sufficient liquidity to meet their obligations and reduce the risk of default."
      },
      {
        "bold": "4.	Verification of invoices: ",
        "sent":
            "Factors may also verify the authenticity of the underlying invoices and validate the delivery of goods or services. This can help ensure that the invoices are not fraudulent and that the goods or services have been properly delivered."
      },
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
          "What are the different types of invoice discounting?",
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
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "> ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Sales Invoice Financing (SIF) – Here, a seller obtains funds by going to a third-party financier who pays for the invoices raised by the seller on the buyer/customer. Thus, the seller here gets that fund upfront from the financier, on behalf of the Buyer. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "> ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Purchase Invoice Financing (PIF) – A buyer approaches the financier to discount the invoices raised on them by the seller and requests the financier to pay the seller on his behalf.",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(20),
            Text("Credit Assessment Process:",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600)),
            sizedBoxHeight(10),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          "Credit assessment is an important part of the invoice discounting process, as it helps ensure that the underlying invoices are legitimate, the parties involved are creditworthy and underlying risks are mitigated. Here are some of the key factors that may be considered in the ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 18.sp,
                      )),
                  TextSpan(
                      text: "credit assessment process:",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bulletPoints6.length,
                itemBuilder: (context, index) {
                  return bulletTextwithheading(bulletPoints6[index]["sent"],
                      bulletPoints6[index]["bold"]);
                }),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget bulletTextwithheading(String sent, String bold) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
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
          ),
        ),
      ],
    );
  }
}
