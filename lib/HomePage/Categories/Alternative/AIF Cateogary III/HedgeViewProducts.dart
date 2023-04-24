import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

import 'HedgeFundDetails.dart';

class HedgeViewmoreProducts extends StatefulWidget {
  const HedgeViewmoreProducts({super.key});

  @override
  State<HedgeViewmoreProducts> createState() => _HedgeViewmoreProductsState();
}

class _HedgeViewmoreProductsState extends State<HedgeViewmoreProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      //       // Get.toNamed("/privateequity");
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
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hedge Funds",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
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
                      height: 20,
                    ),
                    ButtonsTabBar(
                      buttonMargin: EdgeInsets.zero,
                      contentPadding: EdgeInsets.only(left: 27, right: 27),
                      radius: 4,
                      backgroundColor: Color(0xFF143C6D),
                      unselectedBorderColor: Color(0xFFFFFFFF),
                      borderWidth: 2,
                      borderColor: Color(0xFFFFFFFF),
                      unselectedBackgroundColor: Color(0xFFFFFFFF),
                      unselectedLabelStyle: TextStyle(color: Color(0xFF0F0C0C)),
                      labelStyle: TextStyle(
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
    // return Center(
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.only(top: 20),
    //         child: Container(
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.all(Radius.circular(15)),
    //             color: Color(0xffffffff),
    //             boxShadow: [
    //               BoxShadow(
    //                 color: Color(0x48B9B9BE),
    //                 blurRadius: 10.0,
    //                 spreadRadius: 3.0,
    //                 // offset: Offset(10, 10, 10, 10),
    //               )
    //             ],
    //           ),
    //           child: Padding(
    //             padding: const EdgeInsets.only(left: 22.0, right: 22, top: 20),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/alternative (6).png",
    //                       width: 68,
    //                       height: 38,
    //                     ),
    //                     SizedBox(
    //                       width: 20.h,
    //                     ),
    //                     Text(
    //                       "HDFC AMC Select AIF \nFOF - 1",
    //                       style: TextStyle(
    //                           fontSize: 22,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     )
    //                   ],
    //                 ),
    //                 Divider(
    //                   thickness: 1,
    //                   color: Color(0XFF6D6D6D29),
    //                 ),
    //                 SizedBox(height: 17.5.h),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 15),
    //                   child: Row(
    //                     children: [
    //                       Image.asset(
    //                         "assets/images/investment (1).png",
    //                         width: 25.w,
    //                         height: 25.h,
    //                       ),
    //                       SizedBox(
    //                         width: 15.w,
    //                       ),
    //                       Text(
    //                         "Targeted IRR :",
    //                         style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 10.w,
    //                       ),
    //                       Text(
    //                         "12.7%",
    //                         style: TextStyle(
    //                             fontSize: 20.sp,
    //                             fontFamily: 'Poppins',
    //                             color: Color(0XFF000000),
    //                             fontWeight: FontWeight.w500),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 31.h,
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 15),
    //                   child: Row(
    //                     children: [
    //                       Image.asset(
    //                         "assets/images/back-in-time (1).png",
    //                         width: 25.w,
    //                         height: 25.h,
    //                       ),
    //                       SizedBox(
    //                         width: 15.w,
    //                       ),
    //                       Text(
    //                         "Commitment period :",
    //                         style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 8.w,
    //                       ),
    //                       Text(
    //                         "5 Years",
    //                         style: TextStyle(
    //                             fontSize: 18.sp,
    //                             fontFamily: 'Poppins',
    //                             color: Color(0XFF000000),
    //                             fontWeight: FontWeight.w500),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 31.h,
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 15),
    //                   child: Row(
    //                     children: [
    //                       Image.asset(
    //                         "assets/images/transfer.png",
    //                         width: 25.w,
    //                         height: 25.h,
    //                       ),
    //                       SizedBox(
    //                         width: 15.w,
    //                       ),
    //                       Text(
    //                         "Capital Commitment :",
    //                         style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 8.w,
    //                       ),
    //                       Text(
    //                         "12.7%",
    //                         style: TextStyle(
    //                             fontSize: 18.sp,
    //                             fontFamily: 'Poppins',
    //                             color: Color(0XFF000000),
    //                             fontWeight: FontWeight.w500),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 20.h,
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         height: 30.h,
    //       ),
    //       Container(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.all(Radius.circular(15)),
    //           color: Color(0xffffffff),
    //           boxShadow: [
    //             BoxShadow(
    //               color: Color(0x48B9B9BE),
    //               blurRadius: 10.0,
    //               spreadRadius: 3.0,
    //               // offset: Offset(10, 10, 10, 10),
    //             )
    //           ],
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.only(left: 22.0, right: 22, top: 20),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Row(
    //                 children: [
    //                   Image.asset(
    //                     "assets/images/Image 1.png",
    //                     width: 68,
    //                     height: 38,
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Edelweiss Discovery \nFund – Series I",
    //                     style: TextStyle(
    //                         fontSize: 22,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                         fontWeight: FontWeight.w500),
    //                   )
    //                 ],
    //               ),
    //               Divider(
    //                 thickness: 1,
    //                 color: Color(0XFF6D6D6D29),
    //               ),
    //               SizedBox(height: 17.5.h),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15),
    //                 child: Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/investment (1).png",
    //                       width: 25.w,
    //                       height: 25.h,
    //                     ),
    //                     SizedBox(
    //                       width: 15.w,
    //                     ),
    //                     Text(
    //                       "Targeted IRR :",
    //                       style: TextStyle(
    //                         fontSize: 18.sp,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 10.w,
    //                     ),
    //                     Text(
    //                       "12.7%",
    //                       style: TextStyle(
    //                           fontSize: 20.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 31.h,
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15),
    //                 child: Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/back-in-time (1).png",
    //                       width: 25.w,
    //                       height: 25.h,
    //                     ),
    //                     SizedBox(
    //                       width: 15.w,
    //                     ),
    //                     Text(
    //                       "Commitment period :",
    //                       style: TextStyle(
    //                         fontSize: 18.sp,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 8.w,
    //                     ),
    //                     Text(
    //                       "5 Years",
    //                       style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 31.h,
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15),
    //                 child: Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/transfer.png",
    //                       width: 25.w,
    //                       height: 25.h,
    //                     ),
    //                     SizedBox(
    //                       width: 15.w,
    //                     ),
    //                     Text(
    //                       "Capital Commitment :",
    //                       style: TextStyle(
    //                         fontSize: 18.sp,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 8.w,
    //                     ),
    //                     Text(
    //                       "12.7%",
    //                       style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}

