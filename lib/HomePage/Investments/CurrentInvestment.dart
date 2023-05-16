import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

import '../Categories/Lease_based_Categories/Lease view more product/LeaseViewInvestment.dart';

class CurrentInvestment extends StatefulWidget {
  const CurrentInvestment({super.key});

  @override
  State<CurrentInvestment> createState() => _CurrentInvestmentState();
}

class _CurrentInvestmentState extends State<CurrentInvestment> {
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
      key: _key,
      drawer: NavDrawer(),
      backgroundColor: Color(0xffffffff),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Current investment",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 15.h,
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
                    sizedBoxHeight(20.h),
                    productContainer(
                        'Prestige Tech\nPlatina - Banglore', '₹2,50,000'),
                    sizedBoxHeight(20.h),
                    productContainer('Navy Technology\nNCD', '₹7,00,000'),
                    sizedBoxHeight(20.h),
                    productContainer(
                        'Prestige Tech\nPlatina - Banglore', '₹2,50,000'),
                    sizedBoxHeight(20.h),
                    productContainer('Navy Technology\nNCD', '₹7,00,000'),
                    sizedBoxHeight(20.h),
                    productContainer(
                        'Prestige Tech\nPlatina - Banglore', '₹2,50,000'),
                    sizedBoxHeight(20.h),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(15.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          const Color(0xFF006796),
                          const Color(0xFF00344B),
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x48B9B9BE),
                            blurRadius: 20.0,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Investment',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                          Text(
                            '₹16,200,000',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(20.h)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productContainer(txt1, txt2) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: Color(0x48B9B9BE),
            blurRadius: 20.0,
            spreadRadius: 0,
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
                SvgPicture.asset("assets/images/investmentmyre (2).svg"),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt1,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18.sp,
                  ),
                ),
                Text(
                  txt2,
                  style: TextStyle(fontSize: 18.sp),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: GestureDetector(
                      onTap: () {
                        Get.to(LeaseViewInvestment(
                          pageIndex: 0,
                        ));
                      },
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 30.h,
                        color: Colors.black.withOpacity(0.8),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
