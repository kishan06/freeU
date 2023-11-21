import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/Investment/MarketplaceDashboard/investmentbought.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:async/src/future_group.dart';

class InvestmentBought extends StatefulWidget {
  const InvestmentBought({super.key});

  @override
  State<InvestmentBought> createState() => _InvestmentBoughtState();
}

class _InvestmentBoughtState extends State<InvestmentBought> {
  FutureGroup futureGroup = FutureGroup();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureGroup.add(Marketinvestbought().Alternativebought());
    futureGroup.add(Marketinvestbought().Fractionalbought());
    futureGroup.add(Marketinvestbought().Othersbought());

    futureGroup.close();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            leadingWidth: double.infinity,
            toolbarHeight: 80.h,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(10.h),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Investment Bought',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            backgroundColor: AppColors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(65.h),
              child: TabBar(
                labelPadding: EdgeInsets.only(bottom: 10.h),
                indicatorColor: Color(0xff002A5B),
                indicatorWeight: 5.h,
                tabs: [
                  Tab(
                    child: Text(
                      'Alternative Investment',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fractional Real Estate',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Other \nProducts',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
            ),
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
              return _buildBody();
            },
          )),
    );
  }

  Widget _buildBody() {
    return TabBarView(
      children: [Alternativetab(), Fractionaltab(), Otherstab()],
    );
  }

  Widget Alternativetab() {
    return alternativeboughtobj!.data!.isEmpty
        ? _buildNoDataBody(context)
        : ListView.separated(
            separatorBuilder: (context, index) {
              return sizedBoxHeight(0.h);
            },
            itemCount: alternativeboughtobj!.data!.length,
            // highyieldObj!.data!.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
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
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 5.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  alternativeboughtobj!
                                          .data![index].nameOfTheAifFund ??
                                      "NA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.sp),
                                ),
                                sizedBoxHeight(10.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name of the aif fund:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Flexible(
                                      child: Text(
                                        alternativeboughtobj!.data![index]
                                                .nameOfTheAifFund ??
                                            "NA",
                                        style: TextStyle(
                                          fontSize: 16.sp,
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
                                      "Fund category:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      alternativeboughtobj!
                                          .data![index].fundCategory
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Type of fund:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      alternativeboughtobj!
                                              .data![index].typeOfFund ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Fund Strategy:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      alternativeboughtobj!
                                              .data![index].fundStrategy ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Total capital commitment:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      alternativeboughtobj!.data![index]
                                              .totalCapitalCommitment ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Uncalled capital commitment:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      alternativeboughtobj!.data![index]
                                              .uncalledCapitalCommitment ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                // sizedBoxHeight(10.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
  }

  Widget Fractionaltab() {
    return fractionalboughtobj!.data!.isEmpty
        ? _buildNoDataBody(context)
        : ListView.separated(
            separatorBuilder: (context, index) {
              return sizedBoxHeight(0.h);
            },
            itemCount: fractionalboughtobj!.data!.length,
            // highyieldObj!.data!.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
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
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 5.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fractionalboughtobj!
                                          .data![index].propertyName ??
                                      "NA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.sp),
                                ),
                                sizedBoxHeight(10.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Property name:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Flexible(
                                      child: Text(
                                        fractionalboughtobj!
                                                .data![index].propertyName ??
                                            "NA",
                                        style: TextStyle(
                                          fontSize: 16.sp,
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
                                      "Property grade:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      fractionalboughtobj!
                                          .data![index].propertyGrade
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Asset type:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      fractionalboughtobj!
                                              .data![index].assetType ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Fractional real estate platform:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      fractionalboughtobj!.data![index]
                                              .fractionalRealEstatePlatform ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Expected selling price:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      fractionalboughtobj!.data![index]
                                              .expectedSellingPrice ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Fund category:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      fractionalboughtobj!
                                          .data![index].fundCategory
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                // sizedBoxHeight(10.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
  }

  Widget Otherstab() {
    return othersboughtobj!.data!.isEmpty
        ? _buildNoDataBody(context)
        : ListView.separated(
            separatorBuilder: (context, index) {
              return sizedBoxHeight(0.h);
            },
            itemCount: othersboughtobj!.data!.length,
            // highyieldObj!.data!.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
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
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 5.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  othersboughtobj!.data![index].securityName ??
                                      "NA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.sp),
                                ),
                                sizedBoxHeight(10.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Security name:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Flexible(
                                      child: Text(
                                        othersboughtobj!
                                                .data![index].securityName ??
                                            "NA",
                                        style: TextStyle(
                                          fontSize: 16.sp,
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
                                      "Product category:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Flexible(
                                      child: Text(
                                        othersboughtobj!
                                            .data![index].productCategory
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 16.sp,
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
                                      "Instrument type:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Flexible(
                                      child: Text(
                                        othersboughtobj!
                                                .data![index].instrumentType ??
                                            "NA",
                                        style: TextStyle(
                                          fontSize: 16.sp,
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
                                      "Instrument issuer:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      othersboughtobj!
                                              .data![index].instrumentIssuer ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Credit rating:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      othersboughtobj!
                                              .data![index].creditRating ??
                                          "NA",
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Expected sale price per unit:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      othersboughtobj!
                                          .data![index].expectedSalePricePerUnit
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 16.sp,
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
                                      "Fund category:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    sizedBoxWidth(5.w),
                                    Text(
                                      othersboughtobj!.data![index].fundCategory
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0XFF000000),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                // sizedBoxHeight(10.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
  }

  // Widget Tab1() {
  //   return SingleChildScrollView(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           SizedBox(
  //             height: 15.h,
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Flexible(
  //                 fit: FlexFit.tight,
  //                 flex: 4,
  //                 child: Text(
  //                   "Product",
  //                   style: TextStyle(
  //                     fontFamily: 'Poppins',
  //                     fontSize: 18.sp,
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 70),
  //                 child: Text(
  //                   "P & L",
  //                   style: TextStyle(
  //                     fontFamily: 'Poppins',
  //                     fontSize: 18.sp,
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 10),
  //                 child: Text(
  //                   "Action",
  //                   style: TextStyle(
  //                     fontFamily: 'Poppins',
  //                     fontSize: 18.sp,
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //           SizedBox(
  //             height: 15.h,
  //           ),
  //           common_crd_green(),
  //           SizedBox(
  //             height: 10,
  //           ),
  //           common_crd_red(),
  //           SizedBox(
  //             height: 10,
  //           ),
  //           common_crd_green(),
  //           SizedBox(
  //             height: 10,
  //           ),
  //           common_crd_red(),
  //           SizedBox(
  //             height: 10,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildNoDataBody(context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        const Text("No Data Found")
      ],
    );
  }
}
