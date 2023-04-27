// ignore_for_file: prefer_const_constructors
// part 'NewInvestment.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/HomePage/Investments/CurrentInvestment.dart';
import 'package:freeu/HomePage/Investments/PreviouslyInvestedProducts.dart';
import 'package:freeu/HomePage/Investments/SuggestedInvestedProducts.dart';
import 'package:freeu/Notification.dart';
// import 'package:freeu/NewInvestment/Categories/AlternativeInvestment.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/categoryCard.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/screens/entry_point.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// import 'Categories/Alternative/Fractionalpage.dart';

// import '../controllers/entry_point_controller.dart';

// part 'NewInvestment.dart';

class NewInvestment extends StatefulWidget {
  // EntryPoint enttyPoint = EntryPoint();
  const NewInvestment({super.key});

  @override
  State<NewInvestment> createState() => _NewInvestmentState();
}

class _NewInvestmentState extends State<NewInvestment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            sizedBoxWidth(45.w),
            sizedBoxWidth(5.w),
            Text(
              'investment_title'.tr,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
            Spacer(),
            OpenContainerWrappers(
              openBuild: NotificationPage(),
              // onPressed: () {
              //   Get.toNamed('/notificationpage');
              // },
              closeBuild: SizedBox(
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
            sizedBoxWidth(16.w)
          ],
        ),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // SizedBox(
                //   height: 15.h,
                // ),
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
                      "investment_txt1".tr,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    OpenContainerWrappers(
                      openBuild: CurrentInvestment(),
                      // onTap: () {
                      //   Get.toNamed('/currentinvestment');
                      // },
                      closeBuild: Text(
                        "investment_txt2".tr,
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
                                  bottomSheetThankU(context);
                                  // showModalBottomSheet(
                                  //   isScrollControlled: true,
                                  //   context: context,
                                  //   shape: const RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.only(
                                  //       topLeft: Radius.circular(30),
                                  //       topRight: Radius.circular(30),
                                  //     ),
                                  //   ),
                                  //   builder: (context) {
                                  //     return Container(
                                  //       margin: const EdgeInsets.symmetric(
                                  //           horizontal: 16, vertical: 30),
                                  //       child: Column(
                                  //         mainAxisSize: MainAxisSize.min,
                                  //         children: [
                                  //           SizedBox(
                                  //             height: 20.h,
                                  //           ),
                                  //           SvgPicture.asset(
                                  //               "assets/images/thankyouinvestment.svg"),
                                  //           SizedBox(
                                  //             height: 20,
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 left: 15, right: 11),
                                  //             child: Text(
                                  //               'Thank You For Selling\n           Product',
                                  //               style: TextStyle(
                                  //                   fontFamily: 'Poppins',
                                  //                   fontSize: 30,
                                  //                   color: Color(0xff0F0C0C),
                                  //                   fontWeight:
                                  //                       FontWeight.w500),
                                  //             ),
                                  //           ),
                                  //           SizedBox(
                                  //             height: 20.h,
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 left: 40, right: 40),
                                  //             child: Text(
                                  //               'A FreeU Advisory Team will \n    get back to you soon.',
                                  //               style: TextStyle(
                                  //                   fontFamily: 'Poppins',
                                  //                   fontSize: 20,
                                  //                   color: Color(0xff272424),
                                  //                   fontWeight:
                                  //                       FontWeight.w300),
                                  //             ),
                                  //           ),
                                  //           SizedBox(
                                  //             height: 30,
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     );
                                  //   },
                                  // );
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
                                  bottomSheetThankU(context);

                                  // showModalBottomSheet(
                                  //   isScrollControlled: true,
                                  //   context: context,
                                  //   shape: const RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.only(
                                  //       topLeft: Radius.circular(30),
                                  //       topRight: Radius.circular(30),
                                  //     ),
                                  //   ),
                                  //   builder: (context) {
                                  //     return Container(
                                  //       margin: const EdgeInsets.symmetric(
                                  //           horizontal: 16, vertical: 30),
                                  //       child: Column(
                                  //         mainAxisSize: MainAxisSize.min,
                                  //         children: [
                                  //           SizedBox(
                                  //             height: 20.h,
                                  //           ),
                                  //           SvgPicture.asset(
                                  //               "assets/images/thankyouinvestment.svg"),
                                  //           SizedBox(
                                  //             height: 20,
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 left: 15, right: 11),
                                  //             child: Text(
                                  //               'Thank You For Selling\n           Product',
                                  //               style: TextStyle(
                                  //                   fontFamily: 'Poppins',
                                  //                   fontSize: 30,
                                  //                   color: Color(0xff0F0C0C),
                                  //                   fontWeight:
                                  //                       FontWeight.w500),
                                  //             ),
                                  //           ),
                                  //           SizedBox(
                                  //             height: 20.h,
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 left: 40, right: 40),
                                  //             child: Text(
                                  //               'A FreeU Advisory Team will \n    get back to you soon.',
                                  //               style: TextStyle(
                                  //                   fontFamily: 'Poppins',
                                  //                   fontSize: 20,
                                  //                   color: Color(0xff272424),
                                  //                   fontWeight:
                                  //                       FontWeight.w300),
                                  //             ),
                                  //           ),
                                  //           SizedBox(
                                  //             height: 30,
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     );
                                  //   },
                                  // );
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        "investment_txt3".tr,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    OpenContainerWrappers(
                      openBuild: PreviouslyInvestedProducts(),
                      // onTap: () {
                      //   Get.toNamed('/previouslyinvestedproducts');
                      // },
                      closeBuild: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          "investment_txt2".tr,
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
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 10.w,
                      child: Text(
                        "investment_txt4".tr,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    sizedBoxWidth(5.w),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.54,
                      child: OpenContainerWrappers(
                        openBuild: SuggestedInvestedProducts(),
                        // onTap: () {
                        //   Get.toNamed('/suggestedinvestedproducts');
                        // },
                        closeBuild: Text(
                          "investment_txt3".tr,
                          textAlign: TextAlign.start,
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
                                padding: const EdgeInsets.only(
                                    right: 76, bottom: 18),
                                child: Text(
                                  "8 %",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color(0XFF0F0C0C),
                                  ),
                                )
                                // SvgPicture.asset(
                                //     "assets/images/Investmentnumber.svg"),
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
                                    const EdgeInsets.only(left: 10, bottom: 18),
                                child: Text(
                                  "8 %",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color(0XFF0F0C0C),
                                  ),
                                )
                                //  SvgPicture.asset(
                                //     "assets/images/Investmentdecrement.svg"),
                                ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, bottom: 18),
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
                // SizedBox(
                //   height: 20.h,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<T?> bottomSheetThankU<T>(BuildContext context) {
    return showModalBottomSheet(
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
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // SizedBox(
              //   height: 20.h,
              // ),

              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.cancel,
                      size: 30.h,
                    )),
              ),
              SvgPicture.asset("assets/images/thankyouinvestment.svg"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 11),
                child: Text(
                  'investment_txt5'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      color: Color(0xff0F0C0C),
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  'investment_txt6'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Color(0xff272424),
                      fontWeight: FontWeight.w300),
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
  }
}

