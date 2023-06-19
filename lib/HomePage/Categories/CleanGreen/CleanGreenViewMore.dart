import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CleanGreenViewMore extends StatefulWidget {
  const CleanGreenViewMore({super.key});

  @override
  State<CleanGreenViewMore> createState() => _CleanGreenViewMoreState();
}

class _CleanGreenViewMoreState extends State<CleanGreenViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/cleangreenviewproducts");
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
                  "Clean and Green Assets",
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
                  faqAccod('What are Clean and Green Assets?',
                      'As per definition, Green Asset investing is a socially responsible form of investing in companies that support, encourage, or use technology that has moved away from carbon dependency to more sustainable alternatives. These companies also include the ones that can operate by supporting, or producing environmentally friendly products and practices. Green investments have a favorable impact on the natural environment and are often grouped under criteria such as ESG (Environmental, social, and governance) or socially responsible investing.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Types of Green Investing',
                      '>	Green equities: Buying stocks of companies having strong environmental commitments. Several emerging startups are working on developing alternative energies and materials, while established companies are also investing in a low-carbon future.'
                          '\n\n>	Green bonds: Another option for green investing is to invest in green bonds, also known as climate bonds. These fixed-income securities are loans made to banks, companies, and government bodies to support projects that have a positive impact on the environment.'
                          '\n\n>	Green funds: Investors can also consider investing in mutual funds, ETFs, or index funds that focus on green companies as another way to engage in green investing. Green funds invest in a diverse range of promising securities, allowing investors to spread their money across a diversified range of environmental projects rather than concentrating on a single stock or bond.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What are the benefits of Clean and Green Asset Investing?',
                      '>	Great potential for growth: A huge potential for long-term growth. Morningstar, a renowned US-based investment research company in a report published in 2022 has claimed that investing in green investments can easily be more profitable than traditional assets investment.'
                          "\n\n>	Diversified options: Green asset investment has a lot of diverse avenues. It can include investing in green companies' stocks, bonds, green mutual funds, green exchange-traded funds (ETF), etc."
                          '\n\n>	Lucrative Funding Options: Environmental-friendly investments with a social impact always get a lot of positive attention. Hence, it attracts a lot of wealthy investors ensuring high funds.'
                          '\n\n>	Borrowing costs lower: Borrowing costs for green investing is lower in comparison to other investments due to high demands.'
                          '\n\n>	Tax exemptions: Due to the positive influence green companies have on society, green investing often has a lot of tax exemptions.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What are the risks of green investing?',
                      'Green investments are a newer investment avenue across the world. Therefore, many green companies are still in the development stage. This can make green investing a high-risk investment.  Even the market is newer, and inexperienced, compared to other investments. Hence, entering and exiting becomes more difficult than the rest.There are also a few companies who superficially, or falsely promote their greenness, as just a marketing gimmick and rebranding, to appear invest-friendly and easier to get funding. This is called greenwashing.'
                          "\n\nTaxation: Interest earned will be taxed as per the investor's slab rates."
                          '\n\nGreen Investment Examples:'
                          '\n\n>	Hydropower'
                          '\n>	Wind power'
                          '\n>	Solar energy'
                          '\n>	Geothermal power'
                          '\n>	Waste and recycling'
                          '\n>	Sustainable food production'
                          '\n>	Pollution Control'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What should you look out for before green asset investing?',
                      'Investors should study, research, and make their own decisions regarding green companies, ensuring they adhere to all chosen standards. Sometimes there is confusion regarding the proper definition of these companies. Some think a 100% green company should be directly involved in environmentally valuable products or services, like renewable energies or compostable materials while others think, eco-friendly policies qualify a company as green. Therefore, investors should do their research and invest.'),
                  sizedBoxHeight(15.h),
                  faqAccod('What are examples of clean and green assets?',
                      'Clean and green assets include renewable energy infrastructure like wind turbines, solar panels, and hydroelectric power plants, energy-efficient buildings such as LEED-certified buildings and green roofs, electric vehicles, waste reduction, and recycling facilities.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'How can investors participate in the clean and green asset market? ',
                      'Investors can participate in the clean and green asset market in several ways, including investing in publicly traded companies that specialize in clean energy or sustainable infrastructure, investing in mutual funds or exchange-traded funds (ETFs) that focus on clean and green assets, or investing directly in clean energy projects through private equity or debt financing.'),
                  sizedBoxHeight(15.h),
                  faqAccod('How is the clean and green asset market growing? ',
                      'The clean and green asset market is growing rapidly, driven by increasing demand for renewable energy, energy-efficient infrastructure, and sustainable buildings. In addition, many governments around the world are providing incentives for clean and green asset development, further driving growth in the market.'),
                  sizedBoxHeight(15.h),
                ],
              ),
            )),
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
