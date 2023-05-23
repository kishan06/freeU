import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

import 'PreviouslyInvestedProducts.dart';

class InvestmentWatchList extends StatefulWidget {
  const InvestmentWatchList({super.key});

  @override
  State<InvestmentWatchList> createState() => _InvestmentWatchListState();
}

class _InvestmentWatchListState extends State<InvestmentWatchList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          leadingWidth: double.infinity,
          toolbarHeight: 80.h,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxHeight(10.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Investment Watchlist',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.sp,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          backgroundColor: AppColors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(65.h),
            child: TabBar(
              labelPadding: EdgeInsets.only(bottom: 10.h),
              indicatorColor: Color(0xff002A5B),
              indicatorWeight: 5.h,
              tabs: [
                Tab(
                  child: Text(
                    'Fractional Real Estate',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                  ),
                ),
                Tab(
                  child: Text(
                    'Peer-Peer\nLending',
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
            Tab1(),
          ],
        ),
      ),
    );
  }

  Widget Tab1() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
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
                  padding: const EdgeInsets.only(right: 70),
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
              height: 15.h,
            ),
            common_crd_green(),
            SizedBox(
              height: 10,
            ),
            common_crd_red(),
            SizedBox(
              height: 10,
            ),
            common_crd_green(),
            SizedBox(
              height: 10,
            ),
            common_crd_red(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
