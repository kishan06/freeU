// ignore_for_file: file_names, prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/Piechart.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class InvestmentMain extends StatefulWidget {
  const InvestmentMain({super.key});

  @override
  State<InvestmentMain> createState() => _InvestmentMainState();
}

class _InvestmentMainState extends State<InvestmentMain> {
  int selectIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  PageController indicatorcontroller = PageController(
    viewportFraction: 0.95,
  );
  PageController categoriescontroller = PageController(
    viewportFraction: 0.55,
  );
  PageController investmentcontroller = PageController(
    viewportFraction: 0.9,
  );
  PageController pickcontroller = PageController(
    viewportFraction: 0.75,
  );

  DateTime timebackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        final difference = DateTime.now().difference(timebackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timebackPressed = DateTime.now();

        if (isExitWarning) {
          const message = "Press back again to exit";
          // print("reached here");
          Fluttertoast.showToast(
            msg: message,
            fontSize: 18,
          );

          return false;
        } else {
          Fluttertoast.cancel();

          SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        //Color(0xffffffff)
        key: _key,
        // drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              sizedBoxWidth(45.w),
              // IconButton(
              //   onPressed: () {
              //     _key.currentState!.openDrawer();
              //   },
              //   icon: SizedBox(
              //     height: 20.h,
              //     width: 25.w,
              //     child: SvgPicture.asset(
              //       "assets/images/menu.svg",
              //       // height: 20.h,
              //       // width: 10.w,
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              //   // color: Colors.red,
              //   // iconSize: 100.h,
              // ),

              sizedBoxWidth(5.w),
              Text(
                'Your investments',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.sp,
                    // fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  Get.toNamed('/notificationpage');
                },
                icon: SizedBox(
                  width: 18.w,
                  height: 25.h,
                  child: SvgPicture.asset(
                    'assets/images/notification-bell-svgrepo-com.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                // iconSize: 22,
                // color: const Color(0xFF303030),
              ),
            ],
          ),
          // backgroundColor: Color(0xFFF5F8FA),
          elevation: 0,
          shadowColor: Colors.black,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
        ),

        //  backgroundColor: Color(0xFFFFFBF0),
        // appBar: AppBar(
        //   title: Text(
        //     'Your investments',
        //     softWrap: true,
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 19,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.black),
        //   ),
        //   backgroundColor: Color(0xffffffff),
        //   elevation: 0,
        //   shadowColor: Colors.black,
        //   automaticallyImplyLeading: false,
        //   titleSpacing: 0,
        //   leading: Row(
        //     children: [
        //       IconButton(
        //         onPressed: () {
        //           _key.currentState!.openDrawer();
        //         },
        //         icon: SvgPicture.asset("assets/images/menu.svg"),
        //         color: Colors.black,
        //         iconSize: 25,
        //       ),
        //     ],
        //   ),
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         Get.toNamed('/notificationpage');
        //       },
        //       icon: SvgPicture.asset(
        //         'assets/images/notification-bell-svgrepo-com.svg',
        //       ),
        //       iconSize: 22,
        //       color: const Color(0xFF303030),
        //     ),
        //   ],
        // ),

        // bottomNavigationBar:
        //     CreateBottomBar(stateBottomNav, "Bottombarinvestment", context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Stack(children: [
                  // PieChartSample1(),
                  SvgPicture.asset(
                    "assets/images/Investmentgraph.svg",
                    // height: 195.h,
                    // width: 400.w,
                  ),
                  Positioned(
                    top: 20,
                    left: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFBF0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "₹3,43,50,000",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sp),
                            ),
                            Text(
                              '+12.8%',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current Investment",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/currentinvestment');
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0XFF000000),
                          fontSize: 14.sp,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 4,
                      child: Text(
                        "Product",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        "P & L",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Action",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "assets/images/investmentmyre (2).svg"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 4,
                              child: Text(
                                "Vaishnavi\nTech Park",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 86, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/Investmentnumber.svg"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, bottom: 18),
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                    builder: (context) {
                                      return Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 30),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            SvgPicture.asset(
                                                "assets/images/thankyouinvestment.svg"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 11),
                                              child: Text(
                                                'Thank You For Selling\n           Product',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 30,
                                                    color: Color(0xff0F0C0C),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, right: 40),
                                              child: Text(
                                                'A FreeU Advisory Team will \n    get back to you soon.',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 20,
                                                    color: Color(0xff272424),
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontFamily: "Poppins",
                                      color: Color(0xff143C6D),
                                      fontSize: 18.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/hdfcinvestment (6).png"),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 8.h,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HDFC AMC\nSelect AIF FOF-1",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                fontSize: 18.sp,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 78, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/Investmentdecrement.svg"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 21, bottom: 18),
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                    builder: (context) {
                                      return Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 30),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            SvgPicture.asset(
                                                "assets/images/thankyouinvestment.svg"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 11),
                                              child: Text(
                                                'Thank You For Selling\n           Product',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 30,
                                                    color: Color(0xff0F0C0C),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, right: 40),
                                              child: Text(
                                                'A FreeU Advisory Team will \n    get back to you soon.',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 20,
                                                    color: Color(0xff272424),
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontFamily: "Poppins",
                                      color: Color(0xff143C6D),
                                      fontSize: 18.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Previously Invested\nProducts",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/previouslyinvestedproducts');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          "View All",
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 4,
                      child: Text(
                        "Product",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        "P & L",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Action",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "assets/images/investmentmyre (2).svg"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 4,
                              child: Text(
                                "Vaishnavi\nTech Park",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 95, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/Investmentnumber.svg"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/downloadinvestment.svg"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/hdfcinvestment (6).png"),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 8.h,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HDFC AMC\nSelect AIF FOF-1",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                fontSize: 18.sp,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 86, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/Investmentdecrement.svg"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 17, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/downloadinvestment.svg"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Suggested Invested\nProducts",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/suggestedinvestedproducts');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          "View All",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0XFF000000),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 4,
                      child: Text(
                        "Product",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 68),
                      child: Text(
                        "Return",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Action",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "assets/images/investmentmyre (2).svg"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 4,
                              child: Text(
                                "Vaishnavi\nTech Park",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 64, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/Investmentnumber.svg"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 18),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/investmentthumbs-up-hand.svg"),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "Yes",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0XFF000000),
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 18),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/investmentthumbs-down-hand.svg"),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "No",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0XFF000000),
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/hdfcinvestment (6).png"),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 8.h,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HDFC AMC\nSelect AIF FOF-1",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                fontSize: 18.sp,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 54, bottom: 18),
                              child: SvgPicture.asset(
                                  "assets/images/Investmentdecrement.svg"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 18),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/investmentthumbs-up-hand.svg"),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "Yes",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0XFF000000),
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 18),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/investmentthumbs-down-hand.svg"),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "No",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0XFF000000),
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
