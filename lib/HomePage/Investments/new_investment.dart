import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Investments/CurrentInvestment.dart';
import 'package:freeu/HomePage/Investments/PreviouslyInvestedProducts.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/simple_accotion.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'investment_transfer.dart';
import 'investment_watchlist.dart';
import 'pending_request.dart';
import 'product_action.dart';

class NewInvestment extends StatefulWidget {
  const NewInvestment({super.key});

  @override
  State<NewInvestment> createState() => _NewInvestmentState();
}

class _NewInvestmentState extends State<NewInvestment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              sizedBoxWidth(50.w),
              Text(
                'Your investments',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.sp,
                    color: Colors.black),
              ),
              Spacer(),
              OpenContainerWrappers(
                openBuild: NotificationPage(),
                closeBuild: SizedBox(
                  width: 20.w,
                  height: 25.h,
                  child: SvgPicture.asset(
                    'assets/images/notification-bell-svgrepo-com.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              sizedBoxWidth(16.w)
            ],
          ),
          elevation: 0,
          shadowColor: Colors.black,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(55.h),
            child: TabBar(
              labelPadding: EdgeInsets.only(bottom: 5.h),
              indicatorColor: Color(0xff002A5B),
              indicatorWeight: 5.h,
              tabs: [
                Tab(
                  child: Text(
                    'User \nDashboard',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                  ),
                ),
                Tab(
                  child: Text(
                    'Market Place Dashboard',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Tab1(),
            Tab2(),
          ],
        ),
      ),
    );
  }

  Widget Tab1() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              child: Column(
                children: [
                  twoNHalfTxt('Total Investment \nTill Date', '₹26,700,000'),
                  sizedBoxHeight(15.h),
                  twoNHalfTxt('Active \nInvestment', '₹16,200,000'),
                  sizedBoxHeight(15.h),
                  twoNHalfTxt('Investments \nreedemed', '₹10,500,000'),
                ],
              ),
            ),
            sizedBoxHeight(20.h),
            personalDetailsAccotion('Personal Details'),
            sizedBoxHeight(20.h),
            twoTxt(
              "Current Investment",
              "View All",
              CurrentInvestment(),
            ),
            sizedBoxHeight(25.h),
            threeTxt("Product", "Amount", "Action"),
            sizedBoxHeight(20.h),
            productContainer('Navy Technology\nNCD', '₹7,00,000'),
            sizedBoxHeight(12.h),
            productContainer('Prestige Tech\nPlatina - Banglore', '₹2,50,000'),
            sizedBoxHeight(20.h),
            twoTxt(
              'Investment Redeemed',
              'View All',
              CurrentInvestment(),
            ),
            sizedBoxHeight(12.h),
            threeTxt("Product", "Amount", "Action"),
            sizedBoxHeight(12.h),
            productContainer('Fixed Term Plan\n(3 Months)', '₹5,00,000'),
            sizedBoxHeight(12.h),
            productContainer('Indiabulls Dual\nAdvantage', '₹10,00,000'),
            sizedBoxHeight(80.h),
          ],
        ),
      ),
    );
  }

  Widget Tab2() {
    return Padding(
      padding: EdgeInsets.all(6.w),
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          GestureDetector(
            onTap: () {
              Get.to(InvestmentTransfer());
            },
            child: Container(
              margin: EdgeInsets.all(10.h),
              padding: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xff002555),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SizedBox(
                    height: 80.h,
                    width: 80.w,
                    child: Image.asset('assets/investmentTransferStatus.png'),
                  ),
                  Text(
                    'Investment \nTransfer Status',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(PendingRequest());
            },
            child: Container(
              margin: EdgeInsets.all(10.h),
              padding: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffB23C7E),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SizedBox(
                    height: 80.h,
                    width: 80.w,
                    child: Image.asset('assets/pendingRequest.png'),
                  ),
                  Text(
                    'Pending\nRequests',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(PreviouslyInvestedProducts());
            },
            child: Container(
              margin: EdgeInsets.all(10.h),
              padding: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xff008A5B),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SizedBox(
                    height: 80.h,
                    width: 80.w,
                    child: Image.asset('assets/investmentBought.png'),
                  ),
                  Text(
                    'Investment\nBought',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(InvestmentWatchList());
            },
            child: Container(
              margin: EdgeInsets.all(10.h),
              padding: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xff004E84),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SizedBox(
                    height: 80.h,
                    width: 80.w,
                    child: Image.asset('assets/investmentWatchlist.png'),
                  ),
                  Text(
                    'Investment\nWatchlist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
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

  Widget twoTxt(String txt1, String txt2, route) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt1,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
        OpenContainerWrappers(
          openBuild: route,
          closeBuild: Text(
            txt2,
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
        )
      ],
    );
  }

  Widget threeTxt(txt1, txt2, txt3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt1,
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
        SizedBox(),
        SizedBox(),
        Text(
          txt2,
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
        Text(
          txt3,
          style: TextStyle(
            fontSize: 18.sp,
          ),
        )
      ],
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
                        Get.to(
                          ProductAction(
                            pageIndex: 0,
                          ),
                        );
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

  Widget twoNHalfTxt(txt1, txt2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt1,
          style: TextStyle(color: Colors.white, fontSize: 14.sp),
        ),
        Text(
          txt2,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp),
        ),
      ],
    );
  }
}
