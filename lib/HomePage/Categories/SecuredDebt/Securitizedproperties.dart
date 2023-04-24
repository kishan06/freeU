import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/FractionalRealEstateProperty/PropertiesInvestment.dart';
import 'package:freeu/HomePage/Categories/High_yield/High_yield_Properties2.dart';
import 'package:freeu/HomePage/Categories/SecuredDebt/Securitizedproperties2.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

class SecuritizedProperties extends StatefulWidget {
  const SecuritizedProperties({super.key});

  @override
  State<SecuritizedProperties> createState() => _SecuritizedPropertiesState();
}

class _SecuritizedPropertiesState extends State<SecuritizedProperties> {
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
                  "Securitized Debt Instrument",
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
                  // sizedBoxHeight(15.h),
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

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 16.w),
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
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/fractional.png",
                  width: 358,
                  height: 162,
                ),
                SizedBox(
                  height: 25.h,
                ),
                const Text(
                  "Securitized Debt Instrument",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: Color(0XFF000000),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/place.png",
                        width: 50.w,
                        height: 50.h,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 165),
                            child: Text(
                              "Location:",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins',
                                //fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Text(
                            "Seawoods, Navi Mumbai",
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
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 145),
                            child: Text(
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
                            "Minimum investment amount",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: const Color(0XFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            " 1 Crore",
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
                      openBuild: const SecuritizedProperties2(),
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
                )
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
