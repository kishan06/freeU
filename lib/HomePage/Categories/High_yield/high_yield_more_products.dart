import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/FractionalRealEstateProperty/PropertiesInvestment.dart';
import 'package:freeu/HomePage/Categories/High_yield/highyield_view_investment.dart';
import 'package:freeu/HomePage/Categories/High_yield/model/highyield_prods_model.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

class HighYieldMoreProduct extends StatefulWidget {
  const HighYieldMoreProduct({super.key});

  @override
  State<HighYieldMoreProduct> createState() => _HighYieldMoreProductState();
}

class _HighYieldMoreProductState extends State<HighYieldMoreProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1FAFF),
      appBar:
          //  CustomSignupAppBar(
          //   titleTxt: "",
          //   bottomtext: false,
          // ),
          AppBar(
        backgroundColor: Color(0xFFF1FAFF),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            // Get.toNamed("/privateequity");
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 26,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "High Yield Fixed Income",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  ButtonsTabBar(
                    buttonMargin: EdgeInsets.zero,
                    contentPadding: EdgeInsets.only(left: 27, right: 27),
                    radius: 4,
                    backgroundColor: Color(0xFF143C6D),
                    unselectedBorderColor: Color(0xFFFFFFFF),
                    //borderWidth: 1,
                    borderColor: Color(0xFFFFFFFF),
                    unselectedBackgroundColor: Color(0xFFFFFFFF),
                    unselectedLabelStyle: TextStyle(color: Color(0xFF0F0C0C)),
                    labelStyle: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    // decoration: const BoxDecoration(
                    //     color: Color(0xFF143C6D),
                    //     //borderRadius: BorderRadius.circular(4),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.red,
                    //         blurRadius: 3.0,
                    //         spreadRadius: 4,
                    //         offset: Offset(5.0, 5.0),
                    //       )
                    //     ]),
                    tabs: [
                      Tab(
                        text: "Open",
                      ),
                      Tab(
                        text: "Fully funded",
                      ),
                      Tab(
                        text: "Resale",
                      ),
                    ],
                  ),
                  sizedBoxHeight(15.h),
                  Expanded(
                    child: TabBarView(
                      children: [
                        FirstTab(),
                        SecondTab(),
                        ThirdTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        // sizedBoxHeight(20.h),
        const Text("No Data Found")
      ],
    );
  }
}

