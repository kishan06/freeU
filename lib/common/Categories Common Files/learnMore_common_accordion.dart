// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:freeu/Utils/colors.dart';
// import 'package:freeu/common/Other%20Commons/page_animation.dart';
// import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
// import 'package:freeu/common/Other%20Commons/sized_box.dart';

// // // // // // // // // // // // // not using this file anywhere


// class LearnMoreCommonAccordion extends StatelessWidget {
//   final int position;
//   final dynamic LearnbottomButtonRoute;
//   LearnMoreCommonAccordion(
//       {super.key,
//       required this.position,
//       required this.LearnbottomButtonRoute});

//   @override
//   Widget build(BuildContext context) {
//     List learnMoreData = [
//       {
//         'title': 'Alternative Investment Funds(AIF)',
//         'question': [
//           "What are AIFs?",
//           "Who can invest in AIF?",
//           "What is the minimum amount needed to invest in AIF?",
//           "In which formats can an AIF be set up?",
//           "Size of the AIF scheme",
//         ],
//         'answer': [
//           "Alternative Investment Fund (AIF) is a type of investment fund that is registered with the Securities and Exchange Board of India (SEBI). They are privately pooled investment vehicles generally set up by high-net-worth individuals, Indian or foreign, as per a defined investment policy. AIFs are distinctly different from traditional investment vehicles like mutual funds, or ETFs, and invest in non-traditional avenues such as venture capital, private equity, hedge funds, managed futures, etc, to make a profit, or benefit investors. AIFs provide an opportunity for investors to participate in alternative investments and diversify their portfolios, while also offering fund managers greater flexibility in their investment strategies.",
//           "Any investor whether Indian, foreign, or non-resident Indian can invest in an AIF, as long as she/he has the required funds for investment, and is willing to take a risk on the unlisted and illiquid securities. To invest in an AIF investor must provide proof of income, PAN card, and ID proof",
//           '''All AIF categories in India except "angel fund" need a minimum investment of Rs. 1 crore, whereas, for the angel fund, that amount is Rs. 25 lakhs.  In the case of an employee or director of AIF, the minimum value of investment shall be Rs. 25 lakhs.''',
//           "The AIF funds are set up in the form of a trust, limited liability partnership (LLP), or corporate body.",
//           "Each AIF scheme should have a minimum corpus of Rs. 20 crores (Rs. 10 crores for angel funds). Along with that, there is also a cap on the number of investors each scheme can have. Most schemes cannot have more than 1000 investors, whereas angel funds can cater to a maximum of 200 investors.",
          