// class DougnutChart extends StatelessWidget {
//   const DougnutChart({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final List<ChartData> chartData = [
//       ChartData('David', 20),
//       ChartData('Steve', 20),
//     ];
//     return SfCircularChart(centerY: '55', centerX: '50', palette: <Color>[
//       Color.fromARGB(255, 113, 201, 248),
//       Color(0xFF1B8DC9),
//     ], annotations: <CircularChartAnnotation>[
//       CircularChartAnnotation(
//         widget: Container(
//           child: PhysicalModel(
//             child: Container(),
//             shape: BoxShape.circle,
//             elevation: 10,
//             shadowColor: Colors.black,
//             color: const Color.fromRGBO(230, 230, 230, 1),
//           ),
//         ),
//       ),
//       CircularChartAnnotation(
//         widget: Container(
//           child: const Text(
//             '50%',
//             style: TextStyle(color: Colors.black, fontSize: 16),
//           ),
//         ),
//       ),
//     ], series: <CircularSeries>[
//       DoughnutSeries<ChartData, String>(
//           dataSource: chartData,
//           xValueMapper: (ChartData data, _) => data.x,
//           yValueMapper: (ChartData data, _) => data.y,
//           // Radius of doughnut
//           radius: '100%')
//     ]);
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y, [this.color]);
//   final String x;
//   final double y;
//   final Color? color;
// }

// void dataLabel(DataLabelRenderArgs args) {
//   args.text = '50';
// }
