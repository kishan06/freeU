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
                CustomTextDropdown(items: [
                  "All",
                  "Fractional Real Estate",
                  "Peer to Peer",
                ], controller: insightsdrpdown, showDropDown: true),
                SizedBox(
                  height: 20,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Image.asset(
                      'assets/images/img2.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Retail banks wake up\nto digital',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 20,
                              color: Color(0xff6B6B6B),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'November 11, 2022',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff6B6B6B)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet,\nconsectetuer elit, sed diam\nnonummy nibh euismod',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF707070),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFFFB600),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 10),
                                  child: Text(
                                    'Read More',
                                    style: TextStyle(
                                      fontSize: 15,
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
                        width: 3,
                      ),
                    )),
                  ),
                ),
                Row(
                  children: [
                    insights(),
                    SizedBox(
                      width: 10,
                    ),
                    insights(),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    insights(),
                    SizedBox(
                      width: 10,
                    ),
                    insights(),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    insights(),
                    SizedBox(
                      width: 10,
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
          width: 180,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Retail banks wake up\nto digital',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff000000),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.calendar_today,
              size: 18,
              color: Color(0xff6B6B6B),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'November 11, 2022',
              style: TextStyle(fontSize: 12, color: Color(0xff6B6B6B)),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Lorem ipsum dolor sit amet,\nconsectetuer elit, sed diam\nnonummy nibh euismod',
          style: TextStyle(
            fontSize: 12,
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
                    fontSize: 15,
                    color: Color(0xFFFFB600),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Color(0xFFFFB600),
                  size: 20,
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
