import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class FractionalRealEstate2 extends StatefulWidget {
  const FractionalRealEstate2({super.key});

  @override
  State<FractionalRealEstate2> createState() => _FractionalRealEstate2State();
}

class _FractionalRealEstate2State extends State<FractionalRealEstate2> {
  List FracRealEstData = [
    // /
    {
      // "index":0,
      "question": "What do you mean by Fractional Ownership?",
      "ans":
          "Fractional ownership is a collective investment approach where investors pool their funds to buy an expensive asset and share passive ownership. Each investor receives returns and benefits based on their investment share, such as usage rights, priority access, income sharing, and reduced rates. This approach is popular for purchasing high-value assets like aircraft, vacation homes, and luxury cars. It allows investors to reduce their financial burden and form an investment strategy according to their risk appetite. Fractional ownership can also involve breaking up a real estate property into portions for investors to own.",
    },
    {
      "question": "Fractional Ownership of Real Estate Property ",
      "ans":
          "Fractional ownership breaks up an individual real estate property into portions and allows you to become the owner of a portion or more – based on the investment you make. You decide which asset you want to invest in and consequently, can form your investment strategy suited to your risk appetite. "
    },
    {
      "question": "Why invest in Commercial Real Estate (CRE)?",
      "ans":
          "Commercial Real Estate encompasses a wide range of properties including office buildings, industrial spaces, retail areas, schools, warehouses, hotels, and hostels. Fractional Ownership in Residential Properties typically generates lower returns due to lower rental yields, which can be as low as 2.5-3%, and the potential for tenants to vacate on short notice. In contrast, Commercial Real Estate offers more stability with rental yields of 8-10% and longer-term contracts, typically a minimum of three years, with professional tenants. CRE also offers potential for wealth creation through asset appreciation. As a result, Fractional Ownership in Commercial Real Estate is becoming an increasingly attractive alternative to traditional Real Estate Investments in India.",
    },
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/fractionalpropertiespage");
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
                    "Fractional Real Estate",
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
                    if (index == 3) {
                      return fracReal4();
                    } else if (index == 4) {
                      return fracReal5();
                    } else if (index == 5) {
                      return fracReal6();
                    } else if (index == 6) {
                      return fracReal7();
                    } else {
                      return fracReal1(FracRealEstData[index]["question"],
                          FracRealEstData[index]["ans"]);
                    }
                  },
                  separatorBuilder: (context, index) {
                    return sizedBoxHeight(20.h);
                  },
                  itemCount: FracRealEstData.length),
            ),
          ],
        ),
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
      "The investment platform offering Fractional Ownership typically lists a high-quality commercial property that already has a tenant. An investor can commit a portion of the property cost, usually starting from Rs 25 lakh.",
      "A Special Purpose Vehicle (SPV) is created for each property, with the pooled funds from investors sent through a trusteeship company or LLP.",
      "The SPV purchases the property, with all Fractional owners becoming shareholders in the SPV in proportion to their investment-contribution. ",
      "The investment platform assumes responsibility for the SPV and the underlying property.",
      "Investors must sign relevant SPV agreements to be registered with the Registrar of Companies (RoC) under the Ministry of Corporate Affairs (MCA), and the sale agreement is registered with the Sub-Registrar office.",
      "All necessary documents, including the lease/rental agreement, title report, sale deed, and SPV agreement, are shared with investors and accessible on their dashboard.",
      "The Property Sale Deed, along with the SPV agreement, serves as proof of ownership, recorded in government records, public databases, and the investor's dashboard.",
      "Investors can track and monitor the asset in real-time and have multiple exit options available for a smooth exit.",
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
          "How does it work? ",
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
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
      "Fractional ownership allows an investor to enter real estate investment at lower ticket sizes.",
      "Access to institutional Grade-A commercial real estate which is generally not available to individual investors",
      "A non-volatile investment that compares favorably with gold, fixed deposits, and corporate bonds. It is not as dependent on the ups and downs of the market as compared to stocks and mutual funds.",
      "An investment that offers both passive income generation and long-term capital growth.",
      "Fractional Real Estate contributes positively to portfolio diversification and yields more profit compared to residential investments.",
      "Clear regulations are in place when you are investing in fractional ownership of a commercial property. All the payouts from the sale of the property, which includes income from rent, as well as the proceeds from the sale are managed by a trusteeship company.",
      "Greater liquidity and risk mitigation when compared to traditional real estate investments.",
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
          "Advantages of Fractional Real Estate Investing",
          // 'What do you mean by Fractional Ownership?',
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
              "",
              // "Typically, the investment platform offering fractional ownership would list a ‘Grade-A’ commercial property, which already has a tenant, for investments on its platform. For instance, if the property costs Rs 50 crore, an investor can commit Rs 25 lakh, or even a higher amount.\n",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 0.sp,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(bulletPoints[index]);
                }),
          ],
        ),
      ),
    );
  }

  Widget fracReal6() {
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
          'Taxation',
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
              "For residents, short-term capital gains are taxed at slab rates, while long-term capital gains are taxed at 20% with indexation.",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            sizedBoxHeight(10.h),
            Text(
              "For Non-residents, short-term capital gains are taxed at slab rates, while long-term capital gains are taxed at 10% without indexation.",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            sizedBoxHeight(10.h),
            Text(
              "In terms of rental income received from interest on debentures, it is taxed at the slab rates of the investor. The SPV deducts a 10% TDS before remitting returns to resident Indians and a higher 30% TDS (plus applicable surcharge and cess) for NRI investors. However, resident Indians can submit Form 15G/15H to reduce the TDS, while NRI investors can submit TRC to lower their TDS.",
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

  Widget fracReal7() {
    List bulletPoints = [
      "Strata",
      "MYRE",
      "Hbits",
      "Property Share",
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
          "Platforms that provide investment opportunities in Fractional Real Estate",
          // 'What do you mean by Fractional Ownership?',
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
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(bulletPoints[index]);
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
}
