// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class CurrentInvestment extends StatefulWidget {
  const CurrentInvestment({super.key});

  @override
  State<CurrentInvestment> createState() => _CurrentInvestmentState();
}

class _CurrentInvestmentState extends State<CurrentInvestment> {
  int selectIndex = 0;
  int _selectedIndex = 0;
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

  void _selectedTab(int index) {
    setState(() {
      // _lastSelected = 'TAB: $index';
      // print(_lastSelected);

      switch (index) {
        case 0:
          {
            Get.toNamed("/homepage");
          }
          break;

        case 1:
          {
            Get.toNamed('/categoriesmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityFirst())));
          }
          break;

        case 2:
          {
            Get.toNamed('/investmentmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityQuestion())));
          }
          break;
        case 3:
          {
            Get.toNamed('/chatpage');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => Login())));
          }
          break;
        case 4:
          {
            Get.toNamed('/myprofile');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => SignUp())));
          }
          break;
        default:
          {
            throw Error();
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "Current Invesment",
        showLeading: true,
        bottomtext: false,
      ),
      bottomNavigationBar:
          CreateBottomBar(stateBottomNav, "bottombar", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.h,
              ),
              common_card_green(),
              SizedBox(
                height: 10.h,
              ),
              common_card_red(),
              SizedBox(
                height: 10.h,
              ),
              common_card_green(),
              SizedBox(
                height: 10.h,
              ),
              common_card_red(),
              SizedBox(
                height: 10.h,
              ),
              common_card_green(),
              SizedBox(
                height: 10.h,
              ),
              common_card_red(),
              SizedBox(
                height: 10.h,
              ),
              common_card_green(),
              SizedBox(
                height: 10.h,
              ),
              common_card_red(),
              SizedBox(
                height: 10.h,
              ),
              common_card_green(),
              SizedBox(
                height: 10.h,
              ),
              common_card_red(),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class common_card_green extends StatelessWidget {
  const common_card_green({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 0,
                child: SvgPicture.asset(
                  "assets/images/Ellipse 7489.svg",
                  height: 60,
                )),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Making India Atmanirbhar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        fontSize: 14.sm),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "P & L",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "₹25,000",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        fontSize: 14.sm),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        size: 15,
                        color: Colors.green,
                      ),
                      Text(
                        "5.6%",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12.sm,
                            color: Colors.green),
                      )
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Action",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color:
                                            Color.fromARGB(255, 240, 239, 239),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class common_card_red extends StatelessWidget {
  const common_card_red({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 0,
                child: SvgPicture.asset(
                  "assets/images/Ellipse 7489.svg",
                  height: 60,
                )),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Making India Atmanirbhar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        fontSize: 14.sm),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "P & L",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "₹25,000",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        fontSize: 14.sm),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        size: 15,
                        color: Colors.red,
                      ),
                      Text(
                        "5.6%",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12.sm,
                            color: Colors.red),
                      )
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Action",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color:
                                            Color.fromARGB(255, 240, 239, 239),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
