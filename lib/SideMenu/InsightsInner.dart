import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class InsightsInner extends StatefulWidget {
  const InsightsInner({super.key});

  @override
  State<InsightsInner> createState() => _InsightsInnerState();
}

class _InsightsInnerState extends State<InsightsInner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(170.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              elevation: 0,
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Retail banks wake up to digital',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sizedBoxHeight(14.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Icon(
                    Icons.calendar_today,
                    size: 15.sp,
                    color: Color(0xff6B6B6B),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'November 11, 2022',
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff6B6B6B)),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Icon(
                    Icons.circle,
                    size: 14.sp,
                    color: Color(0xff6B6B6B),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '11 Min Raed',
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff6B6B6B)),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Image.asset(
              'assets/images/insights-inner.png',
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff000000),
              ),
            ),
            sizedBoxHeight(15.h),
            CustomNextButton(
              ontap: () {
                Get.back();
                Get.to(InsightsInner());
              },
              text: "Next",
            ),
            sizedBoxHeight(20.h)
          ],
        )),
      ),
    );
  }
}
