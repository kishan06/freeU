import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AlternativeInsvestment extends StatefulWidget {
  const AlternativeInsvestment({super.key});

  @override
  State<AlternativeInsvestment> createState() => _AlternativeInsvestmentState();
}

class _AlternativeInsvestmentState extends State<AlternativeInsvestment> {
  List AlternativeData = [
    {
      "question": "What are AIFs?",
      "ans":
          "Alternative Investment Fund (AIF) is a type of investment fund that is registered with the Securities and Exchange Board of India (SEBI). They are privately pooled investment vehicles generally set up by high-net-worth individuals, Indian or foreign, as per a defined investment policy. AIFs are distinctly different from traditional investment vehicles like mutual funds, or ETFs, and invest in non-traditional avenues such as venture capital, private equity, hedge funds, managed futures, etc, to make a profit, or benefit investors. AIFs provide an opportunity for investors to participate in alternative investments and diversify their portfolios, while also offering fund managers greater flexibility in their investment strategies."
    },
    {
      "question": "Who can invest in AIF?",
      "ans":
          "Any investor whether Indian, foreign, or non-resident Indian can invest in an AIF, as long as she/he has the required funds for investment, and is willing to take a risk on the unlisted and illiquid securities. To invest in an AIF investor must provide proof of income, PAN card, and ID proof",
    },
    {
      "question": "What is the minimum amount needed to invest in AIF?",
      "ans":
          '''All AIF categories in India except "angel fund" need a minimum investment of Rs. 1 crore, whereas, for the angel fund, that amount is Rs. 25 lakhs.  In the case of an employee or director of AIF, the minimum value of investment shall be Rs. 25 lakhs.''',
    },
    {
      "question": "In which formats can an AIF be set up?",
      "ans":
          "The AIF funds are set up in the form of a trust, limited liability partnership (LLP), or corporate body."
    },
    {
      "question": "Size of the AIF scheme",
      "ans":
          "Each AIF scheme should have a minimum corpus of Rs. 20 crores (Rs. 10 crores for angel funds). Along with that, there is also a cap on the number of investors each scheme can have. Most schemes cannot have more than 1000 investors, whereas angel funds can cater to a maximum of 200 investors."
    },
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
    {
      "question": "Alternative Investment Funds v/s Mutual Funds",
      "ans":
          '''Alternative Investment Funds offer a higher degree of flexibility than mutual funds as they invest in unlisted shares and also use shorting and leverage
For HNIs who are looking to diversify their portfolios and increase long-term returns on their investments while willing to take a considerable risk, AIFs seem like decent investment alternatives. But for those who can take low to high risk, mutual funds are the way to go. The decision between alternative investment funds and mutual funds should be based on your investment objectives, available capital, and long-term intentions.
 '''
    },
    {
      "question": "Difference between AIF and PMS",
      "ans":
          "In Portfolio Management System (PMS), each investor portfolio is different, and it’s a customized offering. PMS cannot pool money from different investors to create an investment fund. PMS investors can also choose to exit their investments anytime they want. On the other hand, AIFs pool money from investors and have a lock-in period ranging from 3 to 5 years."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/altenativecategories");
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Alternative Investment Funds(AIF)",
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
                      if (index == 5) {
                        return faqAccod4();
                      } else if (index == 6) {
                        return faqAccod5();
                      } else {
                        return faqAccod1(AlternativeData[index]["question"],
                            AlternativeData[index]["ans"]);
                      }
                    },
                    separatorBuilder: (context, index) {
                      return sizedBoxHeight(20.h);
                    },
                    itemCount: AlternativeData.length)
                ),
          ],
        ),
      ),
    );
  }

  Widget faqAccod({bool? expandAccod}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: expandAccod ?? false,
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
          'What are AIFs?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: "Poppins",
          ),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.brown,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "Alternative Investment Fund (AIF) is a type of investment fund that is registered with the Securities and Exchange Board of India (SEBI). They are privately pooled investment vehicles generally set y high-net-worth individuals, Indian or foreign, as per a defined investment policy. AIFs are distinctly different from traditional investment vehicles like mutual funds, or ETFs, and invest in non-traditional avenues such as venture capital, private equity, hedge funds, managed futures, etc, to make a profit, or benefit investors. AIFs provide an opportunity for investors to participate in alternative Investments and diversify their portfolios, while also offering fund managers greater flexibility in their investment strategies.",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget faqAccod1(String question, String ans) {
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
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: "Poppins",
          ),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.brown,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              ans,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget faqAccod4() {
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
          'What are the benefits of investing through an AIF?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: "Poppins",
          ),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.brown,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "> Regulations are in place:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " AIF is \n   regulated under SEBI AIF \n   Regulations. As per SEBI, if \n   investors pool funds to invest \n   collectively, they can only do it \n   through AIF. They cannot invest \n   through LLP, Private Limited \n   Companies, etc.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Higher Returns:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " AIFs give investors \n   exposure to alternate securities \n   and provide higher returns as \n   compared to traditional \n   investments. Therefore, by \n   investing in AIFs, investors improve \n   the overall performance of their \n   portfolios and help achieve long-\n   term capital appreciation.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Low Volatility:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " AIF investments, \n   unlike traditional investments, are \n   not dependent on the ups and \n   downs of the market and hence \n   less volatile as compared to \n   traditional equity investments.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Diversification:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " AIF gives vast \n   scope for diversification due to its \n   flexibility. Fund managers have the \n   scope to adopt multiple \n   investment options and market \n   strategies. This, in turn, helps in \n   the diversification of a portfolio.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Better Negotiation with AIF:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " AIF \n   deals with pooled funds that are \n   invested in good-sized amounts, \n   and hence provide better \n   negotiating powers to the \n   investors. In traditional \n   investments, investors only get \n   minimal ownership.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Professional Guidance:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: " Money is \n   managed by expert professionals",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget faqAccod5() {
    List bulletPoints = [
      "Although AIF is not correlated with conventional investments, these funds are also subject to higher volatility. Sometimes it does happen that if an AIF idea does not work in the market, the funds suffer heavy losses.",
      "The liquidity crisis is also another downside of AIF investments. Even after the lock-in is over, sometimes you cannot withdraw your investment completely. ",
      "Significant credit defaults on debt papers are also a possibility.",
      "The expense ratios are also very high in AIFs. High taxation rates, especially on the Category III AIFs may reduce the returns you receive from the fund.",
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
          'Downsides of AIF Investment',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: "Poppins",
          ),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.brown,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 16.sp,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(bulletPoints[index]);
                }),
          ],
        ),
      ),
    );
  }

  Widget bulletText(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "> ",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 18.sp,
            ),
          ),
        ),
      ],
    );
  }
}
