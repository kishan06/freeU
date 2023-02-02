// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/SideMenu/InsightsInner.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/signupAppbar.dart';

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
      appBar: CustomSignupAppBar(
        titleTxt: "Insights",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextDropdown(
                  items: [
                    "All",
                    "Fractional Real Estate",
                    "Peer to Peer",
                  ],
                  controller: insightsdrpdown,
                  showDropDown: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Image.asset(
                      'assets/images/img2.png',
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Retail banks wake up\nto digital',
                          style: TextStyle(
                            fontSize: 16.sm,
                            fontFamily: "Poppins",
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 14.sm,
                              color: Color(0xff6B6B6B),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'November 11, 2022',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12.sm,
                                  color: Color(0xff6B6B6B)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet,\nconsectetuer elit, sed diam\nnonummy nibh euismod',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14.sm,
                            color: Color(0xFF707070),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        GestureDetector(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFFFB600),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: Text(
                                    'Read More',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14.sm,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                )),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => InsightsInner())));
                            })
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFFDDF93),
                        width: 3.w,
                      ),
                    )),
                  ),
                ),
                Row(
                  children: [
                    insights(),
                    SizedBox(
                      width: 10.w,
                    ),
                    insights(),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    insights(),
                    SizedBox(
                      width: 10.w,
                    ),
                    insights(),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    insights(),
                    SizedBox(
                      width: 10.h,
                    ),
                    insights(),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class insights extends StatelessWidget {
  const insights({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/img1.png',
          width: 170.w,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Retail banks wake up\nto digital',
          style: TextStyle(
            fontSize: 14.sm,
            color: Color(0xff000000),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Icon(
              Icons.calendar_today,
              size: 18.h,
              color: Color(0xff6B6B6B),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              'November 11, 2022',
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12.sm,
                  color: Color(0xff6B6B6B)),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Lorem ipsum dolor sit amet,\nconsectetuer elit, sed diam\nnonummy nibh euismod',
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 12.sm,
            color: Color(0xFF707070),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
            child: Row(
              children: [
                Text(
                  'Read More',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14.sm,
                    color: Color(0xFFFFB600),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Color(0xFFFFB600),
                  size: 20.sm,
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => InsightsInner())));
            })
      ],
    );
  }
}
