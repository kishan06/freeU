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
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "Lorem Ipsum",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
            child: Flexible(
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Icon(
                      Icons.calendar_today,
                      size: 15.sm,
                      color: Color(0xff6B6B6B),
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Icon(
                      Icons.circle,
                      size: 13.sm,
                      color: Color(0xff6B6B6B),
                    ),
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
                'Lorem ipsum dolor sit amet, adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.sm,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Lorem ipsum dolor sit aLorem ipsum dolor sit ametmet, adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat',
                textAlign: TextAlign.justify,
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
                'Lorem ipsum dolor sit amet, consectetuer Lorem ipsum dolor sit ametadipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.sm,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 15,
              ),
                      ],
                    ),
            )),
      ),
    );
  }
}