//         ],
//       },
//       {
//         'title': '',
//         'question': [],
//         'answer': [],
//       },
//       {
//         'title': '',
//         'question': [],
//         'answer': [],
//       },
//       {
//         'title': '',
//         'question': [],
//         'answer': [],
//       },
//       {
//         'title': '',
//         'question': [],
//         'answer': [],
//       },
//       {
//         'title': '',
//         'question': [],
//         'answer': [],
//       },
//       {
//         'title': 'Clean and Green Assets',
//         'question': [
//           'What are Clean and Green Assets?',
//           'Types of Green Investing',
//           'What are the benefits of Clean and Green Asset Investing?',
//           'What are the risks of green investing?',
//           'What should you look out for before green asset investing?',
//         ],
//         'answer': [
//           'As per definition, Green Asset investing is a socially responsible form of investing in companies that support, encourage, or use technology that has moved away from carbon dependency to more sustainable alternatives. These companies also include the ones that can operate by supporting, or producing environmentally friendly products and practices. Green investments have a favorable impact on the natural environment and are often grouped under criteria such as ESG (Environmental, social, and governance) or socially responsible investing.',
//           '>	Green equities: Buying stocks of companies having strong environmental commitments. Several emerging startups are working on developing alternative energies and materials, while established companies are also investing in a low-carbon future.'
//               '\n\n>	Green bonds: Another option for green investing is to invest in green bonds, also known as climate bonds. These fixed-income securities are loans made to banks, companies, and government bodies to support projects that have a positive impact on the environment.'
//               '\n\n>	Green funds: Investors can also consider investing in mutual funds, ETFs, or index funds that focus on green companies as another way to engage in green investing. Green funds invest in a diverse range of promising securities, allowing investors to spread their money across a diversified range of environmental projects rather than concentrating on a single stock or bond.',
//           '>	Great potential for growth: A huge potential for long-term growth. Morningstar, a renowned US-based investment research company in a report published in 2022 has claimed that investing in green investments can easily be more profitable than traditional assets investment.'
//               "\n\n>	Diversified options: Green asset investment has a lot of diverse avenues. It can include investing in green companies' stocks, bonds, green mutual funds, green exchange-traded funds (ETF), etc."
//               '\n\n>	Lucrative Funding Options: Environmental-friendly investments with a social impact always get a lot of positive attention. Hence, it attracts a lot of wealthy investors ensuring high funds.'
//               '\n\n>	Borrowing costs lower: Borrowing costs for green investing is lower in comparison to other investments due to high demands.'
//               '\n\n>	Tax exemptions: Due to the positive influence green companies have on society, green investing often has a lot of tax exemptions.',
//           'Green investments are a newer investment avenue across the world. Therefore, many green companies are still in the development stage. This can make green investing a high-risk investment.  Even the market is newer, and inexperienced, compared to other investments. Hence, entering and exiting becomes more difficult than the rest.There are also a few companies who superficially, or falsely promote their greenness, as just a marketing gimmick and rebranding, to appear invest-friendly and easier to get funding. This is called greenwashing.'
//               "\n\nTaxation: Interest earned will be taxed as per the investor's slab rates."
//               '\n\nGreen Investment Examples:'
//               '\n\n>	Hydropower'
//               '\n>	Wind power'
//               '\n>	Solar energy'
//               '\n>	Geothermal power'
//               '\n>	Waste and recycling'
//               '\n>	Sustainable food production'
//               '\n>	Pollution Control',
//           'Investors should study, research, and make their own decisions regarding green companies, ensuring they adhere to all chosen standards. Sometimes there is confusion regarding the proper definition of these companies. Some think a 100% green company should be directly involved in environmentally valuable products or services, like renewable energies or compostable materials while others think, eco-friendly policies qualify a company as green. Therefore, investors should do their research and invest.',
//         ],
//       },
//       {
//         'title': '',
//         'question': [],
//         'answer': [],
//       },
//       {
//         'title': '',
//         'question': [],
//         'answer': [],
//       },
//     ];
//     return Scaffold(
//       bottomNavigationBar: Padding(
//         padding: EdgeInsets.all(16.w),
//         child: OpenContainerWrappers(
//           openBuild: LearnbottomButtonRoute,
//           closeBuild: Container(
//             decoration: BoxDecoration(
//                 color: AppColors.blue143C6D,
//                 borderRadius: BorderRadius.circular(10.r)),
//             width: double.infinity,
//             height: 50.h,
//             child: Center(
//               child: Text(
//                 'View Categories',
//                 style: TextStyle(
//                   color: AppColors.white,
//                   fontSize: 18.sp,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       // Padding(
//       //   padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
//       //   child:

//       //    CustomNextButton(
//       //     text: 'View Categories',
//       //     ontap: () {
//       //       Get.toNamed("/cleangreenviewproducts");
//       //     },
//       //   ),
//       // ),
//       backgroundColor: const Color(0xFFFFFFFF),
//       appBar: const CustomSignupAppBar(
//         titleTxt: "",
//         bottomtext: false,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Flexible(
//                   child: Text(
//                     learnMoreData[position]['title'],
//                     style: TextStyle(
//                         fontFamily: "Poppins",
//                         fontSize: 25.sp,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//               ],
//             ),
//             sizedBoxHeight(20.h),
//             Expanded(
//               child: ListView.separated(
//                   physics: const BouncingScrollPhysics(),
//                   shrinkWrap: true,
//                   itemBuilder: (context, index) {
//                     return learnMoreAccod(
//                         titleString: learnMoreData[position]['question'][index],
//                         contentString: learnMoreData[position]['answer']
//                             [index]);
//                   },
//                   separatorBuilder: (context, index) {
//                     return sizedBoxHeight(15.h);
//                   },
//                   itemCount: learnMoreData[position]['question'].length),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class learnMoreAccod extends StatefulWidget {
//   final String titleString;
//   final String contentString;
//   learnMoreAccod({
//     super.key,
//     required this.titleString,
//     required this.contentString,
//   });

//   @override
//   State<learnMoreAccod> createState() => _learnMoreAccodState();
// }

// class _learnMoreAccodState extends State<learnMoreAccod> {
//   var isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           border: Border.all(color: Colors.black.withOpacity(0.2)),
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5.r)),
//       child: ExpansionTile(
//         textColor: Colors.black,
//         tilePadding: EdgeInsets.all(10.h),
//         childrenPadding: EdgeInsets.all(10.h),
//         initiallyExpanded: isExpanded,
//         iconColor: Colors.black,
//         onExpansionChanged: (bool expanding) {
//           setState(() {
//             isExpanded = expanding;
//           });
//         },
//         title: Text(
//           widget.titleString,
//           style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
//         ),
//         children: <Widget>[
//           Text(
//             widget.contentString,
//             style: TextStyle(fontSize: 18.sp),
//           ),
//         ],
//       ),
//     );
//   }
// }
