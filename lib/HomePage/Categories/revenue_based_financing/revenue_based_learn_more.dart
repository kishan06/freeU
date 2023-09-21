import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/ViewModel/FAQ/FAQ.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class RevenueBasedLearnMore extends StatefulWidget {
  const RevenueBasedLearnMore({super.key});

  @override
  State<RevenueBasedLearnMore> createState() => _RevenueBasedLearnMoreState();
}

class _RevenueBasedLearnMoreState extends State<RevenueBasedLearnMore> {
  List FracRealEstData = [
    {
      "question": "What is Revenue-Based Financing?",
      "ans":
          "Revenue-based financing, also known as Royalty based financing, is a relatively new alternative method of financing where the investor or a lender lends funds/capital to a business/firm and takes payments, as a pre-determined percentage from the borrower-company's monthly revenue flow in exchange for the capital invested. Such financing helps companies to raise equity-free funds for future growth without diluting capital. It also ensures that businesses have sufficient capital to take care of their inventory and marketing needs. Revenue-based financing is an alternative to conventional equity-based investments (like venture capital or angel investment) and debt financing. \n \nThis kind of financing is entirely dependent on the borrower firm's success and profit. When it is high, the royalty payment is high, and when profits are low, returns are low too. Therefore, in Revenue-based financing, no interest is charged – and this is where it differs from debt financing. "
    },
    {
      "question": "Companies that use the Revenue Based Financing Model",
      "ans":
          "Small & Medium Enterprises and Early-Stage startups in D2C, SaaS, and edtech sectors. "
    },
    {
      "question":
          "What should the investor look out for in Revenue Based Financing? ",
      "ans":
          "Firstly, as an investor, it is very important to do research and gather data about the borrower firm so that you can predict growth before lending your funds. An example of gathering data can be asking for digital marketing spending, monthly spends, checking their performance and revenue in the last 6-12 months, etc. For a firm where growth projections look good and lucrative, the process can be quick and the investor can confidently lend the fund."
    },
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
    {
      "question": "Taxation ",
      "ans":
          "Revenue received by the investor will be taxable under the head Income from Other Sources as per the investor's tax slab. "
    },
    {
      "question": "How does revenue-based financing work? ",
      "ans":
          "In a revenue-based financing arrangement, the investor provides funding to the company in exchange for a percentage of its revenue. The percentage is usually in the range of 1% to 10%, depending on the size of the investment and the risk level of the company. The company then makes regular payments to the investor based on its revenue until the predetermined amount has been paid back, plus a return on the investment."
    },
    {
      "question":
          "How does revenue-based financing differ from traditional financing?",
      "ans":
          "Revenue-based financing differs from traditional financing in that it is based on a percentage of future revenue rather than taking on debt or giving up equity. It also offers more flexible repayment terms and can be a better fit for companies with limited assets or a non-traditional business model. "
    },
    {
      "question": "What are the risks of RBF for investors?",
      "ans":
          "As with any investment, there are risks associated with RBF. These include the possibility of the company not generating enough revenue to repay the investment and the potential for changes in the market or industry that could negatively impact the company's revenue. Additionally, there may be challenges in accurately tracking and verifying the company's revenue."
    },
    {
      "question": "What happens if a company fails to repay an RBF investment?",
      "ans":
          """If a company fails to repay an RBF investment, the investor may have the right to take legal action to recover the outstanding amount. However, the investor's ability to recover the investment may depend on the terms of the agreement and the assets that the company has available to repay the investment."""
    },
    {
      "question": "Who can invest in revenue-based financing?",
      "ans":
          "Revenue-based financing can be provided by angel investors, venture capital firms, and other financial institutions. Any Indian citizen, HUF, Company, and NRI (through NRE or NRO account) can invest in an RBF opportunity."
    },
  ];

  Future? myfuture;

