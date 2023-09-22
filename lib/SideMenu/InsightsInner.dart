import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/ViewModel/Blogs/BlogsApis.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class InsightsInner extends StatefulWidget {
  InsightsInner(
      {super.key,
      this.postDate,
      this.postDescription,
      this.postTitle,
      this.image,
      this.minsToRead});

  String? postDate;
  String? postDescription;
  String? postTitle;
  String? image;
  String? minsToRead;

  @override
  State<InsightsInner> createState() => _InsightsInnerState();
}

class _InsightsInnerState extends State<InsightsInner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Get.back();
              },
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Insights",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 20.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/altenativecategories");
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.postTitle ?? "",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            sizedBoxHeight(14.h),
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 15.sp,
                  color: Color(0xff6B6B6B),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  widget.postDate ?? "",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff6B6B6B)),
                ),
                SizedBox(
                  width: 6.w,
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
                  widget.minsToRead ?? "",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff6B6B6B)),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Html(data: widget.postDescription ?? ""),
            // Text(
            //   'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
            //   textAlign: TextAlign.left,
            //   style: TextStyle(
            //     fontSize: 16.sp,
            //     color: Color(0xff000000),
            //   ),
            // ),

            sizedBoxHeight(15.h),
            // CustomNextButton(
            //   ontap: () {
            //     // Get.back();
            //     // Get.to(InsightsInner());
            //   },
            //   text: "Next",
            // ),
            // sizedBoxHeight(20.h)
          ],
        ),
      ),
    );
  }
}