class SecondTab extends StatefulWidget {
  const SecondTab({super.key});

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  List<HighYieldProds> highYieldProductData = [
    HighYieldProds(
        securityName: "SPANDANA SPHOORTY FINANCIAL LIMITED 11.35 NCD",
        minimum: "10,00,000",
        securityType: "Debentures",
        isin: "INE572J07489",
        issuerCompany: "SPANDANA SPHOORTY FINANCIAL LIMITED",
        issueSize: "100 CR",
        issueType: "Private",
        listingDetails: "Yes",
        ratingCategory: "A",
        minInvestment: "10,00,000",
        couponRate: "11.35%",
        yieldInMaturity: "11.99%",
        InterestPayment: "Monthly",
        AllotmentDate: "Dec 08, 2022",
        MaturityDate: "Sept 08, 2024"),
    HighYieldProds(
        securityName: "Five-Star Business Finance Limited 11.4%",
        minimum: "10,000",
        securityType: "NCD",
        isin: "INE128S07366",
        issuerCompany: "Five Star Business Finance Limited",
        issueSize: "30 CR",
        issueType: "N/A",
        listingDetails: "Listed on NSE/BSE",
        ratingCategory: "ICRA A+",
        minInvestment: "10,000",
        couponRate: "11.40%",
        yieldInMaturity: "8.40%",
        InterestPayment: "Monthly",
        AllotmentDate: "Apr 11, 2019",
        MaturityDate: "Apr 11, 2024"),
    HighYieldProds(
        securityName: "NAVI",
        minimum: "1,00,000",
        securityType: "NCD",
        isin: "N/A",
        issuerCompany: "Navi Technologies Ltd",
        issueSize: "5 CR",
        issueType: "Private Placement",
        listingDetails: "N/A",
        ratingCategory: "A",
        minInvestment: "1,00,000",
        couponRate: "11.35%",
        yieldInMaturity: "11.96%",
        InterestPayment: "Monthly",
        AllotmentDate: "Mar 31,2023",
        MaturityDate: "Mar 31,2025"),
    HighYieldProds(
        securityName: "Rupeek",
        minimum: "1,00,000",
        securityType: "NCD",
        isin: "N/A",
        issuerCompany: "Rupeek Capital",
        issueSize: "10 CR",
        issueType: "Private Placement",
        listingDetails: "N/A",
        ratingCategory: "BBB",
        minInvestment: "1,00,000",
        couponRate: "N/A",
        yieldInMaturity: "12.52%",
        InterestPayment: "Monthly",
        AllotmentDate: "Mar 21,2023",
        MaturityDate: "Mar 29,2024"),
    HighYieldProds(
        securityName: "Slice",
        minimum: "1,00,000",
        securityType: "NCD",
        isin: "N/A",
        issuerCompany: "Quadrillion Finance Private Limited",
        issueSize: "10 CR",
        issueType: "Private Placement",
        listingDetails: "N/A",
        ratingCategory: "BBB",
        minInvestment: "1,00,000",
        couponRate: "12.32%",
        yieldInMaturity: "13%",
        InterestPayment: "Monthly",
        AllotmentDate: "April 12,2023",
        MaturityDate: "April 30, 2023"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return sizedBoxHeight(15.h);
        },
        itemCount: highYieldProductData.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return properties(highYieldProductData[index].securityName,
              highYieldProductData[index].minimum, index);
        });
  }

  Widget properties(
    String title,
    String minimum,
    int index,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Color(0x48B9B9BE),
                blurRadius: 20.0,
                spreadRadius: 0,
                // offset: Offset(-20, -20,),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
            child: Column(
              children: [
                // Image.asset(
                //   // image,
                //   "assets/images/fractional.png",
                //   width: 358,
                //   height: 162,
                // ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          title,
                          //"Navi Mumbai Office \nOpportunity II",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 16),
                //   child: Row(
                //     children: [
                //       Image.asset(
                //         // image1,
                //         "assets/images/place.png",
                //         width: 50.w,
                //         height: 50.h,
                //       ),
                //       SizedBox(
                //         width: 25.w,
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.only(right: 165),
                //             child: Text(
                //               //text1,
                //               "Location:",
                //               textAlign: TextAlign.left,
                //               style: TextStyle(
                //                 fontSize: 18.sp,
                //                 color: Color(0XFF000000),
                //                 fontFamily: 'Poppins',
                //                 //fontWeight: FontWeight.w300,
                //               ),
                //             ),
                //           ),
                //           Text(
                //             //subtext1,
                //             "Seawoods, Navi Mumbai",
                //             style: TextStyle(
                //               fontSize: 20.sp,
                //               color: Color(0XFF000000),
                //               fontFamily: 'Poppins',
                //               fontWeight: FontWeight.w500,
                //             ),
                //           ),
                //         ],
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 30.h,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        //image2,
                        "assets/images/investmentproperties (1).png",
                        width: 50.w,
                        height: 50.w,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 145),
                            child: Text(
                              // text2,
                              "Targeted IRR:",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins',
                                //fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 212),
                            child: Text(
                              // subtext2,
                              "12.7%",
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        // image3,
                        "assets/images/propertiestransfer.png",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            // text3,
                            "Minimum investment amount",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0XFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            //subtext3,
                            minimum,
                            // " 1 Crore",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Color(0XFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 220, 220, 226),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.blue143C6D,
                    ),
                    child: OpenContainerWrappers(
                      openBuild: HighYieldViewInvestment(
                          highYieldProds: highYieldProductData[index]),
                      closeBuild: Container(
                        width: double.infinity,
                        height: 50.h,
                        child: Center(
                            child: Text(
                          'View Details',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18.sp,
                          ),
                        )),
                      ),

                      // CustomNextButton(
                      //   text: 'View Investment',
                      //   // ontap: () {
                      //   //   Get.to(PropertiesInvestment());
                      //   //   // Get.toNamed("/propertiesinvestment");
                      //   // },
                      // ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        // sizedBoxHeight(20.h),
        const Text("No Data Found")
      ],
    );
  }
}
