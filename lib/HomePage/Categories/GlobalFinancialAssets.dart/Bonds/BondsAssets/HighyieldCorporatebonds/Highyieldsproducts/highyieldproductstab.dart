import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/HighyieldCorporatebonds/Highyieldsproducts/detailhighyields.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/SovereignBonds/Sovereignproducts/sovereigndetails.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/VentureCapitalService.dart';
import 'package:lottie/lottie.dart';

class Highyieldproductstab extends StatefulWidget {
  const Highyieldproductstab({super.key});

  @override
  State<Highyieldproductstab> createState() => _HighyieldproductstabState();
}

class _HighyieldproductstabState extends State<Highyieldproductstab> {
  late Future myfuture;
  @override
  void initState() {
    myfuture = VentureCapital().VentureCapitalAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: _buildBody(context),
      // FutureBuilder(
      //   future: myfuture,
      //   builder: (ctx, snapshot) {
      //     if (snapshot.data == null) {
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [Center(child: CircularProgressIndicator())],
      //       );
      //     }
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       if (snapshot.hasError) {
      //         return Center(
      //           child: Text(
      //             '${snapshot.error} occured',
      //             style: TextStyle(fontSize: 18.spMin),
      //           ),
      //         );
      //       }
      //     }
      //     return _buildBody(
      //       context,
      //     );
      //   },
      // )
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "Corporate Bonds - High Yield",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.h,
                  ),
                  ButtonsTabBar(
                    buttonMargin: EdgeInsets.zero,
                    contentPadding: EdgeInsets.only(left: 27.w, right: 27.w),
                    radius: 4,
                    backgroundColor: const Color(0xFF143C6D),
                    unselectedBorderColor: const Color(0xFFFFFFFF),
                    borderWidth: 2,
                    borderColor: const Color(0xFFFFFFFF),
                    unselectedBackgroundColor: const Color(0xFFFFFFFF),
                    unselectedLabelStyle:
                        const TextStyle(color: Color(0xFF0F0C0C)),
                    labelStyle: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    tabs: const [
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
                  const Expanded(
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
        const Text("No Data Found")
      ],
    );
  }
}

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x48B9B9BE),
                    blurRadius: 10.0,
                    spreadRadius: 3.0,
                    // offset: Offset(10, 10, 10, 10),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/alternative (6).png",
                          width: 68,
                          height: 38,
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Flexible(
                          child: Text(
                            // ventureCapitalObj!.data![index]
                            //         .alternativeInvestmentFund!.fundName ??
                            // "",
                            "Lorem ipsum",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Poppins',
                                color: Color(0XFF000000),
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0XFF6D6D6D29),
                    ),
                    SizedBox(height: 17.5.h),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/investment (1).png",
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Collateral Type",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: 'Poppins',
                            color: const Color(0XFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          // ventureCapitalObj!.data![index]
                          //         .alternativeInvestmentFund!.targetIrr ??
                          //     "NA",
                          "Unsecured",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: const Color(0XFF000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/back-in-time (1).png",
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        SizedBox(
                          width: 115.w,
                          child: Text(
                            "Minimum Investment (USD)",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: 'Poppins',
                              color: const Color(0XFF000000),
                            ),
                          ),
                        ),
                        Text(
                          " :",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: 'Poppins',
                            color: const Color(0XFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          // "5 Years",
                          // ventureCapitalObj!
                          //         .data![index]
                          //         .alternativeInvestmentFund!
                          //         .commitmentPeriod ??
                          //     "NA",
                          "100000",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              color: const Color(0XFF000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/transfer.png",
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        SizedBox(
                          width: 115.w,
                          child: Text(
                            "Credit Rating ",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: 'Poppins',
                              color: const Color(0XFF000000),
                            ),
                          ),
                        ),
                        Text(
                          " :",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: 'Poppins',
                            color: const Color(0XFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          // ventureCapitalObj!
                          //         .data![index]
                          //         .alternativeInvestmentFund!
                          //         .ca ??
                          //     "NA",
                          "AAA",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              color: const Color(0XFF000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    OpenContainerWrappers(
                      openBuild: HighyieldDetails(
                          // slug: slug
                          ),

                      // VentureViewDetails(
                      //     slug: ventureCapitalObj!.data![index]
                      //         .alternativeInvestmentFund!.slug!),
                      closeBuild: Container(
                        decoration: BoxDecoration(
                            color: AppColors.blue002A5B,
                            borderRadius: BorderRadius.circular(10.r)),
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
                    ),
                    sizedBoxHeight(20.h)
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        sizedBoxHeight(10.h),
      ],
    );
    // ListView.separated(
    //   itemBuilder: (BuildContext context, int index) {
    //     return
    //     Column(
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.only(top: 20),
    //           child: Padding(
    //             padding: EdgeInsets.all(5.w),
    //             child: Container(
    //               decoration: const BoxDecoration(
    //                 borderRadius: BorderRadius.all(Radius.circular(15)),
    //                 color: Color(0xffffffff),
    //                 boxShadow: [
    //                   BoxShadow(
    //                     color: Color(0x48B9B9BE),
    //                     blurRadius: 10.0,
    //                     spreadRadius: 3.0,
    //                     // offset: Offset(10, 10, 10, 10),
    //                   )
    //                 ],
    //               ),
    //               child: Padding(
    //                 padding:
    //                     const EdgeInsets.only(left: 22.0, right: 22, top: 20),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     Row(
    //                       children: [
    //                         Image.asset(
    //                           "assets/images/alternative (6).png",
    //                           width: 68,
    //                           height: 38,
    //                         ),
    //                         SizedBox(
    //                           width: 20.h,
    //                         ),
    //                         Flexible(
    //                           child: Text(
    //                             // ventureCapitalObj!.data![index]
    //                             //         .alternativeInvestmentFund!.fundName ??
    //                             // "",
    //                             "Lorem ipsum",
    //                             style: TextStyle(
    //                                 fontSize: 22,
    //                                 fontFamily: 'Poppins',
    //                                 color: Color(0XFF000000),
    //                                 fontWeight: FontWeight.w500),
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                     const Divider(
    //                       thickness: 1,
    //                       color: Color(0XFF6D6D6D29),
    //                     ),
    //                     SizedBox(height: 17.5.h),
    //                     Row(
    //                       children: [
    //                         Image.asset(
    //                           "assets/images/investment (1).png",
    //                           width: 25.w,
    //                           height: 25.h,
    //                         ),
    //                         SizedBox(
    //                           width: 15.w,
    //                         ),
    //                         Text(
    //                           "Collateral Type",
    //                           style: TextStyle(
    //                             fontSize: 17.sp,
    //                             fontFamily: 'Poppins',
    //                             color: const Color(0XFF000000),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 10.w,
    //                         ),
    //                         Text(
    //                           // ventureCapitalObj!.data![index]
    //                           //         .alternativeInvestmentFund!.targetIrr ??
    //                           //     "NA",
    //                           "Unsecured",
    //                           style: TextStyle(
    //                               fontSize: 20.sp,
    //                               fontFamily: 'Poppins',
    //                               color: const Color(0XFF000000),
    //                               fontWeight: FontWeight.w500),
    //                         ),
    //                       ],
    //                     ),
    //                     SizedBox(
    //                       height: 31.h,
    //                     ),
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Image.asset(
    //                           "assets/images/back-in-time (1).png",
    //                           width: 25.w,
    //                           height: 25.h,
    //                         ),
    //                         SizedBox(
    //                           width: 15.w,
    //                         ),
    //                         SizedBox(
    //                           width: 115.w,
    //                           child: Text(
    //                             "Minimum Investment (USD)",
    //                             style: TextStyle(
    //                               fontSize: 17.sp,
    //                               fontFamily: 'Poppins',
    //                               color: const Color(0XFF000000),
    //                             ),
    //                           ),
    //                         ),
    //                         Text(
    //                           " :",
    //                           style: TextStyle(
    //                             fontSize: 17.sp,
    //                             fontFamily: 'Poppins',
    //                             color: const Color(0XFF000000),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 8.w,
    //                         ),
    //                         Text(
    //                           // "5 Years",
    //                           // ventureCapitalObj!
    //                           //         .data![index]
    //                           //         .alternativeInvestmentFund!
    //                           //         .commitmentPeriod ??
    //                           //     "NA",
    //                           "100000",
    //                           style: TextStyle(
    //                               fontSize: 18.sp,
    //                               fontFamily: 'Poppins',
    //                               color: const Color(0XFF000000),
    //                               fontWeight: FontWeight.w500),
    //                         ),
    //                       ],
    //                     ),
    //                     SizedBox(
    //                       height: 31.h,
    //                     ),
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Image.asset(
    //                           "assets/images/transfer.png",
    //                           width: 25.w,
    //                           height: 25.h,
    //                         ),
    //                         SizedBox(
    //                           width: 15.w,
    //                         ),
    //                         SizedBox(
    //                           width: 115.w,
    //                           child: Text(
    //                             "Credit Rating ",
    //                             style: TextStyle(
    //                               fontSize: 17.sp,
    //                               fontFamily: 'Poppins',
    //                               color: const Color(0XFF000000),
    //                             ),
    //                           ),
    //                         ),
    //                         Text(
    //                           " :",
    //                           style: TextStyle(
    //                             fontSize: 17.sp,
    //                             fontFamily: 'Poppins',
    //                             color: const Color(0XFF000000),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 8.w,
    //                         ),
    //                         Text(
    //                           // ventureCapitalObj!
    //                           //         .data![index]
    //                           //         .alternativeInvestmentFund!
    //                           //         .ca ??
    //                           //     "NA",
    //                           "AAA",
    //                           style: TextStyle(
    //                               fontSize: 18.sp,
    //                               fontFamily: 'Poppins',
    //                               color: const Color(0XFF000000),
    //                               fontWeight: FontWeight.w500),
    //                         ),
    //                       ],
    //                     ),
    //                     SizedBox(
    //                       height: 20.h,
    //                     ),
    //                     OpenContainerWrappers(
    //                       openBuild: HighyieldDetails(
    //                           // slug: slug
    //                           ),

    //                       // VentureViewDetails(
    //                       //     slug: ventureCapitalObj!.data![index]
    //                       //         .alternativeInvestmentFund!.slug!),
    //                       closeBuild: Container(
    //                         decoration: BoxDecoration(
    //                             color: AppColors.blue002A5B,
    //                             borderRadius: BorderRadius.circular(10.r)),
    //                         width: double.infinity,
    //                         height: 50.h,
    //                         child: Center(
    //                             child: Text(
    //                           'View Details',
    //                           style: TextStyle(
    //                             color: AppColors.white,
    //                             fontSize: 18.sp,
    //                           ),
    //                         )),
    //                       ),
    //                     ),
    //                     sizedBoxHeight(20.h)
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         SizedBox(
    //           height: 30.h,
    //         ),
    //         sizedBoxHeight(10.h),
    //       ],
    //     );
    //   },
    //   separatorBuilder: (BuildContext context, int index) => Divider(),
    //   itemCount: ventureCapitalObj!.data!.length,
    // );
  }
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