  @override
  void initState() {
    myfuture = FAQ().revenueBasedFinancingApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/revenueviewproducts");
          },
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: FutureBuilder(
        future: myfuture,
        builder: (ctx, snapshot) {
          if (snapshot.data == null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Center(child: CircularProgressIndicator())],
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  '${snapshot.error} occured',
                  style: TextStyle(fontSize: 18.spMin),
                ),
              );
            }
          }
          return _buildBody();
        },
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
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
                  "Revenue-based Financing",
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
                  return fracReal1(
                    revenueBasedfaq!.data![index].faqQuestion ?? "",
                    revenueBasedfaq!.data![index].faqAnswer ?? "",
                  );
                },
                separatorBuilder: (context, index) {
                  return sizedBoxHeight(20.h);
                },
                itemCount: revenueBasedfaq!.data!.length),
          ),
        ],
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
      "RBF is designed to help businesses grow by providing them with the necessary capital to invest in their growth plans. This can help businesses scale faster and more sustainably.",
      "Both Lenders and borrowers share the same goal, which is the growth of the company, and that makes repayment easier and quicker.",
      "Monthly repayment is done as a percentage of the future revenue- therefore the borrower-firm pays more when revenues are more, and pays less when the revenues are less, keeping the additional profit.",
      "Maturity period depends on the actual revenue path. ",
      "The lender usually takes 3-6% of revenue back, typically spread over three years, or until the decided amount (usually a multiple of the original invested capital) has been paid. ",
      "Generally, the repayment amount in revenue-based financing is 1.5 to 2.5 times the principal loan.",
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
          "Features of Revenue-Based Financing",
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
                  return bulletText(bulletPoints[index]);
                }),
          ],
        ),
      ),
    );
  }

  Widget fracReal5() {
    List bulletPoints = [
      // /
      {
        "title": "No Equity Dilution: ",
        "desp":
            "One of the biggest advantages of RBF is that it allows businesses to raise capital without giving up equity. This means that business owners retain full control over their companies and can make decisions without the input of outside investors."
      },
      {
        "title": "Flexible Repayment Terms: ",
        "desp":
            "RBF repayment terms are flexible and can be structured in a way that suits the unique needs of the business. This means that payments can be adjusted based on revenue, which can help ease cash flow concerns."
      },
      {
        "title": "Accessible: ",
        "desp":
            "RBF is accessible to a wide range of businesses, including those that may not have the financial history or credit score required to qualify for traditional bank loans. This makes it a popular choice for early-stage startups."
      },
      {
        "title": "No Collateral: ",
        "desp":
            "Raising capital through RBF is easier, and faster as mostly, it does not require any collateral or personal guarantee."
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
          "Advantages of Revenue-Based Financing",
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
                  return bulletTextBoldTitle(
                      title: bulletPoints[index]["title"],
                      text: bulletPoints[index]["desp"]
                      // /
                      );
                }),
          ],
        ),
      ),
    );
  }

  Widget fracReal6() {
    List bulletPoints = [
      {
        "title": "High APR: ",
        "desp":
            "One of the biggest disadvantages of RBF is that it can be more expensive than other forms of financing. This is because the annual percentage rate (APR) can be high, which can be costly for the business in the long run.",
      },
      {
        "title": "Revenue-Sharing: ",
        "desp":
            "RBF requires businesses to share a percentage of their revenue with investors until the financing is repaid. This can be a disadvantage for businesses that have high margins but low revenue.",
      },
      {
        "title": "Limited Amount of Capital: ",
        "desp":
            "RBF may not be suitable for businesses that require a large amount of capital. The amount of financing available through RBF is typically lower than what is available through other financing options.",
      },
      {
        "title": "Potential for Conflict: ",
        "desp":
            "RBF investors have a financial stake in the success of the business, which can lead to conflicts of interest between investors and business owners. This can be mitigated by setting clear expectations and maintaining open communication.",
      },
      {
        "title": "Minimal Regulation: ",
        "desp":
            "Investors should do careful research before entering into any agreement as there is little oversight in this sector. ",
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
          "Disadvantages of Revenue-Based Financing",
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
                  return bulletTextBoldTitle(
                      title: bulletPoints[index]["title"],
                      text: bulletPoints[index]["desp"]
                      // /
                      );
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

  Widget bulletTextBoldTitle({required String text, required String title}) {
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
                    text: title,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: text,
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
