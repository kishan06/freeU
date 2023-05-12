import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/prod_details_debt_fund.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:lottie/lottie.dart';

List _productsData = [
  {
    "Company Name": "Vivriti Alpha Debt Fund Enhanced",
    "View investment Route": ProductsDetailsDebtFund(
      pageIndex: 0,
    )
  },
  {
    "Company Name": "Structured Debt Opportunities Fund III",
    "View investment Route": ProductsDetailsDebtFund(
      pageIndex: 1,
    )
  },
];

class DebtFundProd extends StatefulWidget {
  const DebtFundProd({super.key});

  @override
  State<DebtFundProd> createState() => _DebtFundProdState();
}

class _DebtFundProdState extends State<DebtFundProd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomSignupAppBar(
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
                // /
                Text(
                  "Debt Fund",
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
                    const SizedBox(
                      height: 20,
                    ),
                    ButtonsTabBar(
                      buttonMargin: EdgeInsets.zero,
                      contentPadding:
                          const EdgeInsets.only(left: 27, right: 27),
                      radius: 4,
                      backgroundColor: const Color(0xFF143C6D),
                      unselectedBorderColor: const Color(0xFFFFFFFF),
                      borderWidth: 2,
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
                    const Expanded(
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
      child: Column(
        children: [
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return card(
                    title: _productsData[index]["Company Name"], index: index);
              },
              separatorBuilder: (context, index) {
                return sizedBoxHeight(20.h);
              },
              itemCount: _productsData.length)
        ],
      ),
    );
  }

  Widget card({required String title, required int index}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: EdgeInsets.all(5.w),
        child: Container(
          decoration: const BoxDecoration(
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
                        title,
                        // "HDFC AMC Select AIF FOF - 1",
                        style: const TextStyle(
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                const Divider(
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
                        color: const Color(0XFF000000),
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
                          color: const Color(0XFF000000),
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
                          color: const Color(0XFF000000),
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
                          color: const Color(0XFF000000),
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
                        color: const Color(0XFF000000),
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
                          color: const Color(0XFF000000),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                sizedBoxHeight(15.h),
                // /
                OpenContainerWrappers(
                    openBuild: _productsData[index]['View investment Route'],
                    closeBuild: Container(
                      decoration: BoxDecoration(
                          color: AppColors.blue002A5B,
                          borderRadius: BorderRadius.circular(10.r)),
                      height: 50.h,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'View Details',
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      )),
                    )),

                //

                SizedBox(
                  height: 20.h,
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
  }
}
