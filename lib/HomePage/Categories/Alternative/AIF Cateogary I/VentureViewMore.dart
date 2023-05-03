import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class VentureViewMore extends StatefulWidget {
  const VentureViewMore({super.key});

  @override
  State<VentureViewMore> createState() => _VentureViewMoreState();
}

class _VentureViewMoreState extends State<VentureViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/AngelFundMoreProduct");
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
                  "Venture Capital Fund (VCF)",
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
                  faqAccod(),
                  sizedBoxHeight(15.h),
                  faqAccod1(),
                  sizedBoxHeight(15.h),
                  faqAccod2(),
                  sizedBoxHeight(15.h),
                  faqAccod3(),
                  sizedBoxHeight(15.h),
                  faqAccod4(),
                  sizedBoxHeight(15.h),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget faqAccod() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: true,
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
          'So how does a VCF work?',
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
            sizedBoxHeight(15.h),
            Text(
              "VCF pool in funds from the prospective investors wanting to make equity investments in different/ multiple ventures, depending on their business plans, profiles, and development phases. Once the investors commit, the VCF finalizes the investment amounts of each potential investor to collect the capital. Then the fund manager (VCF) sought out private equity investments with a high growth potential that have the best chances of giving investors a return. "
              '\n\nThe VCFs are mostly done in the early stages, and each investor gets their share/ return on investment profit proportional to their investment amount.'
              '\n\nVenture Capital Funds are growing in India, especially because of HNIs, who have a lot of capital and seek high-risk return investment options. Since their inclusion under AIF, these funding has seen a lot of NRIs investing in startups in India, helping the economy grow.',
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

  Widget faqAccod1() {
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
          'Types of VC Funds',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
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
            sizedBoxHeight(15.h),
            Text(
              "Based on the fund utilization in different phases of a business, Venture Capital Funds are classified into three broad categories. Early-stage financing, Expansion financing, and Acquisition/Buyout financing."
              '\n\n>	Early-stage Financing: There are 3 sub-categories in early-stage financing. These are seed financing, startup financing, and first stage financing.'
              '\nSeed financing is a small sum given to the entrepreneur to serve the purpose of qualifying for a startup loan. When early-stage companies receive funds to complete their services and product developments, it is called Start-Up financing.  Lastly, First-stage financing occurs when companies use the venture capital to commence full-fledged business activities.'
              '\n\n>	Expansion financing: Expansion financing is classified into second stage financing, bridge financing, and third stage financing. Second-stage and third-stage financing is a kind of expansion financing, typically provided to companies so that they can companies scale up their business and operations. Bridge financing, on the other hand, is a kind of financing that is typically provided to companies whose business strategy includes the plan to go public through an IPO.'
              '\n\n>	Acquisition or buyout financing: Acquisition or buyout financing is a type of financing that is used to fund acquisitions or leveraged buyouts. In an acquisition, one company purchases another company or part of another company. In a leveraged buyout, a management group of one company wants to acquire a product of another company.',
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

  Widget faqAccod2() {
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
          'Benefits of Venture Capital Fund',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
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
              '>	VCF ensure that the venture capital (money provided in the VCF) is used only for projects, startups with a potential for high growth. Hence, in spite of a high-risk, they have the potential of giving extremely high returns on investments.'
              '\n\n>	For any company in early stages of growth, networking is significant, and that is the biggest advantage the VCF investors bring. Influential, rich, investors with a lot of connect promote these startups, increasing their visibility, exposure, through positive marketing, helping them grow.'
              '\n\n>	The investors in the VCF, often bring to the table knowledge and experience, that help the companies, or startups grow as per their vision and goal. These sophisticated investors of VCF, can also sometimes contribute to the growth of the company by helping in developing new products, services, and even help them to acquire the latest, advanced technologies to increase efficiency.'
              '\n\n>	VCFs have a lot of hold on the companies they invest in, and hence can influence the decisions.'
              '\n\n>	The VCFs also have the ability to invest in multiple projects at the same time. This can mitigate the high-risk that is usually involved in investing in this category. Out of many startups, at least one can grow massively, giving them high returns to cover their entire investment.',
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

  Widget faqAccod3() {
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
          'Disadvantages of Venture Capital Fund',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
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
              "The process is lengthy, and complex, and contains a high risk. Investments are for a long term which means profits made are realized in the very long run.",
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

  Widget faqAccod4() {
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
          'As a potential investor, what should you be looking at in order to invest in a VCF?',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
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
              '>	It is always a good idea to look for potential startups having a very strong management team, with inimitable/unique ideas or products and a good potential market for it. '
              '\n\n>	Investment structure and strategy of the fund'
              '\n\n>	Industries in which it is investing. It is also a smart idea to invest in industries you are familiar in, thus can advise, nurture, in order to ensure growth, and get high returns on investments.'
              '\n\n>	Startups that the VCF has funded '
              '\n\n>	Minimum Lock in period',
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
