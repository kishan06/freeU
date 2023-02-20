// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      key: _key,
      drawer: NavDrawer(),
      //  backgroundColor: Color(0xFFFFFBF0),
      appBar: AppBar(
        title: Text(
          'Investment',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        backgroundColor: Color(0xFFF5F8FA),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              icon: SvgPicture.asset("assets/images/menu.svg"),
              color: Colors.black,
              iconSize: 25,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/notificationpage');
            },
            icon: SvgPicture.asset(
              'assets/images/notification-bell-svgrepo-com.svg',
            ),
            iconSize: 22,
            color: const Color(0xFF303030),
          ),
        ],
      ),
      bottomNavigationBar:
          CreateBottomBar(stateBottomNav, "Bottombarinvestment", context),
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
                SvgPicture.asset(
                  "assets/images/graph.svg",
                  height: 195.h,
                  width: 370.w,
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
                                fontFamily: "Poppins", fontSize: 16.sm),
                          ),
                          Text(
                            '+12.8%',
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: "Poppins",
                                fontSize: 16.sm),
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
                        fontSize: 18.sm,
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
                        fontSize: 16.sm,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
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
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 11, right: 11, top: 15, bottom: 15),
                  child: Column(
                    children: [
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
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              "Action",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {
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
                                            Text(
                                              'Thank You For Selling Product',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff444444),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  color: Color.fromARGB(
                                                      255, 240, 239, 239),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Image.asset(
                                                          'assets/images/freeulogin.png',
                                                          width: 50,
                                                          height: 50,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'A FreeU Advisory Team will get back to you soon via call or email',
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {
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
                                            Text(
                                              'Thank You For Selling Product',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff444444),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  color: Color.fromARGB(
                                                      255, 240, 239, 239),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Image.asset(
                                                          'assets/images/freeulogin.png',
                                                          width: 50,
                                                          height: 50,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'A FreeU Advisory Team will get back to you soon via call or email',
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {
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
                                            Text(
                                              'Thank You For Selling Product',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff444444),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  color: Color.fromARGB(
                                                      255, 240, 239, 239),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Image.asset(
                                                          'assets/images/freeulogin.png',
                                                          width: 50,
                                                          height: 50,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'A FreeU Advisory Team will get back to you soon via call or email',
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Previously Invested Products",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sm,
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/previouslyinvestedproducts');
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sm,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
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
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 11, right: 11, top: 15, bottom: 15),
                  child: Column(
                    children: [
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
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              "Action",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.file_download_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.file_download_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.file_download_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggested Invested Products",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sm,
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/suggestedinvestedproducts');
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sm,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
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
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
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
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              "Action",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                                // Text(
                                //   "Sell",
                                //   style: TextStyle(
                                //       fontFamily: "Poppins",
                                //       color: Colors.white,
                                //       fontSize: 14.sm),
                                // ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
