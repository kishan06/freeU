import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20III/PrivateViewDetails.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:lottie/lottie.dart';

class PrivateInvestmentProducts extends StatefulWidget {
  const PrivateInvestmentProducts({super.key});

  @override
  State<PrivateInvestmentProducts> createState() =>
      _PrivateInvestmentProductsState();
}

class _PrivateInvestmentProductsState extends State<PrivateInvestmentProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Private Investment in Public Equity Fund",
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
  }
}

class SecondTab extends StatelessWidget {
  SecondTab({super.key});

  final List hedgeSlider = [
    {
      "Company Name": "Alchemy Capital Management Pvt Ltd",
      "View investment Route": PrivateViewDetails(
        pageIndex: 0,
      ),
    },
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
