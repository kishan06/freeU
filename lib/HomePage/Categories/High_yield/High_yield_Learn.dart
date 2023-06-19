import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class HighYieldLearn extends StatefulWidget {
  const HighYieldLearn({super.key});

  @override
  State<HighYieldLearn> createState() => _HighYieldLearnState();
}

class _HighYieldLearnState extends State<HighYieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/highyieldproducts");
          },
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
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
                    "High Yield Fixed Income",
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
                  sizedBoxHeight(30.h),
                  highyield0(),
                  sizedBoxHeight(15.h),
                  highyield1(),
                  sizedBoxHeight(15.h),
                  highyield2(),
                  sizedBoxHeight(15.h),
                  highyield3(),
                  sizedBoxHeight(15.h),
                  highyield4(),
                  sizedBoxHeight(15.h),
                  highyield5(),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'How does high yield fixed income differ from investment-grade fixed income? ',
                      'High yield fixed income is issued by riskier companies with lower credit ratings, while investment-grade fixed income is issued by more creditworthy companies. High yield fixed income provides higher yields but also higher risk.'),
                  sizedBoxHeight(15.h),
                  faqAccod('Types of HYFI Securities ',
                      'High yield fixed income securities include corporate bonds, municipal bonds, and asset-backed securities, among others. In the majority of cases the underlying instrument is a Non-Convertible Debenture (NCD)'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Is it possible for the investor to exit their investment before the maturity date?',
                      'The investment is in the form of NCD, which can be transferred to another person provided one is able to find the buyer.'),
                  sizedBoxHeight(15.h),
                  faqAccod('Who can invest in high yielding NCDs?',
                      'Resident investors and unincorporated bodies are eligible to invest in NCDs, while NRIs may invest in NCDs if the rules of the issuing company permit them to do so. It is rare for companies in India to allow NRIs to invest in a public issue NCD.'),
                  sizedBoxHeight(15.h),
                  faqAccod('How will the investor receive repayments?',
                      'Repayment to the investor will be made directly to the bank account linked to their demat account.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What is the course of action in case of default in NCD investments? ',
                      'In such a scenario, the debenture trustee, who acts in the best interest of the debenture holders (investors), will take necessary measures to ensure that the issuer (borrower) rectifies the default and/or enforces security to recover the invested amount.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Does the borrower deduct TDS on a payout in NCD investments, and what is the applicable rate?',
                      '''Yes, TDS is applicable on the interest component of the payout, and the borrower deducts 10% TDS at the source. The deducted TDS amount will be automatically reflected in the investor's form 26AS.'''),
                  sizedBoxHeight(15.h),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget highyield0() {
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
          'What is High Yield Fixed Income?',
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
                  color: AppColors.purpleL_474E88,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.purpleL_474E88,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              '''High Yield Fixed Income refers to bonds or other fixed-income securities issued by companies, governments, or other organizations that are deemed to carry a higher risk of default. As such, these securities typically offer a higher yield, or rate of return, to compensate investors for the increased risk. High-yield fixed-income securities are also known as "junk bonds," reflecting the perception that they have a higher likelihood of default than investment-grade bonds. Investors who are willing to take on this additional risk may seek out high-yield fixed-income securities to potentially earn higher returns.''',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            ),
            sizedBoxHeight(10.h),
            Text(
              '''Usually, if a company has a low risk of default, they have a good credit rating and is great for investment purposes. Similarly, a company with a high risk of default is considered risky for investment. High Yield Bonds are bonds of such companies, with a low credit rating, and like any other corporate bond, they promise to pay much higher interest because of their low credit ratings proportionate to the level of risk the investors are willing to take when buying these bonds. These are called 'High-Yield' because these bonds have a high chance of getting defaulted- and hence the firms pay a high yield to compensate for the big risk the investors take.''',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget highyield1() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        //showAccordion: true,
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
          'Manner of investment in High Yield Corporate Bonds',
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
                  color: AppColors.purpleL_474E88,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.purpleL_474E88,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "> Direct Investment:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: " Buying from \n   broker-dealers.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Indirect Investment:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " Buying \n   shares in mutual funds or \n   exchange-traded funds that focus \n   on high-yield bonds.",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500))
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget highyield2() {
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
          'Structuring of High-Yield Fixed Income',
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
                  color: AppColors.purpleL_474E88,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.purpleL_474E88,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              '''When an investor buys a high-yield bond, he is lending money to the issuer company. In return, the investor receives fixed periodic interest and principal value on maturity. These HYFI securities are usually rated below investment grade by credit rating agencies. There are provisions in the bond agreement that limit the actions of the issuer to protect the interests of bondholders.''',
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

  Widget highyield3() {
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
          'Who are the issuers of High Yield bonds?',
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
                  color: AppColors.purpleL_474E88,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.purpleL_474E88,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "High-leveraged companies, emerging startups, or those facing financial difficulties.",
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

  Widget highyield4() {
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
          'What are the benefits of High Yield Fixed Investing',
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
                  color: AppColors.purpleL_474E88,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.purpleL_474E88,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "The yield Fixed Income bond market has the potential to give investors a huge profit but depends on the efficiency and effectiveness with which the risks are managed.",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            sizedBoxHeight(15.h),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "> Diversification:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " The inclusion of \n   high-yield fixed-income securities \n   in a portfolio may increase \n   diversification due to their low \n   correlation with investment \n   grades fixed-income sectors, such \n   as Treasuries and highly rated \n   corporate debt.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Enhanced Current Income:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " High-\n   yield bonds typically offer higher \n   yields than investment-grade \n   bonds or other fixed-income \n   securities. This means that \n   investors can earn more income \n   from these securities than they \n   would from lower-yielding bonds.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Capital appreciation:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " High-yield \n   bonds have the potential for \n   capital appreciation if the credit \n   quality of the issuer improves. This \n   can result in higher prices for the\n   bonds, leading to capital gains for \n   investors. The events that can \n   potentially increase demand for \n   the bond, leading to a rise in its \n   price include upgrades in credit \n   ratings, positive earnings reports, \n   changes in management, merger \n   or acquisition announcements, \n   favorable developments in the \n   issuer's product line, or other \n   market-related events.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Inflation protection:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " High-yield \n   fixed-income securities can \n   provide a hedge against inflation, \n   as their yields are often tied to \n   inflation expectations.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Relatively low duration:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        "High-yield \n   bonds usually have a relatively \n   low duration because of their \n   shorter maturities. These bonds \n   are commonly issued for terms of \n   10 years or less and may be \n   callable after four or five years. \n   Their prices are typically more \n   sensitive to changes in the \n   economic environment and \n   corporate earnings than \n   to day-to-day fluctuations in \n   interest rates.\n",
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

  Widget highyield5() {
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
          'Risks of HYFI',
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
                  color: AppColors.purpleL_474E88,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.purpleL_474E88,
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
                    text: "> Default Risk:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " Credit risk, also \n   known as default risk, refers to the \n   risk that a company may fail to \n   make timely payments of interest \n   or principal and default on its \n   bond. A default can also occur if \n   the company fails to fulfill\n   certain terms of its debt \n   agreement. Since high-yield \n   bonds are typically issued by \n   companies with higher default \n   risk, it is crucial to consider this \n   risk when investing in these \n   securities.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Interest Rate Risk:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " Interest rates in \n   the market have a significant \n   impact on bond investments. The \n   price of a bond typically moves in \n   the opposite direction to the \n   market interest rates, creating \n   interest rate risk for investors, \n   which is a common feature of all \n   bonds. Furthermore, the longer the \n   maturity of a bond, the greater the \n   time for rates to change and thus \n   affect the bond price. \n   Consequently, bonds with longer \n   maturities generally have greater \n   interest rate risk compared to \n   bonds with similar credit quality \n   but shorter maturities.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Economic Risk:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        ''' In the event of an \n   economic downturn, some \n   investors may attempt to sell their \n   bonds. This can trigger a "flight to \n   quality," where several investors \n   may choose to replace their \n   higher-risk high-yield bonds with \n   safer options such as Treasury \n   bonds. If the supply of high-yield \n   bonds exceeds demand because \n   of more sellers than buyers, their \n   prices will fall. Additionally, some \n   companies that issue high-yield \n   bonds may be less capable of \n   withstanding challenging \n   economic conditions, which can \n   increase the risk of default.\n''',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Liquidity Risk:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " Liquidity risk arises \n   when investors may not receive a \n   fair price reflecting the true value \n   of the bond, based on its interest \n   rate and the creditworthiness of \n   the issuing company when trying \n   to sell their bonds. High-yield \n   bonds are generally subject to \n   more liquidity risk than \n   investment-grade bonds.\n",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "> Taxation:",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        " Interest earned will be \n   taxed as per the investor's slab \n   rates.",
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

  Widget faqAccod(String heading, String content) {
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
          heading,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(20.h),
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
