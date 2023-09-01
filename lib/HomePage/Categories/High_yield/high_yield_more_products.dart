import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/High_yield/highyield_view_investment.dart';
import 'package:freeu/HomePage/Categories/High_yield/model/highyield_prods_model.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/Highyield.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HighYieldMoreProduct extends StatefulWidget {
  const HighYieldMoreProduct({super.key});

  @override
  State<HighYieldMoreProduct> createState() => _HighYieldMoreProductState();
}

class _HighYieldMoreProductState extends State<HighYieldMoreProduct> {
  late Future myfuture;
  @override
  void initState() {
    // TODO: implement initState
    myfuture = Highyield().HighyieldAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1FAFF),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1FAFF),
          elevation: 0,
          titleSpacing: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
            ),
            iconSize: 26,
            color: Colors.black,
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
            return _buildBody(
              context,
            );
          },
        ));
  }

  Widget _buildBody(context) {
    return Column(
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
          return sizedBoxHeight(0.h);
        },
        itemCount: highyieldObj!.data!.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
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
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                highyieldObj!.data?[index].highYieldFinances!
                                        .securityName ??
                                    "",
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
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/investmentproperties (1).png",
                              width: 50.w,
                              height: 50.w,
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Targeted IRR:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  "12.7%",
                                  //  highyieldObj!.data?[index].highYieldFinances!
                                  //           .minimumInvestment ?? "",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
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
                                SizedBox(
                                  width: 200.w,
                                  child: Text(
                                    // text3,
                                    "Minimum investment amount :",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Color(0XFF000000),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Text(
                                  highyieldObj!.data?[index].highYieldFinances!
                                          .minimumInvestment ??
                                      "",
                                  //subtext3,
                                  // minimum,
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
                              slug: highyieldObj!
                                      .data?[index].highYieldFinances!.slug ??
                                  "",
                              // highYieldProds: highYieldProductData[index]
                            ),
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

          // properties(highYieldProductData[index].securityName,
          //     highYieldProductData[index].minimum, index);
        });
  }

  // Widget properties(
  //   String title,
  //   String minimum,
  //   int index,
  // ) {
  //   return SingleChildScrollView(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 16.w),
  //       child: Container(
  //         decoration: const BoxDecoration(
  //           borderRadius: BorderRadius.all(Radius.circular(15)),
  //           color: Color(0xffffffff),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Color(0x48B9B9BE),
  //               blurRadius: 20.0,
  //               spreadRadius: 0,
  //               // offset: Offset(-20, -20,),
  //             )
  //           ],
  //         ),
  //         child: Padding(
  //           padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: 10.h,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 16),
  //                 child: Row(
  //                   children: [
  //                     Flexible(
  //                       child: Text(
  //                         title,
  //                         style: TextStyle(
  //                             fontSize: 25,
  //                             fontFamily: 'Poppins',
  //                             color: Color(0XFF000000),
  //                             fontWeight: FontWeight.w500),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 30.h,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 16),
  //                 child: Row(
  //                   children: [
  //                     Image.asset(
  //                       "assets/images/investmentproperties (1).png",
  //                       width: 50.w,
  //                       height: 50.w,
  //                     ),
  //                     SizedBox(
  //                       width: 25.w,
  //                     ),
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       children: [
  //                         Padding(
  //                           padding: const EdgeInsets.only(right: 145),
  //                           child: Text(
  //                             "Targeted IRR:",
  //                             textAlign: TextAlign.left,
  //                             style: TextStyle(
  //                               fontSize: 18.sp,
  //                               color: Color(0XFF000000),
  //                               fontFamily: 'Poppins',
  //                             ),
  //                           ),
  //                         ),
  //                         Padding(
  //                           padding: const EdgeInsets.only(right: 212),
  //                           child: Text(
  //                             "12.7%",
  //                             style: TextStyle(
  //                               fontSize: 20.sp,
  //                               color: Color(0XFF000000),
  //                               fontFamily: 'Poppins',
  //                               fontWeight: FontWeight.w500,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 30.h,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 16),
  //                 child: Row(
  //                   children: [
  //                     Image.asset(
  //                       "assets/images/propertiestransfer.png",
  //                       width: 50,
  //                       height: 50,
  //                     ),
  //                     SizedBox(
  //                       width: 25.w,
  //                     ),
  //                     Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       children: [
  //                         Text(
  //                           // text3,
  //                           "Minimum investment amount",
  //                           textAlign: TextAlign.left,
  //                           style: TextStyle(
  //                             fontSize: 18.sp,
  //                             color: Color(0XFF000000),
  //                             fontFamily: 'Poppins',
  //                             fontWeight: FontWeight.w300,
  //                           ),
  //                         ),
  //                         Text(
  //                           //subtext3,
  //                           minimum,
  //                           // " 1 Crore",
  //                           textDirection: TextDirection.ltr,
  //                           textAlign: TextAlign.left,
  //                           style: TextStyle(
  //                             fontSize: 20.sp,
  //                             color: Color(0XFF000000),
  //                             fontFamily: 'Poppins',
  //                             fontWeight: FontWeight.w500,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 40.h,
  //               ),
  //               Padding(
  //                 padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
  //                 child: Container(
  //                   height: 50.h,
  //                   decoration: BoxDecoration(
  //                     boxShadow: [
  //                       BoxShadow(
  //                         color: Color.fromARGB(255, 220, 220, 226),
  //                       )
  //                     ],
  //                     borderRadius: BorderRadius.circular(10.r),
  //                     color: AppColors.blue143C6D,
  //                   ),
  //                   child: OpenContainerWrappers(
  //                     openBuild: HighYieldViewInvestment(
  //                         highYieldProds: highYieldProductData[index]),
  //                     closeBuild: Container(
  //                       width: double.infinity,
  //                       height: 50.h,
  //                       child: Center(
  //                           child: Text(
  //                         'View Details',
  //                         style: TextStyle(
  //                           color: AppColors.white,
  //                           fontSize: 18.sp,
  //                         ),
  //                       )),
  //                     ),

  //                     // CustomNextButton(
  //                     //   text: 'View Investment',
  //                     //   // ontap: () {
  //                     //   //   Get.to(PropertiesInvestment());
  //                     //   //   // Get.toNamed("/propertiesinvestment");
  //                     //   // },
  //                     // ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        const Text("No Data Found")
      ],
    );
  }
}
