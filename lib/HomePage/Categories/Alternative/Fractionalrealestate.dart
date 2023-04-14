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
      "question":"What do you mean by Fractional Ownership?",
      "ans":"Fractional ownership refers to a set-up wherein groups of investors pool in funds to purchase an asset. These fractional investors share passive ownership of a high-value asset through this purchase. Buying an asset through this route reduces the financial burden on one single investor, who also earns returns on the investment. All the investors will share the benefits and expenses related to such assets in the right proportions based on the investments. The benefits may include usage rights, income sharing, priority access, and reduced rates. This type of investment split is quite common in the purchase of expensive assets, like aircraft, vacation homes, or luxury cars."
    },
    {
      "question":"Fractional Ownership of Real Estate Property ",
      "ans":"Fractional ownership breaks up an individual real estate property into portions and allows you to become the owner of a portion or more – based on the investment you make. You decide which asset you want to invest in and consequently, can form your investment strategy suited to your risk appetite. "
    },
    {
      "question":"Why invest in Commercial Real Estate (CRE)?",
      "ans":"Commercial Real Estate includes office buildings, industrial properties, retail spaces, schools, warehouses, hotels, hostels, etc. \n \nFractional Ownership in Residential Properties does not yield high returns, because the rent is significantly lower in residential properties. Rental yield is usually as low as 2.5-3%. Also, residential tenants tend to vacate the premises on relatively short notice leaving the investors, or property owners in a difficult situation. Compared to this, Commercial Real estate is much more stable, usually yielding rental yields of 8-10%. When you lease out to an office or a professional setup, usually there is a minimum three-year contract, and hence offer more stable returns. CRE also helps in wealth creation because of the value appreciation of the asset. Therefore, Fractional Real Estate in Commercial properties is set to break the monotony of traditional Real Estate Investments in India."
    },
    {
      "question":"",
      "ans":""
    },
    {
      "question":"",
      "ans":""
    },
    {
      "question":"",
      "ans":""
    },
    {
      "question":"",
      "ans":""
    },
    {
      "question":"How are the investments structured, and what will I own as a fractional owner of a property?",
      "ans":"Each property is acquired in an independent SPV, and each SPV will be used to finance, manage, and own the underlying property. Fractional investors will own a proportional shareholding of the SPV that will represent their investment in the opportunity and the underlying property. The platform serves as the manager of the SPV, property, tenant, and investors."
    },
    {
      "question":"Do you get direct ownership of the assets in FRE?",
      "ans":"No, you do not. The FRE assets are acquired under a  Special Purpose Vehicle(SPV) /entity and each investor then becomes a shareholder of the same entity, in proportion to their investment amounts or fraction. "
    },
    {
      "question":"Is FRE investment compliant?",
      "ans":"Yes. Since the investment is routed through an SPV and investors are given a shareholding in the very same SPV, all investment records are filed under the ROC (Registrar of Companies) and need to be compliant with the Companies Act. The investment portal dealing with FRE needs to have a license from RERA (Real Estate Regulatory Authority) in order to carry out its operations."
    },
    {
      "question":"In FRE who manages the property, tenant, and other related issues?",
      "ans":"The online platform from where you choose your listing will take care of all property-related management issues on the behalf of the investors. This includes property tax, tenancy management, and other payments, insurance, and day-to-day management "
    },
    {
      "question":"What happens to your investment if, for any reason, the online platform goes out of business?",
      "ans":"Your asset is registered as a separate entity. The online platform is just the asset manager. If a firm closes, it could be replaced by another asset management firm and would continue to provide the same services."
    },
    {
      "question":"Can NRIs invest in Commercial Real Estate?",
      "ans":"Yes. Any Indian citizen or an NRI (Non-Resident Indian) can own commercial real estate provided that a valid KYC (Know Your Customer), and documents are there, and regulatory guidelines are met. But NRIs can only make investments through their NRO (non-resident ordinary) accounts."
    },
    {
      "question":"What are the documents needed to invest in fractional ownership of real estate?",
      "ans":"PAN card, address proof (Aadhar/Passport), bank account details for transfer of money, and depending on the property, and the platform, sometimes demat account number."
    },
    {
      "question":"What happens to my investment, if a property fails to be fully funded by investors?",
      "ans":"In that case, Investor's funds will be reimbursed to their registered bank account."
    },
    {
      "question":"Is my investment in FRE liquid?",
      "ans":"Yes. As an Investor, you can exit the asset anytime by selling your share of the property directly to another investor or by listing it on the platform. When you list it on the platform, you can sell only when there is a willing buyer on the platform."
    },
    {
      "question":"Is fractional ownership risky? ",
      "ans":"All investments carry risks. Therefore, in the case of fractional ownership, risks inherent to properties are also applicable in fractional ownership. Typical risks include liquidity, re-lease ability if the tenant leaves, and potential loss of capital."
    },
    {
      "question":"Do the investment platforms guarantee returns from Fractional Real Estate?",
      "ans":"The investment platforms DO NOT guarantee any returns. Though the rents on property listed on the platform are always known, the risk of non-payment of the rent will always remain due to underlying real estate asset and leasing risk. Most “assured return” schemes have been banned by SEBI, and freeu advises investors to be careful of such offerings, and consult freeu in case they have questions. "
    },
    {
      "question":"Modes of Exit from Fractional CRE?",
      "ans":"Exits happen in three ways—in the resale market is done through the investor's dashboard, private sales where investors are free to sell their fractional ownership to anyone on their own, which is subject to valid KYC and regulatory guidelines. The third way to exit is through the complete sale of the asset. Complete exit is only possible when all Fractional owners holding majority investments in the SPV agree to it."
    },
    {
      "question":"How is Fractional Ownership different from investing in REIT?",
      "ans":"REIT (Real Estate Investment Trust) is like mutual funds. Just like mutual funds pool money for investments like government bonds, direct equity, stocks, etc., REITs do the same to invest in profitable real estate on your(investors) behalf. Such properties are then leased out to business organizations, through which the fractional owners get their share of the capital. But with REITs, the investors cannot pick or choose the property to invest in. Compared to that, when investors buy commercial real estate through fractional ownership, the investors can choose the property of their choice. "
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w,5.h,16.w,10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/fractionalpropertiespage");
          },
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      // AppBar(
      //   backgroundColor: Color(0xFFFFFFFF),
      //   elevation: 0,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //     ),
      //     iconSize: 26,
      //     color: Colors.black,
      //   ),
      // ),
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
                itemBuilder: (context,index){
                  if (index == 3) {
                    return fracReal4();
                  } else if(index == 4){
                    return fracReal5();
                  } else if(index == 5){
                    return fracReal6();
                  } else if(index == 6){
                    return fracReal7();
                  } else {
                    return fracReal1(
                      FracRealEstData[index]["question"],
                      FracRealEstData[index]["ans"]
                    );
                  }
                  
                  // return fracReal1(
                  //   FracRealEstData[index]["question"],
                  //   FracRealEstData[index]["ans"]
                  // );
                }, 
                separatorBuilder: (context,index){
                  return sizedBoxHeight(
                    20.h
                  );
                }, 
                itemCount: FracRealEstData.length
              ),
            ),

            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
            // faqAccod(),
            // sizedBoxHeight(15.h),
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
              // "Fractional ownership refers to a set-up wherein groups of investors pool in funds to purchase an asset.",
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
      "For each commercial property, a Special Purpose Vehicle (SPV) is created. The pooled funds from investors are sent through a trusteeship company or LLP within which the created SPV operates.",
      "The SPV purchases the real estate property. All Fractional owners of the asset are shareholders in the SPV, in proportion to their investment-contribution in the real estate asset.",
      "The SPV is created with the only purpose to hold the property on behalf of the investors. The investment platform dealing with the FRE accepts the responsibility of the SPV and the underlying property.",
      "Each investors needs to sign relevant SPV agreements to be registered with the ‘Registrar of Companies (RoC)’ under the Ministry of Corporate Affairs (MCA).",
      "The sale agreement is registered with the ‘Sub-Registrar’ office under whose local jurisdiction the property is situated. All the documents can be signed either digitally or physically. ",
      "All the necessary documents, including the lease/rental agreement, title report, sale deed, and SPV agreement are shared with each of the investors. It is also accessible on the investor's dashboard in the investment platform portal. ",
      "The 'Property Sale Deed' along with the SPV agreement copy becomes the proof of ownership, and records of the same are maintained in government records, public databases, and the investor's dashboard.",
      "Once an investor expresses interest, he/she pays the initial amount to confirm. The investors can track and monitor the asset in real-time. If at any point, an investor wants to exit, there are multiple exit options usually available that offer a smooth exit. ",
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
              "Typically, the investment platform offering fractional ownership would list a ‘Grade-A’ commercial property, which already has a tenant, for investments on its platform. For instance, if the property costs Rs 50 crore, an investor can commit Rs 25 lakh, or even a higher amount.\n",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: bulletPoints.length,
              itemBuilder: (context,index){
                return bulletText(bulletPoints[index]);
              }
            ),

            sizedBoxHeight(5.h),

            Text("Below structure can be recreated for the website.",
              style: TextStyle(
                color: Colors.red,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),

            Image.asset("assets/newImages/work.png",
              height: 300.h,
              // width: ,
            ),

            sizedBoxHeight(5.h),

            Text(
              "In the center of the Fractional Real Estate investment is the SPV.  The group of investors invests in the SPV. The SPV purchases the property. The online investment platform manages the property and the SPV. The property pays rent to the SPV who distributes it to the investors. ",
              // "Typically, the investment platform offering fractional ownership would list a ‘Grade-A’ commercial property, which already has a tenant, for investments on its platform. For instance, if the property costs Rs 50 crore, an investor can commit Rs 25 lakh, or even a higher amount.\n",
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

  Widget fracReal5() {
    List bulletPoints = [
      "Fractional ownership allows an investor to enter real estate investment at lower ticket sizes.",
      "It allows the flexibility to jump ship between investments.",
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
              physics: NeverScrollableScrollPhysics(),
              itemCount: bulletPoints.length,
              itemBuilder: (context,index){
                return bulletText(bulletPoints[index]);
              }
            ),

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
              "Tax on Monthly Payouts in the hands of the Investor",
              // "Typically, the investment platform offering fractional ownership would list a ‘Grade-A’ commercial property, which already has a tenant, for investments on its platform. For instance, if the property costs Rs 50 crore, an investor can commit Rs 25 lakh, or even a higher amount.\n",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),

            Image.asset("assets/newImages/tax1.png",
              // height: 300.h,
              // width: ,
            ),

            sizedBoxHeight(10.h),

            Text(
              "Tax at the time of Exit in the hands of the Investor",
              // "Tax on Monthly Payouts in the hands of the Investor",
              // "Typically, the investment platform offering fractional ownership would list a ‘Grade-A’ commercial property, which already has a tenant, for investments on its platform. For instance, if the property costs Rs 50 crore, an investor can commit Rs 25 lakh, or even a higher amount.\n",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),

            Image.asset("assets/newImages/tax2.png",
              // height: 300.h,
              // width: ,
            ),


            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: bulletPoints.length,
            //   itemBuilder: (context,index){
            //     return bulletText(bulletPoints[index]);
            //   }
            // ),

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
            // Text(
            //   "",
            //   // "Typically, the investment platform offering fractional ownership would list a ‘Grade-A’ commercial property, which already has a tenant, for investments on its platform. For instance, if the property costs Rs 50 crore, an investor can commit Rs 25 lakh, or even a higher amount.\n",
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontFamily: "Poppins",
            //     fontSize: 0.sp,
            //   ),
            // ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: bulletPoints.length,
              itemBuilder: (context,index){
                return bulletText(bulletPoints[index]);
              }
            ),

          ],
        ),
      ),
    );
  }

  Widget bulletText(String text){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("> ",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600
          ),
        ),
        Expanded(
          child: Text(text,
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



  // Widget fracReal2() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'Why invest in Commercial Real Estate (CRE)?',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget fracReal3() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'How does it work?',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget fracReal4() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'Advantages of Fractional Real Estate Investing',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget fracReal5() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.black.withOpacity(0.2)),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5.r)),
  //     child: GFAccordion(
  //       titleBorderRadius: BorderRadius.circular(5.r),
  //       contentBorderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(5.r),
  //         bottomRight: Radius.circular(5.r),
  //       ),
  //       margin: const EdgeInsets.all(0),
  //       titlePadding: EdgeInsets.all(10.h),
  //       contentPadding: EdgeInsets.all(10.w),
  //       expandedTitleBackgroundColor: Colors.white,
  //       contentBackgroundColor: Colors.white,
  //       titleChild: Text(
  //         'Platforms that provide investment opportunity in Fractional Real Estate',
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20.sp,
  //             fontFamily: "Poppins",
  //             fontWeight: FontWeight.w500),
  //       ),
  //       contentChild: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 color: Color(0xFF143C6D),
  //                 height: 1,
  //                 width: MediaQuery.of(context).size.width / 1.65,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF143C6D),
  //                     borderRadius: BorderRadius.circular(100.r)),
  //                 height: 8,
  //                 width: 8,
  //               )
  //             ],
  //           ),
  //           sizedBoxHeight(15.h),
  //           Text(
  //             "Private Equity Funds is a collective investment scheme, used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership. There is a team of professionals in the private equity firm who raise the money and manage the entire fund. The fund managers utilize the funds for raising new capital, new technology for the companies, future acquisitions, and even investing in other companies to make the fund strong. Private Equity Funds usually have a high rate of return. Most of the investors in a PE are High- Net individuals, or Investment Banks.",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontFamily: "Poppins",
  //               fontSize: 18.sp,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

}
