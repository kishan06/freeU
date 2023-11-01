import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Market/Marketnewdesign/alternativelearnmore.dart';
import 'package:freeu/HomePage/Market/Marketnewdesign/fractionallearnmore.dart';
import 'package:freeu/HomePage/Market/Marketnewdesign/marketlearnmore.dart';
import 'package:freeu/HomePage/Market/Marketnewdesign/otherslearnmore.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/Marketplace/Formmarketplace.dart';
import 'package:freeu/viewModel/Marketplace/Getmarketplace.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'featured_investment.dart';
import 'market_see_investment.dart';
import 'package:async/src/future_group.dart';

class MarketTab extends StatefulWidget {
  const MarketTab({super.key});

  @override
  State<MarketTab> createState() => _MarketTabState();
}

class _MarketTabState extends State<MarketTab> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List featuredInvestments = [
    {
      "text1": "Fractional Real Estate",
      "imageUrl": "assets/images/rahul-bhogal-Ub9LkIWxyec-unsplash.png",
      "title": "Vaishnavi Tech Park\nOpportunity",
      "add": "Outer Ring Road Sarjapur,\nBangalore",
    },
    {
      "text1": "Alternative investment funds",
      "imageUrl": "assets/images/toppicks.png",
      "title": "Tata Consultancy\nServices",
      "add": "Banyan Park,\nMumbai",
    },
    {
      "text1": "Fractional Real Estate",
      "imageUrl": "assets/images/rahul-bhogal-Ub9LkIWxyec-unsplash.png",
      "title": "Vaishnavi Tech Park\nOpportunity",
      "add": "Outer Ring Road Sarjapur,\nBangalore",
    },
    {
      "text1": "Alternative investment funds",
      "imageUrl": "assets/images/toppicks.png",
      "title": "Tata Consultancy\nServices",
      "add": "Banyan Park,\nMumbai",
    },
  ];

  FutureGroup futureGroup = FutureGroup();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureGroup.add(Marketplace().Spotlightinvest());
    futureGroup.add(Marketplace().Featuredinvest());
    futureGroup.add(Marketplace().Nonfeaturedinvest());
    futureGroup.add(FormMarketplace().Getform());
    futureGroup.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            sizedBoxWidth(45.w),
            sizedBoxWidth(5.w),
            Text(
              'Market Place',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
            const Spacer(),
          ],
        ),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: FutureBuilder(
        future: futureGroup.future,
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
          return 
          // featuredinve!.data![1].alternativeInvestmentFund!.isEmpty &&
          //         featuredinve!.data![0].fractionalRealEstate!.isEmpty &&
          //         featuredinve!.data![2].otherProducts!.isEmpty &&
          //         nonfeaturedinve!
          //             .data![1].alternativeInvestmentFund!.isEmpty &&
          //         nonfeaturedinve!.data![0].fractionalRealEstate!.isEmpty &&
          //         nonfeaturedinve!.data![2].otherProducts!.isEmpty &&
          //         spotlightinve == null &&
          //         spotlightinve == null
          //     ? 
          //     _buildNodataBody()
              // : 
              _buildBody();
        },
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(15.h),
            Text(
              'Find the right investment',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
            sizedBoxHeight(15.h),
            spotlightinve!.productName!.isEmpty &&
                    spotlightinve!.category!.isEmpty
                ? Center(
                    child: Text(
                      "No Data Available",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        //Color(0xFF008083),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                      ),
                    ),
                  )
                : Container(
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
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.w, right: 16.w),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    // peerProductsModelObj!
                                    //     .data![index].peerToPeers!.scheme!,
                                    spotlightinve!.productName ?? "NA",
                                    style: TextStyle(
                                        fontSize: 25.sp,
                                        fontFamily: 'Poppins',
                                        color: const Color(0XFF000000),
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
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              children: [
                                // Image.asset(
                                //   "assets/images/investmentproperties (1).png",
                                //   width: 50.w,
                                //   height: 50.w,
                                // ),
                                // SizedBox(
                                //   width: 25.w,
                                // ),
                                Text(
                                  "Expected Sale:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: const Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                sizedBoxWidth(8.w),
                                Text(
                                  // viewSlider[index]['Expected Return'],
                                  spotlightinve!.expectedSale.toString(),
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
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
                                // Image.asset(
                                //   "assets/images/propertiestransfer.png",
                                //   width: 50.w,
                                //   height: 50.h,
                                // ),
                                // SizedBox(
                                //   width: 25.w,
                                // ),
                                Text(
                                  "Category:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: const Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                sizedBoxWidth(8.w),
                                Text(
                                  // viewSlider[index]['Minimum Investment'],
                                  spotlightinve!.category ?? "NA",
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: const Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
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
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 220, 220, 226),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10.r),
                                color: AppColors.blue143C6D,
                              ),
                              child: OpenContainerWrappers(
                                openBuild: 
                                spotlightinve!.table == "other-products" 
                                ?
                                 Otherslearnmore(
                                        slug: spotlightinve!.slug ?? "NA",
                                      )
                                      :
                                      spotlightinve!.table == "alternative-investment-fund"
                                      ?
                                Marketplacelearnmore(
                                    slug: spotlightinve!.slug ?? "NA")
                                    : spotlightinve!.table == "fractional-real-estate"
                                    ?
                                    Fractionalestatelearnmore(
                                        slug: spotlightinve!.slug ?? "NA",
                                      )
                                      : SizedBox(),
                                // PeerViewInvestment(
                                //     slug: peerProductsModelObj!
                                //         .data![index].peerToPeers!.slug!),
                                closeBuild: SizedBox(
                                  width: double.infinity,
                                  height: 50.h,
                                  child: Center(
                                      child: Text(
                                    'View Offering',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18.sp,
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
            sizedBoxHeight(15.h),
            // Text(
            //   'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            //   softWrap: true,
            //   textAlign: TextAlign.left,
            //   style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
            // ),
            // sizedBoxHeight(15.h),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: "Search",
            //     hintStyle:
            //         TextStyle(color: Colors.grey.shade600, fontSize: 16.sp),
            //     prefixIcon: Icon(
            //       Icons.search,
            //       color: Colors.black87,
            //       size: 25.sp,
            //     ),
            //     filled: true,
            //     fillColor: Colors.white,
            //     contentPadding: EdgeInsets.all(10.h),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10.sp),
            //       borderSide: BorderSide(
            //         color: Colors.grey.shade400,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10.sp),
            //       borderSide: BorderSide(
            //         color: Colors.grey.shade400,
            //       ),
            //     ),
            //   ),
            // ),
            // sizedBoxHeight(15.h),
            // Container(
            //   height: 180.h,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //         const Color(0xFF006796),
            //         const Color(0xFF00344B),
            //       ]),
            //       // color: AppColors.blueL_006796,
            //       borderRadius: BorderRadius.circular(15.h),
            //       image: const DecorationImage(
            //         alignment: Alignment.centerRight,
            //         image: AssetImage("assets/images/marketContainer.png"),
            //       )),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Sell your investment with us',
            //           style: TextStyle(fontSize: 18.sp, color: Colors.white),
            //         ),
            //         const Spacer(),
            //         text16White(
            //             'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            //             textAlign: TextAlign.left),
            //         const Spacer(),
            //         OpenContainerWrappers(
            //             closeBuild: Container(
            //               decoration: BoxDecoration(
            //                   color: Colors.white,
            //                   borderRadius: BorderRadius.circular(30.r)),
            //               height: 35.h,
            //               width: 210.w,
            //               child: Center(
            //                 child: Text(
            //                   'Sell my investments',
            //                   style: TextStyle(fontSize: 16.sp),
            //                 ),
            //               ),
            //             ),
            //             openBuild: const MarketSeeMyInvestment()),
            //       ],
            //     ),
            //   ),
            // ),
            // sizedBoxHeight(20.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text20Black("Featured Investments"),
                    InkWell(
                        onTap: () {
                          Get.toNamed("/EntryPoint",
                              arguments: 1, preventDuplicates: false);
                        },
                        child: text14Grey272424("View more"))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),

                featuredinve!.data![1].alternativeInvestmentFund!.isEmpty &&
                        featuredinve!.data![0].fractionalRealEstate!.isEmpty &&
                        featuredinve!.data![2].otherProducts!.isEmpty
                    ? Center(
                        child: Text(
                          "No Data Available",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            //Color(0xFF008083),
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                          ),
                        ),
                      )
                    : Container(
                        height: 220.h,
                        child:
                            // ListView.builder(
                            //   scrollDirection: Axis.horizontal,
                            //   itemCount: featuredinve!.data!.length,
                            //   itemBuilder: (BuildContext context, int index) {
                            //     var investmentData = featuredinve!.data![index];

                            //     if (investmentData.fractionalRealEstate != null) {
                            //       var investmentDetails =
                            //           investmentData.fractionalRealEstate![0];
                            //       return OpenContainerWrappers(
                            //         closeBuild: fractionalCard(
                            //           title: investmentDetails.propertyName ?? "NA",
                            //           text1: investmentDetails.propertyAddress ?? "NA",
                            //           text2: investmentDetails.assetType ?? "NA",
                            //           text3: investmentDetails
                            //                   .fractionalRealEstatePlatform ??
                            //               "NA",
                            //           text4: investmentDetails.annualRentalYieldEarned ??
                            //               "NA",
                            //           text5:
                            //               investmentDetails.expectedSellingPrice ?? "NA",
                            //         ),
                            //         openBuild: FeaturedInvestment(
                            //           pageIndex: index,
                            //         ),
                            //       );
                            //     } else if (investmentData.alternativeInvestmentFund !=
                            //         null) {
                            //       var investmentDetails =
                            //           investmentData.alternativeInvestmentFund![0];
                            //       return OpenContainerWrappers(
                            //         closeBuild: alternativeCard(
                            //           title: investmentDetails.nameOfTheAifFund ?? "NA",
                            //           text1: investmentDetails.fundCategory ?? "NA",
                            //           text2: investmentDetails.typeOfFund ?? "NA",
                            //           text3: investmentDetails.expectedSalePerUnit
                            //               .toString(),
                            //           text4: investmentDetails.noOfUnitsYouWishToSell
                            //               .toString(),
                            //         ),
                            //         openBuild: FeaturedInvestment(
                            //           pageIndex: index,
                            //         ),
                            //       );
                            //     } else if (investmentData.otherProducts != null) {
                            //       var investmentDetails =
                            //           investmentData.otherProducts![0];
                            //       return OpenContainerWrappers(
                            //         closeBuild: otherproductsCard(
                            //           title: investmentDetails.securityName ?? "NA",
                            //           text1: investmentDetails.productCategory ?? "NA",
                            //           text2: investmentDetails.instrumentIssuer ?? "NA",
                            //           text3: investmentDetails.noOfUnitsOfferedForSale
                            //               .toString(),
                            //           text4: investmentDetails.expectedSalePricePerUnit
                            //               .toString(),
                            //         ),
                            //         openBuild: FeaturedInvestment(
                            //           pageIndex: index,
                            //         ),
                            //       );
                            //     } else {
                            //       return Text("No featured investments available");
                            //     }
                            //   },
                            // ),

                            //     ListView.builder(
                            //   scrollDirection: Axis.horizontal,
                            //   itemCount: featuredinve!.data!.length,
                            //   itemBuilder: (BuildContext context, int index) {
                            //     var investmentData = featuredinve!.data![index];

                            //     if (investmentData.fractionalRealEstate != null &&
                            //         investmentData.fractionalRealEstate!.isNotEmpty) {
                            //       return Column(
                            //         children: investmentData.fractionalRealEstate!
                            //             .map((investmentDetails) {
                            //           return OpenContainerWrappers(
                            //               closeBuild: fractionalCard(
                            //                 title:
                            //                     investmentDetails.propertyName ?? "NA",
                            //                 text1: investmentDetails.propertyAddress ??
                            //                     "NA",
                            //                 text2: investmentDetails.assetType ?? "NA",
                            //                 text3: investmentDetails
                            //                         .fractionalRealEstatePlatform ??
                            //                     "NA",
                            //                 text4: investmentDetails
                            //                         .annualRentalYieldEarned ??
                            //                     "NA",
                            //                 text5: investmentDetails
                            //                         .expectedSellingPrice ??
                            //                     "NA",
                            //               ),
                            //               openBuild: Fractionalestatelearnmore(
                            //                   slug: investmentDetails.slug ?? "NA")
                            //               // FeaturedInvestment(
                            //               //   pageIndex: index,
                            //               // ),
                            //               );
                            //         }).toList(),
                            //       );
                            //     } else if (investmentData.alternativeInvestmentFund !=
                            //             null &&
                            //         investmentData
                            //             .alternativeInvestmentFund!.isNotEmpty) {
                            //       return Column(
                            //         children: investmentData.alternativeInvestmentFund!
                            //             .map((investmentDetails) {
                            //           return OpenContainerWrappers(
                            //               closeBuild: alternativeCard(
                            //                 title: investmentDetails.nameOfTheAifFund ??
                            //                     "NA",
                            //                 text1:
                            //                     investmentDetails.fundCategory ?? "NA",
                            //                 text2: investmentDetails.typeOfFund ?? "NA",
                            //                 text3: investmentDetails.expectedSalePerUnit
                            //                     .toString(),
                            //                 text4: investmentDetails
                            //                     .noOfUnitsYouWishToSell
                            //                     .toString(),
                            //               ),
                            //               openBuild: Alternativeinvestlearnmore(
                            //                   slug: investmentDetails.slug ?? "NA")
                            //               // FeaturedInvestment(
                            //               //   pageIndex: index,
                            //               // ),
                            //               );
                            //         }).toList(),
                            //       );
                            //     } else if (investmentData.otherProducts != null &&
                            //         investmentData.otherProducts!.isNotEmpty) {
                            //       return Column(
                            //         children: investmentData.otherProducts!
                            //             .map((investmentDetails) {
                            //           return OpenContainerWrappers(
                            //               closeBuild: otherproductsCard(
                            //                 title:
                            //                     investmentDetails.securityName ?? "NA",
                            //                 text1: investmentDetails.productCategory ??
                            //                     "NA",
                            //                 text2: investmentDetails.instrumentIssuer ??
                            //                     "NA",
                            //                 text3: investmentDetails
                            //                     .noOfUnitsOfferedForSale
                            //                     .toString(),
                            //                 text4: investmentDetails
                            //                     .expectedSalePricePerUnit
                            //                     .toString(),
                            //               ),
                            //               openBuild: Otherslearnmore(
                            //                   slug: investmentDetails.slug ?? "NA")
                            //               // FeaturedInvestment(
                            //               //   pageIndex: index,
                            //               // ),
                            //               );
                            //         }).toList(),
                            //       );
                            //     } else {
                            //       return Text("No featured investments available");
                            //     }
                            //   },
                            // ))

                            //       ListView.builder(
                            //     scrollDirection: Axis.horizontal,
                            //     itemCount: featuredinve!.data!.length,
                            //     itemBuilder: (BuildContext context, int index) {
                            //       var investmentData = featuredinve!.data![index];

                            //       if (investmentData.fractionalRealEstate != null &&
                            //           investmentData.fractionalRealEstate!.isNotEmpty) {
                            //         return Column(
                            //           children: investmentData.fractionalRealEstate!
                            //               .map((investmentDetails) {
                            //             return OpenContainerWrappers(
                            //                 closeBuild: fractionalCard(
                            //                   title: investmentDetails.propertyName ?? "NA",
                            //                   text1:
                            //                       investmentDetails.propertyAddress ?? "NA",
                            //                   text2: investmentDetails.assetType ?? "NA",
                            //                   text3: investmentDetails
                            //                           .fractionalRealEstatePlatform ??
                            //                       "NA",
                            //                   text4: investmentDetails
                            //                           .annualRentalYieldEarned ??
                            //                       "NA",
                            //                   text5:
                            //                       investmentDetails.expectedSellingPrice ??
                            //                           "NA",
                            //                 ),
                            //                 openBuild: Fractionalestatelearnmore(
                            //                     slug: investmentDetails.slug ?? "NA"));
                            //           }).toList(),
                            //         );
                            //       } else if (investmentData.alternativeInvestmentFund !=
                            //               null &&
                            //           investmentData
                            //               .alternativeInvestmentFund!.isNotEmpty) {
                            //         return Column(
                            //           children: investmentData.alternativeInvestmentFund!
                            //               .map((investmentDetails) {
                            //             return OpenContainerWrappers(
                            //                 closeBuild: alternativeCard(
                            //                   title: investmentDetails.nameOfTheAifFund ??
                            //                       "NA",
                            //                   text1: investmentDetails.fundCategory ?? "NA",
                            //                   text2: investmentDetails.typeOfFund ?? "NA",
                            //                   text3: investmentDetails.expectedSalePerUnit
                            //                       .toString(),
                            //                   text4: investmentDetails
                            //                       .noOfUnitsYouWishToSell
                            //                       .toString(),
                            //                 ),
                            //                 openBuild: Alternativeinvestlearnmore(
                            //                     slug: investmentDetails.slug ?? "NA"));
                            //           }).toList(),
                            //         );
                            //       } else if (investmentData.otherProducts != null &&
                            //           investmentData.otherProducts!.isNotEmpty) {
                            //         return Column(
                            //           children: investmentData.otherProducts!
                            //               .map((investmentDetails) {
                            //             return OpenContainerWrappers(
                            //                 closeBuild: otherproductsCard(
                            //                   title: investmentDetails.securityName ?? "NA",
                            //                   text1:
                            //                       investmentDetails.productCategory ?? "NA",
                            //                   text2: investmentDetails.instrumentIssuer ??
                            //                       "NA",
                            //                   text3: investmentDetails
                            //                       .noOfUnitsOfferedForSale
                            //                       .toString(),
                            //                   text4: investmentDetails
                            //                       .expectedSalePricePerUnit
                            //                       .toString(),
                            //                 ),
                            //                 openBuild: Otherslearnmore(
                            //                     slug: investmentDetails.slug ?? "NA"));
                            //           }).toList(),
                            //         );
                            //       } else {
                            //         return Text("No featured investments available");
                            //       }
                            //     },
                            //   ),
                            // ),

                            ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: featuredinve!.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                            var investmentData = featuredinve!.data![index];

                            List<Widget> investmentWidgets = [];

                            if (investmentData.fractionalRealEstate != null &&
                                investmentData
                                    .fractionalRealEstate!.isNotEmpty) {
                              // Wrap fractional real estate cards in a Row
                              investmentWidgets.add(
                                Row(
                                  children: investmentData.fractionalRealEstate!
                                      .map((investmentDetails) {
                                    return OpenContainerWrappers(
                                      closeBuild: fractionalCard(
                                        title: investmentDetails.propertyName ??
                                            "NA",
                                        text1:
                                            investmentDetails.propertyAddress ??
                                                "NA",
                                        text2:
                                            investmentDetails.assetType ?? "NA",
                                        text3: investmentDetails
                                                .fractionalRealEstatePlatform ??
                                            "NA",
                                        text4: investmentDetails
                                                .annualRentalYieldEarned ??
                                            "NA",
                                        text5: investmentDetails
                                                .expectedSellingPrice ??
                                            "NA",
                                      ),
                                      openBuild: Fractionalestatelearnmore(
                                        slug: investmentDetails.slug ?? "NA",
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }

                            if (investmentData.alternativeInvestmentFund !=
                                    null &&
                                investmentData
                                    .alternativeInvestmentFund!.isNotEmpty) {
                              // Wrap alternative investment cards in a Row
                              investmentWidgets.add(
                                Row(
                                  children: investmentData
                                      .alternativeInvestmentFund!
                                      .map((investmentDetails) {
                                    return OpenContainerWrappers(
                                      closeBuild: alternativeCard(
                                        title: investmentDetails
                                                .nameOfTheAifFund ??
                                            "NA",
                                        text1: investmentDetails.fundCategory ??
                                            "NA",
                                        text2: investmentDetails.typeOfFund ??
                                            "NA",
                                        text3: investmentDetails
                                            .expectedSalePerUnit
                                            .toString(),
                                        text4: investmentDetails
                                            .noOfUnitsYouWishToSell
                                            .toString(),
                                      ),
                                      openBuild: Alternativeinvestlearnmore(
                                        slug: investmentDetails.slug ?? "NA",
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }

                            if (investmentData.otherProducts != null &&
                                investmentData.otherProducts!.isNotEmpty) {
                              // Wrap other products cards in a Row
                              investmentWidgets.add(
                                Row(
                                  children: investmentData.otherProducts!
                                      .map((investmentDetails) {
                                    return OpenContainerWrappers(
                                      closeBuild: otherproductsCard(
                                        title: investmentDetails.securityName ??
                                            "NA",
                                        text1:
                                            investmentDetails.productCategory ??
                                                "NA",
                                        text2: investmentDetails
                                                .instrumentIssuer ??
                                            "NA",
                                        text3: investmentDetails
                                            .noOfUnitsOfferedForSale
                                            .toString(),
                                        text4: investmentDetails
                                            .expectedSalePricePerUnit
                                            .toString(),
                                      ),
                                      openBuild: Otherslearnmore(
                                        slug: investmentDetails.slug ?? "NA",
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }

                            // if (investmentWidgets.isEmpty) {
                            //   return Text("No featured investments available");
                            // }

                            return investmentWidgets.isNotEmpty
                                ? Column(
                                    children: investmentWidgets,
                                  )
                                : SizedBox.shrink();
                          },
                        )),

                // SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Row(
                //       children: List.generate(
                //         3,
                //         (index) {
                //           return OpenContainerWrappers(
                //             closeBuild: topPickCard(
                //               text1: featuredInvestments[index]["text1"],
                //               imagePath: featuredInvestments[index]["imageUrl"],
                //               title: featuredInvestments[index]["title"],
                //               add: featuredInvestments[index]["add"],
                //             ),
                //             openBuild: FeaturedInvestment(
                //               pageIndex: index,
                //             ),
                //           );
                //         },
                //       ),
                //     ),
                //   )
              ],
            ),
            sizedBoxHeight(15.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 200.w,
                        child: text20Black("Non - Featured Investments")),
                    InkWell(
                        onTap: () {
                          Get.toNamed("/EntryPoint",
                              arguments: 1, preventDuplicates: false);
                        },
                        child: text14Grey272424("View more"))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                nonfeaturedinve!.data![1].alternativeInvestmentFund!.isEmpty &&
                        nonfeaturedinve!
                            .data![0].fractionalRealEstate!.isEmpty &&
                        nonfeaturedinve!.data![2].otherProducts!.isEmpty
                    ? Center(
                        child: Text(
                          "No Data Available",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            //Color(0xFF008083),
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                          ),
                        ),
                      )
                    : Container(
                        height: 220.h,
                        child:

//

                            //     ListView.builder(
                            //   scrollDirection: Axis.horizontal,
                            //   itemCount: nonfeaturedinve!.data!.length,
                            //   itemBuilder: (BuildContext context, int index) {
                            //     var investmentData = nonfeaturedinve!.data![index];

                            //     List<Widget> investmentWidgets = [];

                            //     if (investmentData.fractionalRealEstate != null &&
                            //         investmentData.fractionalRealEstate!.isNotEmpty) {
                            //       investmentWidgets.addAll(investmentData
                            //           .fractionalRealEstate!
                            //           .map((investmentDetails) {
                            //         return OpenContainerWrappers(
                            //           closeBuild: fractionalCard(
                            //             title: investmentDetails.propertyName ?? "NA",
                            //             text1:
                            //                 investmentDetails.propertyAddress ?? "NA",
                            //             text2: investmentDetails.assetType ?? "NA",
                            //             text3: investmentDetails
                            //                     .fractionalRealEstatePlatform ??
                            //                 "NA",
                            //             text4:
                            //                 investmentDetails.annualRentalYieldEarned ??
                            //                     "NA",
                            //             text5: investmentDetails.expectedSellingPrice ??
                            //                 "NA",
                            //           ),
                            //           openBuild: Fractionalestatelearnmore(
                            //             slug: investmentDetails.slug ?? "NA",
                            //           ),
                            //         );
                            //       }).toList());
                            //     }

                            //     if (investmentData.alternativeInvestmentFund != null &&
                            //         investmentData
                            //             .alternativeInvestmentFund!.isNotEmpty) {
                            //       investmentWidgets.addAll(investmentData
                            //           .alternativeInvestmentFund!
                            //           .map((investmentDetails) {
                            //         return OpenContainerWrappers(
                            //           closeBuild: alternativeCard(
                            //             title:
                            //                 investmentDetails.nameOfTheAifFund ?? "NA",
                            //             text1: investmentDetails.fundCategory ?? "NA",
                            //             text2: investmentDetails.typeOfFund ?? "NA",
                            //             text3: investmentDetails.expectedSalePerUnit
                            //                 .toString(),
                            //             text4: investmentDetails.noOfUnitsYouWishToSell
                            //                 .toString(),
                            //           ),
                            //           openBuild: Alternativeinvestlearnmore(
                            //             slug: investmentDetails.slug ?? "NA",
                            //           ),
                            //         );
                            //       }).toList());
                            //     }

                            //     if (investmentData.otherProducts != null &&
                            //         investmentData.otherProducts!.isNotEmpty) {
                            //       investmentWidgets.addAll(investmentData.otherProducts!
                            //           .map((investmentDetails) {
                            //         return OpenContainerWrappers(
                            //           closeBuild: otherproductsCard(
                            //             title: investmentDetails.securityName ?? "NA",
                            //             text1:
                            //                 investmentDetails.productCategory ?? "NA",
                            //             text2:
                            //                 investmentDetails.instrumentIssuer ?? "NA",
                            //             text3: investmentDetails.noOfUnitsOfferedForSale
                            //                 .toString(),
                            //             text4: investmentDetails
                            //                 .expectedSalePricePerUnit
                            //                 .toString(),
                            //           ),
                            //           openBuild: Otherslearnmore(
                            //             slug: investmentDetails.slug ?? "NA",
                            //           ),
                            //         );
                            //       }).toList());
                            //     }

                            //     return investmentWidgets.isNotEmpty
                            //         ? Column(
                            //             children: investmentWidgets,
                            //           )
                            //         : SizedBox
                            //             .shrink(); // If there's no data, return an empty SizedBox
                            //   },
                            // )

                            ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: nonfeaturedinve!.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                            var investmentData = nonfeaturedinve!.data![index];

                            List<Widget> investmentWidgets = [];

                            if (investmentData.fractionalRealEstate != null &&
                                investmentData
                                    .fractionalRealEstate!.isNotEmpty) {
                              // Wrap fractional real estate cards in a Row
                              investmentWidgets.add(
                                Row(
                                  children: investmentData.fractionalRealEstate!
                                      .map((investmentDetails) {
                                    return OpenContainerWrappers(
                                      closeBuild: fractionalCard(
                                        title: investmentDetails.propertyName ??
                                            "NA",
                                        text1:
                                            investmentDetails.propertyAddress ??
                                                "NA",
                                        text2:
                                            investmentDetails.assetType ?? "NA",
                                        text3: investmentDetails
                                                .fractionalRealEstatePlatform ??
                                            "NA",
                                        text4: investmentDetails
                                                .annualRentalYieldEarned ??
                                            "NA",
                                        text5: investmentDetails
                                                .expectedSellingPrice ??
                                            "NA",
                                      ),
                                      openBuild: Fractionalestatelearnmore(
                                        slug: investmentDetails.slug ?? "NA",
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }

                            if (investmentData.alternativeInvestmentFund !=
                                    null &&
                                investmentData
                                    .alternativeInvestmentFund!.isNotEmpty) {
                              // Wrap alternative investment cards in a Row
                              investmentWidgets.add(
                                Row(
                                  children: investmentData
                                      .alternativeInvestmentFund!
                                      .map((investmentDetails) {
                                    return OpenContainerWrappers(
                                      closeBuild: alternativeCard(
                                        title: investmentDetails
                                                .nameOfTheAifFund ??
                                            "NA",
                                        text1: investmentDetails.fundCategory ??
                                            "NA",
                                        text2: investmentDetails.typeOfFund ??
                                            "NA",
                                        text3: investmentDetails
                                            .expectedSalePerUnit
                                            .toString(),
                                        text4: investmentDetails
                                            .noOfUnitsYouWishToSell
                                            .toString(),
                                      ),
                                      openBuild: Alternativeinvestlearnmore(
                                        slug: investmentDetails.slug ?? "NA",
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }

                            if (investmentData.otherProducts != null &&
                                investmentData.otherProducts!.isNotEmpty) {
                              // Wrap other products cards in a Row
                              investmentWidgets.add(
                                Row(
                                  children: investmentData.otherProducts!
                                      .map((investmentDetails) {
                                    return OpenContainerWrappers(
                                      closeBuild: otherproductsCard(
                                        title: investmentDetails.securityName ??
                                            "NA",
                                        text1:
                                            investmentDetails.productCategory ??
                                                "NA",
                                        text2: investmentDetails
                                                .instrumentIssuer ??
                                            "NA",
                                        text3: investmentDetails
                                            .noOfUnitsOfferedForSale
                                            .toString(),
                                        text4: investmentDetails
                                            .expectedSalePricePerUnit
                                            .toString(),
                                      ),
                                      openBuild: Otherslearnmore(
                                        slug: investmentDetails.slug ?? "NA",
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }

                            // if (investmentWidgets.isEmpty) {
                            //   return Text("No featured investments available");
                            // }

                            return investmentWidgets.isNotEmpty
                                ? Column(
                                    children: investmentWidgets,
                                  )
                                : SizedBox.shrink();
                          },
                        ))
              ],
            ),
            sizedBoxHeight(80.h),
          ],
        ),
      ),
    );
  }

  Widget _buildNodataBody() {
    return
        //  Scaffold(
        //   body:
        Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        Text(
          "No Data Available",
          style: TextStyle(
            color: Colors.black,
            //Color(0xFF008083),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  // Widget topPickCard(
  //     {required String text1,
  //     required String imagePath,
  //     required String title,
  //     required String add}) {
  //   return Padding(
  //     padding: EdgeInsets.all(5.h),
  //     child: Container(
  //       width: 241.w,
  //       decoration: BoxDecoration(
  //         border: Border.all(
  //           width: 0.5.w,
  //           color: Color(0xffcfcfcf),
  //         ),
  //         color: AppColors.white,
  //         borderRadius: BorderRadius.circular(15.h),
  //       ),
  //       child: Padding(
  //         padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               text1,
  //               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
  //             ),
  //             sizedBoxHeight(10.h),
  //             Container(
  //               width: double.infinity,
  //               height: 100.h,
  //               decoration: BoxDecoration(
  //                 image: DecorationImage(
  //                   image: AssetImage(imagePath),
  //                   fit: BoxFit.fill,
  //                 ),
  //               ),
  //             ),
  //             sizedBoxHeight(10.h),
  //             text14Black(title),
  //             sizedBoxHeight(5.h),
  //             Row(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Padding(
  //                   padding: EdgeInsets.only(top: 5.h),
  //                   child: SvgPicture.asset(
  //                     "assets/logos/location.svg",
  //                     height: 14.h,
  //                     width: 10.w,
  //                   ),
  //                 ),
  //                 sizedBoxWidth(5.w),
  //                 Expanded(child: text13Grey707070(add))
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget fractionalCard({
    required String title,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
  }) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Container(
        width: 300.w,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5.w,
            color: Color(0xffcfcfcf),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.h),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
              ),
              sizedBoxHeight(10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Property Address:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Flexible(
                    child: Text(
                      text1,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0XFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "Asset Type:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "Platform:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text3,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "Annual Rental Yield Earned:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text4,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "Selling Price:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text5,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget alternativeCard({
    required String title,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
  }) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Container(
        width: 300.w,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5.w,
            color: Color(0xffcfcfcf),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.h),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
              ),
              sizedBoxHeight(10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fund Category:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Flexible(
                    child: Text(
                      text1,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0XFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Type of Fund:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Flexible(
                    child: Text(
                      text2,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0XFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "Expected Sale Per Unit:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text3,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "No Of Units You Wish To Sell:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text4,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(40.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget otherproductsCard({
    required String title,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
  }) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Container(
        width: 310.w,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5.w,
            color: Color(0xffcfcfcf),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.h),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
              ),
              sizedBoxHeight(10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Category:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Flexible(
                    child: Text(
                      text1,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0XFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "Instrument Issuer:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "No. Of Units For Sale:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text3,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Text(
                    "Expected Sale Price Per Unit:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Text(
                    text4,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
