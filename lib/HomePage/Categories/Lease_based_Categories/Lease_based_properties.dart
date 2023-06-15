import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Lease_based_Categories/Lease_Based_properties2.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LeaseBasedProperties extends StatefulWidget {
  const LeaseBasedProperties({super.key});

  @override
  State<LeaseBasedProperties> createState() => _LeaseBasedPropertiesState();
}

class _LeaseBasedPropertiesState extends State<LeaseBasedProperties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1FAFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1FAFF),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
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
                  "Properties",
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
    return SingleChildScrollView(
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
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text(
                    "Navi Mumbai Office \nOpportunity II",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        color: Color(0XFF000000),
                        fontWeight: FontWeight.w500),
                  ),
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
                          ),
                        ),
                      ),
                      Text(
                        "Seawoods, Navi Mumbai",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Color(0XFF000000),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Minimum investment amount",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0XFF000000),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          " ₹ 1 Crore",
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Color(0XFF000000),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
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
                  openBuild: const LeaseBasedProperties2(),
                  closeBuild: Container(
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
        const Text("No Data Found")
      ],
    );
  }
}
