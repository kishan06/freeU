// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';

class SuccessStoriesDetails extends StatefulWidget {
  const SuccessStoriesDetails({super.key});

  @override
  State<SuccessStoriesDetails> createState() => _SuccessStoriesDetailsState();
}

class _SuccessStoriesDetailsState extends State<SuccessStoriesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: CustomSignupAppBar(
        titleTxt: "Lorem Ipsum",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
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
                  style: TextStyle(fontSize: 14.sm, color: Color(0xff6B6B6B)),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  size: 20,
                  color: Color(0xff6B6B6B),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '11 Min Raed',
                  style: TextStyle(fontSize: 14.sm, color: Color(0xff6B6B6B)),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit',
              style: TextStyle(
                fontSize: 16.sm,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat',
              style: TextStyle(
                fontSize: 16.sm,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset('assets/images/insights-inner.png'),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad',
              style: TextStyle(
                fontSize: 16.sm,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        )),
      ),
    );
  }
}
