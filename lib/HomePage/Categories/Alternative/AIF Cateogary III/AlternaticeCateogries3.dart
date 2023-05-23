import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/bullet_text_bold.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import 'Cat3VerticalSlider.dart';

class AlternaticeCateogries3 extends StatefulWidget {
  const AlternaticeCateogries3({super.key});

  @override
  State<AlternaticeCateogries3> createState() => _AlternaticeCateogries3State();
}

class _AlternaticeCateogries3State extends State<AlternaticeCateogries3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories deals',
          ontap: () {
            Get.to(const Cat3VerticalSlider());
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
                    "Alternative Investment Funds Category III",
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
                  faqAccod(
                    title: 'Introduction to Category III AIF',
                    content:
                        'As per SEBI Regulations Category III AIF are AIFs that employ diverse or complex trading strategies and may employ leverage including through investment in listed or unlisted derivatives. AIF such as hedge funds or funds that trade intending to make short-term returns or such other funds which are open-ended and for which no specific incentives or concessions are given by the government or any other Regulator shall be included. Therefore, funds under Category III are the most complex and use a diversified trading strategy to get high returns in a short time.',
                  ),
                  sizedBoxHeight(20.h),
                  faqAccod(
                    title: 'Funds under Category III AIF',
                    content:
                        '> Hedge Fund\n>	Private Investment in Public Equity Fund (PIPE)',
                  ),
                  sizedBoxHeight(20.h),
                  faqAccodHighlight(),
                  sizedBoxHeight(20.h),
                  faqAccod(
                    title: 'Taxation',
                    content:
                        'Unlike Category I and II AIFs, Category III AIFs do not have pass-through status, and as a result, they are taxed at the fund level. Category III AIFs are subject to the highest income tax slab level, and the returns distributed to investors are net of tax. '
                        '\n\nThe Category III AIF is taxed at the applicable maximum marginal rates (MMR) on four types of income, which are:'
                        '\n\n>	Short-term capital gains are taxed at 17.94%\n>	Long-term capital gains are taxed at 11.96%\n>	Business income is taxed at 42.74% \n>	Dividend income is taxed at 42.74%',
                  ),
                  sizedBoxHeight(20.h),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget faqAccod(
      {bool? expandAccod, required String title, required String content}) {
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
              content,
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

  Widget faqAccodHighlight() {
    List bulletPoints = [
      {
        "title": 'Investments Allowed: ',
        "desp":
            'Category III AIFs may invest in securities of listed or unlisted investee companies, derivatives, units of other AIFs, or complex or structured products.',
      },
      {
        "title": 'Hedging Activities: ',
        "desp": 'Category III AIFs may buy or sell credit default swaps.',
      },
      {
        "title": 'Borrowing and Leverage: ',
        "desp":
            'Category III AIFs may engage in leverage or borrow funds subject to consent from the investors in the fund and subject to a maximum limit as specified by the board.',
      },
      {
        "title": 'Regulation: ',
        "desp":
            'Category III AIFs are regulated through the issuance of directions.',
      },
      {
        "title": 'Fund Tenure: ',
        "desp":
            'There is no minimum fund tenure for Category III AIFs. The fund tenure can be extended by two years subject to the approval of two-thirds of the investors.',
      },
      {
        "title": 'Investment Limit: ',
        "desp":
            'Not more than 10% of the investible funds can be invested in a single portfolio entity.',
      },
      {
        "title": 'Manager/Sponsor Interest: ',
        "desp":
            'The manager/sponsor interest should be the lower of the following amounts 5% of the corpus or INR 10 crore.',
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
          "General guidelines for Category III AIFs",
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
              'Category III AIFs have certain guidelines that they must follow which are essential to ensure that they operate within the legal framework and meet the requirements set forth by the regulatory authorities. Here are some of the key guidelines that Category II AIFs must adhere to',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 16.sp,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
}
