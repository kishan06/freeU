import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class PrivatePublicEquityViewMore extends StatefulWidget {
  const PrivatePublicEquityViewMore({super.key});

  @override
  State<PrivatePublicEquityViewMore> createState() =>
      _PrivatePublicEquityViewMoreState();
}

class _PrivatePublicEquityViewMoreState
    extends State<PrivatePublicEquityViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/privateinvestmentproducts");
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
                    "Private Investment in Public Equity Fund ",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  sizedBoxHeight(20.h),
                  faqAccod('What is Private Investment in Public Equity Fund?',
                      'PIPE funds are privately sourced funds from investors, usually reserved for public equity investments – which refers to the practice of private investors means buying shares of publicly traded stock at a price below the current price available to the public. Such sales are not executed through the stock exchanges.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'How does it work? ',
                      'Investors in PIPE, purchases a company stake and the company in return receives a capital to grow its business. The PIPE transactions give access to a capital at a lower cost than other underwritten offerings. This also increases institutional investments in the company, and improve the public float of securities.'
                          '\n\nPIPE transactions help medium and small-sized businesses to fund their projects with ease. PIPE transactions need less administration and paperwork when compared to a secondary (public) issue. The regulations for funding the business through PIPE are less than going for a secondary issue. Also, the time taken to fund an issue through PIPE is way lesser than a secondary issue. Hence companies prefer PIPE even though the capital inflow is less due to discounting of the share price.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Common features of a PIPE investment',
                      '>	Investors in PIPE deals usually look at a medium to long term with average holding period of three years.'
                          '\n\n>	Opportunities are much higher in smaller companies, with more growth seen in small sizes'
                          '\n\n>	Premium can go 50% higher than market. '
                          '\n\n>	Most common industries for PIPE- healthcare, life services, BFSI, Energy, Manufacturing, Technology, Consumer, Real Estate, Media, Metals & Mining, Automotives, Telecom.'
                          '\n\n>	Since they are public domain companies, a lot of time and cost is saved by the investor because Due Diligence is fast.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Advantages of PIPE deals',
                      '>	The investee does not have to care about under-subscription of the issue since the price of the stocks is already fixed between the PE firm and the investee company.'
                          '\n\n>	PIPE transactions are fast, and not as complex and time consuming as a fresh public issue of shares usually is, for a company. During a PIPE deal, a company sells newly issued shares at a price agreed, which may be converted into future shares by the investors.'
                          '\n\n>	PIPE deal investments are made in a publicly traded companies, and hence already under the scanner of the regulatory bodies, following regulatory obligations. Hence due diligence is already done, saving both the time and cost of the PE firm.'
                          '\n\n>	Those firms who wish to keep their dealing confidential can adopt the route of PIPE transactions where the confidentiality with respect to the purchase price is maintained.'
                          '\n\n>	The dilution is much less with PIPE deals, because it is made to private investors.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Disadvantages of PIPE deals',
                      '>	Unlike the control exercised by the Private equity investors, PIPE investors will neither get a seat in the board nor have a say in the business decisions of the company.'
                          '\n\n>	In most of the PIPE deals, a leeway is given to the investors through an offer of short-term liquidity through resale registration process. However, there are certain deals where a minimum lock-in period exists for the sale of securities.'
                          '\n\n>	The burden of payment of transaction fees is on the investor which is made from the investment only and which extends to the tune of 1 percent of the total investment made in the company.'),
                  sizedBoxHeight(15.h),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget faqAccod(String title, String content) {
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
          title,
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
              content,
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
}
