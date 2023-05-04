import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class HedgeViewMore extends StatefulWidget {
  const HedgeViewMore({super.key});

  @override
  State<HedgeViewMore> createState() => _HedgeViewMoreState();
}

class _HedgeViewMoreState extends State<HedgeViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/hedgeviewproducts");
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
                Text(
                  "Hedge Funds",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  sizedBoxHeight(20.h),
                  faqAccod(
                    'What is Hedge Funds?',
                    '''As per SEBI Regulations, Hedge Fund means an AIF which employs diverse or complex trading strategies and invests in securities having diverse risks or complex products including listed and unlisted derivatives.
Hedge Funds are investments which collects capital from institutional and accredited investors, and invests them in domestic and international markets in order to generate high returns that are not corelated with market index returns. Naturally, hedge funds use risky investment strategies, and use a high minimum investment, charging a much higher rate compared to traditional investment funds.
''',
                  ),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What are the features in a Hedge Fund?',
                      '>	Firstly, it is imperative to understand that Hedge Funds are only for extremely rich, high-net worth individuals. '
                          '\n\n>	Hedge Funds usually charge 2% as the asset management fee and take up 20% of the profits earned as a fee.'
                          '\n\n>	The minimum ticket size to invest in hedge mutual funds is Rs 1 crore per investor and an entire fund needs to have a minimum corpus of Rs 20 crore. '
                          '\n\n>	Unlike mutual funds, hedge funds can take both short/long positions. In the case of Hedge Funds, every investor knows that it is the highest level of risk that they will take.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Who is an accredited investor?',
                      '“Accredited investor” means any person who is granted a certificate of accreditation by an accreditation agency who,'
                          '\n\n(i)	in case of an individual, Hindu Undivided Family, family trust or sole proprietorship has: '
                          '\n\n(A) annual income of at least two crore rupees; or '
                          '\n\n(B) net worth of at least seven crore fifty lakh rupees, out of which not less than three crores seventy-five lakh rupees is in the form of financial assets; or '
                          '\n\n(C) annual income of at least one crore rupees and minimum net worth of five crore rupees, out of which not less than two crore fifty lakh rupees is in the form of financial assets.'
                          '\n\n(ii)	in case of a body corporate, has net worth of at least fifty crore rupees;'
                          '\n\n(iii)	in case of a trust other than family trust, has net worth of at least fifty crore rupees;'
                          '\n\n(iv)	in case of a partnership firm set up under the Indian Partnership Act, 1932, each partner independently meets the eligibility criteria for accreditation'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'How to Hedge Funds work?',
                      'Hedge mutual funds pool money from larger investors like high networth individuals (HNI), endowments, banks, pension funds and commercial firms. They fall under the AIF (alternative investment funds)-category III. This pooled money is used to invest in securities in national and international markets. There is a long list of securities where hedge mutual funds can invest: Equities, bonds, real estate, currencies, convertible securities, derivatives among others.'
                          '\n\nThese funds use several, complex trading techniques. Hedge Funds invest in equities, debt, and derivatives. Examples of derivatives include futures and options. Like with equities and debt securities, the trading technique could be trading in a stock market or buying it directly from the company in a private placement. For example, with futures, there is a right or an obligation to buy or sell an underlying stock at a pre-determined price, date and time. Options trading are the same but without an obligation. This kind of investing automatically diversifies trading techniques.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Different Types of Hedge Funds',
                      '>x	Domestic hedge funds: Open to those investors that are subject to the origin country’s taxation.'
                          '\n\n>	Offshore hedge funds: Fund established outside of your own country, preferably in a low taxation country.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What are the different strategies of hedge fund investing?',
                      'Hedge funds can be categorized by the complex strategies their fund managers adopt:'
                          '\n\n>	Event driven: There are few event driven hedge funds that invest to take advantage of price movements generated by corporate events. For example: merger arbitrage funds and distressed asset funds.'
                          '\n\n>	Market neutral: Market-neutral funds aim to minimize market risks. This includes convertible bonds, short and long equity funds, and fixed-income arbitrage.'
                          '\n\n>	Long/Short selling: By definition, short-selling means that you sell a security without buying it but with the notion of buying it at a predetermined future date and price. You hope for the share price to drop on this predetermined future date and book profits.'
                          '\n\n>	Arbitrage: An arbitrage strategy involves the simple logic of buying and selling. Through this strategy, fund managers buy security from one market at a lower price and sell the same at a higher price in another market in order to make profit. Relative value arbitrage is used for buying and selling two very highly correlated securities simultaneously and book profits when the market are moving sideways. This is relative value arbitrage. Both securities could be from one, or multiple asset classes.'
                          '\n\n>	Market-driven: Hedge mutual funds also take advantage of global market trends before they make the decision to invest in securities. They look at global macros and how they will impact interest rates, equities, commodities and currencies.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What is the strategy followed by Hedge Fund managers? How is Hedge Fund different from a Mutual Fund?',
                      'When one invests in a Hedge Fund, the Fund Manager of a Hedge Fund company then further invests the funds in the securities market. But then how is it different from a mutual fund? The only major difference is the investor profile –from which stems all other differences. Hedge Funds are often called “The Rich Man’s Mutual Fund” Only the High Net-Worth individuals can invest in a Hedge Fund, whereas anyone can invest in a Mutual Fund. The minimum investment in a mutual fund is Rs 500, whereas in India, the minimum investment amount is 1 Cr, as per AIF SEBI regulations. '
                          '\n\nHedge Funds are covered under SEBI (AIF) category, whereas mutual funds are covered under SEBI (Mutual Fund) Category. '
                          '\n\nThe Mutual Funds, and Hedge Funds both further invest in the securities market. But the way they invest is different. The strategies used to invest these funds are vastly different. The Hedge Fund Managers invest the Hedge Funds in Derivatives market – Forward, Future, Options, Swaps. '
                          '\n\nThey also invest only in short selling stocks – that are the stocks not owned by the fund managers. They borrow the stocks, and when the stock value diminishes, they are returned. It is risky because there are chances of losses too, but Hedge Fund Managers have to adapt aggressive strategies to give high returns. '
                          '\n\nHedge Fund also used leverage, or borrowed funds as a strategy. By following these strategies, they generate maximum returns for the investors. The returns go to the investors, and the fund managers get a performance fee from the investors.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What is the taxation levied on Hedge Funds? Does it acts as a disadvantage for the investors?',
                      'The Category III AIF (hedge funds) has not been given a pass-through status on tax. This means that profit-income from Hedge funds will be taxable at the investment fund level. Hence, the tax obligation will not pass through to the hedge fund investors. This is a major drawback for this industry when you compare this with other mutual funds. Because of the tax burden hedge funds have not seen a huge growth.'),
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