class SecondTab extends StatelessWidget {
  SecondTab({super.key});

  List hedgeSlider = [
    {
      "Company Name": "Bay Capital India Leaders Fund",
      "View investment Route": HedgeFundDetails(
        pageIndex: 0,
      ),
    },
    {
      "Company Name": "ICICI PRUDENTIAL STRATEGIC ALPHA FUND",
      "View investment Route": HedgeFundDetails(
        pageIndex: 1,
      ),
    },
    {
      "Company Name": "ALPHA ALTERNATIVES MSAR LLP",
      "View investment Route": HedgeFundDetails(
        pageIndex: 2,
      ),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return sizedBoxHeight(15.h);
      },
      scrollDirection: Axis.vertical,
      itemCount: hedgeSlider.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Container(
              decoration: BoxDecoration(
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
                            hedgeSlider[index]['Company Name'],
                            // "HDFC AMC Select AIF FOF - 1",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Poppins',
                                color: Color(0XFF000000),
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(
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
                          "Targeted IRR :",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: 'Poppins',
                            color: Color(0XFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "12.7%",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0XFF000000),
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
                        Flexible(
                          child: Text(
                            "Commitment period :",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: 'Poppins',
                              color: Color(0XFF000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "5 Years",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/transfer.png",
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Capital Commitment :",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: 'Poppins',
                            color: Color(0XFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "12.7%",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    sizedBoxHeight(15.h),
                    // /
                    // CustomNextButton(
                    //   text: 'View details',
                    //   ontap: () {
                    //      hedgeSlider[index]['View investment Route'];
                    //   },
                    // ),

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
                            color: Color(0xFF143C6D)),
                        child: OpenContainerWrappers(
                          openBuild: hedgeSlider[index]
                              ['View investment Route'],
                          closeBuild: SizedBox(
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
                      ),
                    ),

                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget hedgecard(company, view) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/fullyfundedbank');
              },
              child: Padding(
                padding: EdgeInsets.all(5.w),
                child: Container(
                  decoration: BoxDecoration(
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
                    padding:
                        const EdgeInsets.only(left: 22.0, right: 22, top: 20),
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
                                company,
                                // "HDFC AMC Select AIF FOF - 1",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    color: Color(0XFF000000),
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Divider(
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
                              "Targeted IRR :",
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontFamily: 'Poppins',
                                color: Color(0XFF000000),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "12.7%",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: 'Poppins',
                                  color: Color(0XFF000000),
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
                            Flexible(
                              child: Text(
                                "Commitment period :",
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontFamily: 'Poppins',
                                  color: Color(0XFF000000),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "5 Years",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontFamily: 'Poppins',
                                  color: Color(0XFF000000),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 31.h,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/transfer.png",
                              width: 25.w,
                              height: 25.h,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              "Capital Commitment :",
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontFamily: 'Poppins',
                                color: Color(0XFF000000),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "12.7%",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontFamily: 'Poppins',
                                  color: Color(0XFF000000),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
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
                              openBuild: view,
                              closeBuild: SizedBox(
                                width: double.infinity,
                                height: 50.h,
                                child: Center(
                                    child: Text(
                                  'View Investment',
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
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          // Padding(
          //   padding: EdgeInsets.all(5.w),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.all(Radius.circular(15)),
          //       color: Color(0xffffffff),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Color(0x48B9B9BE),
          //           blurRadius: 10.0,
          //           spreadRadius: 3.0,
          //           // offset: Offset(10, 10, 10, 10),
          //         )
          //       ],
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.only(left: 22.0, right: 22, top: 20),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           Row(
          //             children: [
          //               Image.asset(
          //                 "assets/images/Image 1.png",
          //                 width: 68,
          //                 height: 38,
          //               ),
          //               SizedBox(
          //                 width: 20.h,
          //               ),
          //               Flexible(
          //                 child: Text(
          //                   "Edelweiss Discovery Fund - Series I",
          //                   style: TextStyle(
          //                       fontSize: 22,
          //                       fontFamily: 'Poppins',
          //                       color: Color(0XFF000000),
          //                       fontWeight: FontWeight.w500),
          //                 ),
          //               )
          //             ],
          //           ),
          //           Divider(
          //             thickness: 1,
          //             color: Color(0XFF6D6D6D29),
          //           ),
          //           SizedBox(height: 17.5.h),
          //           Row(
          //             children: [
          //               Image.asset(
          //                 "assets/images/investment (1).png",
          //                 width: 25.w,
          //                 height: 25.h,
          //               ),
          //               SizedBox(
          //                 width: 15.w,
          //               ),
          //               Text(
          //                 "Targeted IRR :",
          //                 style: TextStyle(
          //                   fontSize: 17.sp,
          //                   fontFamily: 'Poppins',
          //                   color: Color(0XFF000000),
          //                 ),
          //               ),
          //               SizedBox(
          //                 width: 10.w,
          //               ),
          //               Text(
          //                 "12.7%",
          //                 style: TextStyle(
          //                     fontSize: 20.sp,
          //                     fontFamily: 'Poppins',
          //                     color: Color(0XFF000000),
          //                     fontWeight: FontWeight.w500),
          //               ),
          //             ],
          //           ),
          //           SizedBox(
          //             height: 31.h,
          //           ),
          //           Row(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Image.asset(
          //                 "assets/images/back-in-time (1).png",
          //                 width: 25.w,
          //                 height: 25.h,
          //               ),
          //               SizedBox(
          //                 width: 15.w,
          //               ),
          //               Flexible(
          //                 child: Text(
          //                   "Commitment period :",
          //                   style: TextStyle(
          //                     fontSize: 17.sp,
          //                     fontFamily: 'Poppins',
          //                     color: Color(0XFF000000),
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 width: 6.w,
          //               ),
          //               Text(
          //                 "5 Years",
          //                 style: TextStyle(
          //                     fontSize: 18.sp,
          //                     fontFamily: 'Poppins',
          //                     color: Color(0XFF000000),
          //                     fontWeight: FontWeight.w500),
          //               ),
          //             ],
          //           ),
          //           SizedBox(
          //             height: 31.h,
          //           ),
          //           Row(
          //             children: [
          //               Image.asset(
          //                 "assets/images/transfer.png",
          //                 width: 25.w,
          //                 height: 25.h,
          //               ),
          //               SizedBox(
          //                 width: 15.w,
          //               ),
          //               Text(
          //                 "Capital Commitment :",
          //                 style: TextStyle(
          //                   fontSize: 17.sp,
          //                   fontFamily: 'Poppins',
          //                   color: Color(0XFF000000),
          //                 ),
          //               ),
          //               SizedBox(
          //                 width: 8.w,
          //               ),
          //               Text(
          //                 "12.7%",
          //                 style: TextStyle(
          //                     fontSize: 18.sp,
          //                     fontFamily: 'Poppins',
          //                     color: Color(0XFF000000),
          //                     fontWeight: FontWeight.w500),
          //               ),
          //             ],
          //           ),
          //           SizedBox(
          //             height: 20.h,
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // sizedBoxHeight(10.h),
        ],
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
    // Center(
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.only(top: 20),
    //         child: Container(
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.all(Radius.circular(15)),
    //             color: Color(0xffffffff),
    //             boxShadow: [
    //               BoxShadow(
    //                 color: Color(0x48B9B9BE),
    //                 blurRadius: 10.0,
    //                 spreadRadius: 3.0,
    //                 // offset: Offset(10, 10, 10, 10),
    //               )
    //             ],
    //           ),
    //           child: Padding(
    //             padding: const EdgeInsets.only(left: 22.0, right: 22, top: 20),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/alternative (6).png",
    //                       width: 68,
    //                       height: 38,
    //                     ),
    //                     SizedBox(
    //                       width: 20.h,
    //                     ),
    //                     Text(
    //                       "HDFC AMC Select AIF \nFOF - 1",
    //                       style: TextStyle(
    //                           fontSize: 22,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     )
    //                   ],
    //                 ),
    //                 Divider(
    //                   thickness: 1,
    //                   color: Color(0XFF6D6D6D29),
    //                 ),
    //                 SizedBox(height: 17.5.h),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 15),
    //                   child: Row(
    //                     children: [
    //                       Image.asset(
    //                         "assets/images/investment (1).png",
    //                         width: 25.w,
    //                         height: 25.h,
    //                       ),
    //                       SizedBox(
    //                         width: 15.w,
    //                       ),
    //                       Text(
    //                         "Targeted IRR :",
    //                         style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 10.w,
    //                       ),
    //                       Text(
    //                         "12.7%",
    //                         style: TextStyle(
    //                             fontSize: 20.sp,
    //                             fontFamily: 'Poppins',
    //                             color: Color(0XFF000000),
    //                             fontWeight: FontWeight.w500),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 31.h,
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 15),
    //                   child: Row(
    //                     children: [
    //                       Image.asset(
    //                         "assets/images/back-in-time (1).png",
    //                         width: 25.w,
    //                         height: 25.h,
    //                       ),
    //                       SizedBox(
    //                         width: 15.w,
    //                       ),
    //                       Text(
    //                         "Commitment period :",
    //                         style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 8.w,
    //                       ),
    //                       Text(
    //                         "5 Years",
    //                         style: TextStyle(
    //                             fontSize: 18.sp,
    //                             fontFamily: 'Poppins',
    //                             color: Color(0XFF000000),
    //                             fontWeight: FontWeight.w500),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 31.h,
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 15),
    //                   child: Row(
    //                     children: [
    //                       Image.asset(
    //                         "assets/images/transfer.png",
    //                         width: 25.w,
    //                         height: 25.h,
    //                       ),
    //                       SizedBox(
    //                         width: 15.w,
    //                       ),
    //                       Text(
    //                         "Capital Commitment :",
    //                         style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 8.w,
    //                       ),
    //                       Text(
    //                         "12.7%",
    //                         style: TextStyle(
    //                             fontSize: 18.sp,
    //                             fontFamily: 'Poppins',
    //                             color: Color(0XFF000000),
    //                             fontWeight: FontWeight.w500),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 20.h,
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         height: 30.h,
    //       ),
    //       Container(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.all(Radius.circular(15)),
    //           color: Color(0xffffffff),
    //           boxShadow: [
    //             BoxShadow(
    //               color: Color(0x48B9B9BE),
    //               blurRadius: 10.0,
    //               spreadRadius: 3.0,
    //               // offset: Offset(10, 10, 10, 10),
    //             )
    //           ],
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.only(left: 22.0, right: 22, top: 20),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Row(
    //                 children: [
    //                   Image.asset(
    //                     "assets/images/Image 1.png",
    //                     width: 68,
    //                     height: 38,
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Edelweiss Discovery \nFund – Series I",
    //                     style: TextStyle(
    //                         fontSize: 22,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                         fontWeight: FontWeight.w500),
    //                   )
    //                 ],
    //               ),
    //               Divider(
    //                 thickness: 1,
    //                 color: Color(0XFF6D6D6D29),
    //               ),
    //               SizedBox(height: 17.5.h),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15),
    //                 child: Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/investment (1).png",
    //                       width: 25.w,
    //                       height: 25.h,
    //                     ),
    //                     SizedBox(
    //                       width: 15.w,
    //                     ),
    //                     Text(
    //                       "Targeted IRR :",
    //                       style: TextStyle(
    //                         fontSize: 18.sp,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 10.w,
    //                     ),
    //                     Text(
    //                       "12.7%",
    //                       style: TextStyle(
    //                           fontSize: 20.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 31.h,
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15),
    //                 child: Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/back-in-time (1).png",
    //                       width: 25.w,
    //                       height: 25.h,
    //                     ),
    //                     SizedBox(
    //                       width: 15.w,
    //                     ),
    //                     Text(
    //                       "Commitment period :",
    //                       style: TextStyle(
    //                         fontSize: 18.sp,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 8.w,
    //                     ),
    //                     Text(
    //                       "5 Years",
    //                       style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 31.h,
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15),
    //                 child: Row(
    //                   children: [
    //                     Image.asset(
    //                       "assets/images/transfer.png",
    //                       width: 25.w,
    //                       height: 25.h,
    //                     ),
    //                     SizedBox(
    //                       width: 15.w,
    //                     ),
    //                     Text(
    //                       "Capital Commitment :",
    //                       style: TextStyle(
    //                         fontSize: 18.sp,
    //                         fontFamily: 'Poppins',
    //                         color: Color(0XFF000000),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 8.w,
    //                     ),
    //                     Text(
    //                       "12.7%",
    //                       style: TextStyle(
    //                           fontSize: 18.sp,
    //                           fontFamily: 'Poppins',
    //                           color: Color(0XFF000000),
    //                           fontWeight: FontWeight.w500),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
