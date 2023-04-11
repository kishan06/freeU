// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/SideMenu/InsightsInner.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class Insights extends StatefulWidget {
  const Insights({super.key});

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  final insightsdrpdown = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                      'Insights',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                    sizedBoxHeight(20.h),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                      cursorColor: const Color(0xFF1B8DC9),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.h),
                        filled: true,
                        fillColor: Color(0xffFBFBFB),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(47.r),
                          borderSide:
                              BorderSide(color: Color(0xffFBFBFB), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(47.r),
                          borderSide:
                              BorderSide(color: Color(0xffFBFBFB), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(47.r),
                          borderSide:
                              BorderSide(color: Color(0xffFBFBFB), width: 1),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(47.r),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(47.r),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1),
                        ),
                        hintStyle: TextStyle(
                            color: Color(0x80000000),
                            fontSize: 16.sp,
                            fontFamily: "Poppins"),
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                        suffixIcon: PopupMenuButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r)),
                          constraints: BoxConstraints.expand(height: 150),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                          ),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text(
                                'All',
                              ),
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Fractional Real Estate',
                              ),
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Peer to Peer',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, number) {
              return Padding(
                padding: EdgeInsets.all(16.w),
                child: Material(
                  borderRadius: BorderRadius.circular(18.r),
                  elevation: 1,
                  child: Container(
                    margin: EdgeInsets.all(14.w),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Retail banks wake up to digital',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "Poppins",
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          sizedBoxHeight(6.h),
                          Image.asset(
                            'assets/images/img2.png',
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 15.sp,
                                color: Color(0xff707070),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'November 11, 2022',
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15.sp,
                                    color: Color(0xff707070)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh . . .',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sp,
                              color: Color(0xFF707070),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                              child: Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF143C6D),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 7),
                                    child: Center(
                                      child: Text(
                                        'Read More',
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 18.sp,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  )),
                              onTap: () {
                                Get.to(InsightsInner());
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Spacer();
            },
            itemCount: 5));
  }
}
