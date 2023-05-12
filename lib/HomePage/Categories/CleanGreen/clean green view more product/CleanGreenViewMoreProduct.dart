import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'CleanGreenViewInvestment.dart';

class CleanGreenViewMoreProduct extends StatefulWidget {
  const CleanGreenViewMoreProduct({super.key});

  @override
  State<CleanGreenViewMoreProduct> createState() =>
      _CleanGreenViewMoreProductState();
}

class _CleanGreenViewMoreProductState extends State<CleanGreenViewMoreProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1FAFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1FAFF),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
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
                  "Clean and Green Assets",
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
                    height: 20.h,
                  ),
                  ButtonsTabBar(
                    buttonMargin: EdgeInsets.zero,
                    contentPadding: EdgeInsets.only(left: 27.w, right: 27.w),
                    radius: 4,
                    backgroundColor: const Color(0xFF143C6D),
                    unselectedBorderColor: const Color(0xFFFFFFFF),
                    //borderWidth: 1,
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
                  sizedBoxHeight(15.h),
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
  SecondTab({super.key});

  List viewSlider = [
    {
      "Company Name":
          "Groundmount Solar supplying power to Bennett Coleman - Times of India",
      "Expected Return": "9.70% ",
      "Minimum Investment": '5,00,000',
      "View investment Route": CleanGreenViewInvestment(
        pageIndex: 0,
      )
    },
    {
      "Company Name": "Bounce EV Deal",
      "Expected Return": "11%",
      "Minimum Investment": '50,000',
      "View investment Route": CleanGreenViewInvestment(
        pageIndex: 1,
      )
    },
    {
      "Company Name": "Bennett, Coleman & Company Ltd",
      "Expected Return": "9.70%",
      "Minimum Investment": '5,00,000',
      "View investment Route": CleanGreenViewInvestment(
        pageIndex: 2,
      )
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return sizedBoxHeight(15.h);
      },
      scrollDirection: Axis.vertical,
      itemCount: viewSlider.length,
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                padding: EdgeInsets.symmetric(
                  vertical: 15.h,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              viewSlider[index]['Company Name'],
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  fontFamily: 'Poppins',
                                  color: const Color(0XFF000000),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Expected Returns (IRR):",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: const Color(0XFF000000),
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                viewSlider[index]['Expected Return'],
                                style: TextStyle(
                                  fontSize: 20.sp,
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
                      padding: EdgeInsets.only(left: 16.w),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/propertiestransfer.png",
                            width: 50.w,
                            height: 50.h,
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
                                viewSlider[index]['Minimum Investment'],
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: const Color(0XFF000000),
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
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 220, 220, 226),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.r),
                          color: AppColors.blue143C6D,
                        ),
                        child: OpenContainerWrappers(
                          openBuild: viewSlider[index]['View investment Route'],
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
