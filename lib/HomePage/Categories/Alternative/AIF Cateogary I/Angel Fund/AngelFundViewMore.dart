import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AngelFundViewMore extends StatefulWidget {
  const AngelFundViewMore({super.key});

  @override
  State<AngelFundViewMore> createState() => _AngelFundViewMoreState();
}

class _AngelFundViewMoreState extends State<AngelFundViewMore> {
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
                  "Angel Fund",
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
                  faqAccod0(),
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
                  faqAccod5(),
                  sizedBoxHeight(15.h),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget faqAccod0() {
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
          'Angel Fund',
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
              "Angel funds are a type of venture capital fund that focuses on providing the much-needed capital to high-growth potential startups during their early development stages, when traditional sources of financing may not be available. Angel funds play an important role in strengthening the startup ecosystem by supporting them and helping them to develop into successful businesses."
              "\n\nAn ‘Angel Investor’ is usually a high-net worth individual who provides funds for start-ups or entrepreneurs in exchange for ownership equity in the company. It can either be a one-time investment, or consistent financial support through the struggling years of the start-up. For many small companies, without financial backing, angel investing is the only primary source of investment that works. In addition to providing funding, angel funds also offer startups valuable resources such as management mentoring, guidance, and industry contacts that can help them grow and succeed.",
              // "While both provide money to startup companies, venture capitalists are typically professional investors who invest in a broad portfolio of new companies and provide hands-on guidance and leverage their professional networks to help the new firm. Angel investors, on the other hand, tend to be wealthy individuals who like to invest in new companies more as a hobby or side-project and may not provide the same expert guidance. Angel investors also usually invest first and are then followed by venture capitalists. Venture capital funds are focused on investing in later stages of business, angel investor provides the much-needed support in the initial stages of the business.",
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


  Widget faqAccod() {
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
          'How Does a VC Differ from an Angel Investor?',
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
              "While both provide money to startup companies, venture capitalists are typically professional investors who invest in a broad portfolio of new companies and provide hands-on guidance and leverage their professional networks to help the new firm. Angel investors, on the other hand, tend to be wealthy individuals who like to invest in new companies more as a hobby or side-project and may not provide the same expert guidance. Angel investors also usually invest first and are then followed by venture capitalists. Venture capital funds are focused on investing in later stages of business, angel investor provides the much-needed support in the initial stages of the business.",
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
          'Who can qualify as an angel investor?',
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
              "As per SEBI regulations, Angel investor can be anyone who wants to invest in an angel fund and fulfils one of the following conditions",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(20.w),
                Text(
                  "a)",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Flexible(
                  child: Text(
                    "	an individual investor who has net tangible assets of at least two crore rupees excluding value of his principal residence, and who: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(30.w),
                Text(
                  "(i)",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Flexible(
                  child: Text(
                    "	has early stage investment experience (i.e., prior experience in investing in start-up or emerging or early-stage ventures), or ",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(30.w),
                Text(
                  "(ii)",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Flexible(
                  child: Text(
                    "	has experience as a serial entrepreneur (i.e., a person who has promoted or co-promoted more than one start-up venture), or",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(30.w),
                Text(
                  "(iii)",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Flexible(
                  child: Text(
                    "	is a senior management professional with at least ten years of experience;",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(20.w),
                Text(
                  "b)",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Flexible(
                  child: Text(
                    "Is a corporate body with a net worth of at least ten crore rupees",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(20.w),
                Text(
                  "c)",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18.sp,
                  ),
                ),
                Flexible(
                  child: Text(
                    "AIF registered under these regulations or a VCF registered under the SEBI (Venture Capital Funds) Regulations, 1996. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
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
          'How much money do you need to be an angel fund investor in India?',
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
              "An Angel Investor need to invest a minimum of 25 lakhs INR over five years in the startups he/she likes, through the Angel Fund.",
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
          'Benefits of Angel Investing',
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
              "-	Business Agreements are more flexible. "
              "\n\n-	Due Diligence processes less complex than traditional investments"
              "\n\n-	Angel investors can become valuable advisor and counsel for the start up.",
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
          'How is an Angel Fund different from other AIFs?',
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
              "Following are the points of difference between the two categories:"
              "\n\n1.	Corpus: Angel funds shall have a corpus of at least 5 Crore. Other AIF require to have a corpus of 20 crores."
              "\n\n2.	Minimum investment limit for a single investor is set at Rs. 25 lakhs for Angel Funds unlike other AIF where the limit is set at Rs. 1 Crore Rupees"
              "\n\n3.	The Sponsor/ Manager is required to have a continuing interest in the Angel Funds will be lower of the two; 2.5% of corpus or Rs. 50 lakhs. However, in case of other AIF, this requirement is way higher.",
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

  Widget faqAccod5() {
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
          'Key Features',
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
              "Under AIF Regulations Angel Funds can be set up and they will have following key features:"
              "\n\n1.	Such funds can accept investment from maximum 200 investors, earlier it was limited to 49 investors."
              "\n\n2.	Investment by an angel fund in the venture capital undertaking shall not be less than Rs. 25 lakhs and shall not exceed Rs. 10 crore."
              "\n\n3.	The Lock in period required for Angel investor is reduced from 3 years to one year."
              "\n\n4.	AIF are allowed to make investments in organizations incorporated in previous 5 years. Previously, this incorporation limit was set at 3 years."
              "\n\n5.	As per markets regulator Sebi, each scheme of an angel fund is an independent investment vehicle with its own set of investors. Investors in angel fund have the option to selectively participate in investment schemes as each investment being a separate one. In addition, investors will be considered investors of only those specific schemes for which they have given approval."
              "\n\n6.	Angel funds shall not invest more than 25% of their total investments under all its scheme in one venture capital undertaking."
              '\n\n7.	An angel fund can invest in the securities of companies incorporated outside India subject to such conditions or guidelines that may be stipulated or issued by the Reserve Bank of India and the Board.',
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
