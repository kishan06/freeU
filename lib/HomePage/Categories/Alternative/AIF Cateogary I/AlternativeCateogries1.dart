import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20I/Cat1VetricalSlider.dart';
import 'package:freeu/common/Other%20Commons/bullet_text_bold.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/FAQ2/FAQ2.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AlternaticeCateogries1 extends StatefulWidget {
  const AlternaticeCateogries1({super.key});

  @override
  State<AlternaticeCateogries1> createState() => _AlternaticeCateogries1State();
}

class _AlternaticeCateogries1State extends State<AlternaticeCateogries1> {
  Future? myfuture;

  @override
  void initState() {
    myfuture = FAQ2().Alternative1();
    super.initState();
  }

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
            Get.to(Cat1VerticalSlider());
          },
        ),
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

      // Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 16.w),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Flexible(
      //             child: Text(
      //               "Alternative Investment Funds Category I",
      //               style: TextStyle(
      //                   fontFamily: "Poppins",
      //                   fontSize: 25.sp,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Expanded(
      //           child: SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             sizedBoxHeight(20.h),
      //             faqAccod(
      //               title: 'Introduction to Category I AIF',
      //               content:
      //                   "As per SEBI Regulations Category, I AIF are AIFs that invests in early-stage startups, social ventures, SMEs, infrastructure startups, or other sectors or areas which the government considers socially or economically desirable. It includes investments such as venture capital funds, SME Funds, social venture funds, infrastructure funds, etc. "
      //                   "\n\nCategory I AIFs are the most popular among investors. These are investments in small, or medium enterprises, or start-ups that have high-growth potential, and are socially and economically viable. These usually have the potential to grow the economy and create jobs, and hence Category I AIFs are encouraged and promoted by the government and are extremely valuable to start-ups in our country.",
      //             ),
      //             sizedBoxHeight(20.h),
      //             faqAccod(
      //               title: 'Funds under Category I AIF',
      //               content:
      //                   '> Venture Capital Fund \n> Infrastructure Fund \n>	Angel Fund',
      //             ),
      //             sizedBoxHeight(20.h),
      //             faqAccodHighlight(),
      //             sizedBoxHeight(20.h),
      //             faqAccod(
      //               title: 'Taxation',
      //               content:
      //                   "Category I and II Alternative Investment Funds (AIFs) are granted tax pass-through status by the government. This implies that any income generated by the fund, excluding business income, is taxed to the investor based on their share of income from the AIF, similar to if they had directly made the investment. Accordingly, business income of Category I and II AIFs is taxed at the fund level at the maximum marginal rate, while dividends, capital gains, or interest earned by the AIF are taxed at the investor's level according to their tax slab. "
      //                   '\n\nInvestors in Category I and II AIFs are required to pay capital gain tax on profits or losses, depending on the duration of their investment. Long-term capital gain tax is levied at 20% with an indexation benefit, and short-term capital gains are taxed at 15%. The surcharge and education cess are applicable in addition to the aforementioned rates. Furthermore, non-resident investors can avail a beneficial tax rate of 10% for long-term capital gains arising from the transfer of unlisted securities or shares of a company not substantially interested by the public, subject to certain conditions. However, indexation and foreign exchange fluctuation benefits are not available in this case.',
      //             ),
      //             sizedBoxHeight(20.h),
      //           ],
      //         ),
      //       )),
      //     ],
      //   ),
      // ),
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
                  "Alternative Investment Funds Category I",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          sizedBoxHeight(20.h),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return onealternative(
                    alternative1!.data![index].faqQuestion ?? "",
                    alternative1!.data![index].faqAnswer ?? "",
                  );
                },
                separatorBuilder: (context, index) {
                  return sizedBoxHeight(20.h);
                },
                itemCount: alternative1!.data!.length),
          ),
        ],
      ),
    );
  }

  Widget onealternative(String question, String ans) {
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

  Widget faqAccodHighlight() {
    List bulletPoints = [
      {
        "title": "Allowed Investments: ",
        "desp":
            'Category I AIFs are allowed to invest in units of other Category I AIFs of the same sub-category or units of Category II AIF.'
      },
      {
        "title": 'Hedging Activities: ',
        "desp":
            'Category I AIFs may engage in various activities such as hedging, which includes credit default swaps.'
      },
      {
        "title": "Restrictions on Borrowing and Leverage: ",
        "desp":
            'Category I AIFs are prohibited from borrowing funds directly or indirectly, and they are not allowed to engage in any form of leverage apart from meeting provisional funding requirements.'
      },
      {
        "title": "Investment Limit: ",
        "desp":
            'Not more than 25% of the investible funds can be invested in a Single Portfolio Entity.'
      },
      {
        'title': 'Fund Tenure: ',
        'desp':
            'The minimum fund tenure for Category I AIFs is 3 years. The fund tenure can be extended for 2 years subject to the approval of two-third of the investors.',
      },
      {
        'title': 'Manager/Sponsor Interest: ',
        'desp':
            'The manager/sponsor interest should be lower of the following amounts 2.5% of the corpus or INR 5 crore.',
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
          "General guidelines for Category I AIFs",
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
              'Category I AIFs have certain guidelines that they must follow which are essential to ensure that they operate within the legal framework and meet the requirements set forth by the regulatory authorities. Here are some of the key guidelines that Category I AIFs must adhere to',
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
