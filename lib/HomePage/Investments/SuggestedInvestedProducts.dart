import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class SuggestedInvestedProducts extends StatefulWidget {
  const SuggestedInvestedProducts({super.key});

  @override
  State<SuggestedInvestedProducts> createState() =>
      _SuggestedInvestedProductsState();
}

class _SuggestedInvestedProductsState extends State<SuggestedInvestedProducts> {
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
        titleTxt: "Suggested Invested Products",
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
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 0,
                          child: SvgPicture.asset(
                              "assets/images/Ellipse 7489.svg")),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Vaishnavi Tech Park",
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                                  Icons.arrow_upward_rounded,
                                  size: 15,
                                  color: Colors.green,
                                ),
                                Text(
                                  "5.6%",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
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
                                child: Icon(
                                  Icons.file_download_outlined,
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 0,
                          child: SvgPicture.asset(
                              "assets/images/Ellipse 7489.svg")),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                                  Icons.arrow_downward_rounded,
                                  size: 15,
                                  color: Colors.red,
                                ),
                                Text(
                                  "2.1%",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
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
                                child: Icon(
                                  Icons.file_download_outlined,
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 0,
                          child: SvgPicture.asset(
                              "assets/images/Ellipse 7489.svg")),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Vaishnavi Tech Park",
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                                  Icons.arrow_upward_rounded,
                                  size: 15,
                                  color: Colors.green,
                                ),
                                Text(
                                  "5.6%",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
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
                                child: Icon(
                                  Icons.file_download_outlined,
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 0,
                          child: SvgPicture.asset(
                              "assets/images/Ellipse 7489.svg")),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                                  Icons.arrow_downward_rounded,
                                  size: 15,
                                  color: Colors.red,
                                ),
                                Text(
                                  "2.1%",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
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
                                child: Icon(
                                  Icons.file_download_outlined,
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 0,
                          child: SvgPicture.asset(
                              "assets/images/Ellipse 7489.svg")),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Vaishnavi Tech Park",
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                                  Icons.arrow_upward_rounded,
                                  size: 15,
                                  color: Colors.green,
                                ),
                                Text(
                                  "5.6%",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
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
                                child: Icon(
                                  Icons.file_download_outlined,
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 0,
                          child: SvgPicture.asset(
                              "assets/images/Ellipse 7489.svg")),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
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
                                  Icons.arrow_downward_rounded,
                                  size: 15,
                                  color: Colors.red,
                                ),
                                Text(
                                  "2.1%",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 16.sm),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
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
                                child: Icon(
                                  Icons.file_download_outlined,
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
