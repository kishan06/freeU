import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class HowToInvest extends StatefulWidget {
  const HowToInvest({super.key});

  @override
  State<HowToInvest> createState() => _HowToInvestState();
}

class _HowToInvestState extends State<HowToInvest> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: CustomSignupAppBar(
        titleTxt: "How To Invest",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Flexible(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 22, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "1. Create An Account",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20.sm,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Lorem Ipsum has been the industry's standard\n dummy text ever since the 1500s, when an unknown",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -45,
                    left: 120,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF143C6D),
                      radius: 45.r,
                      child: SvgPicture.asset(
                          "assets/images/add-user-account-man-svgrepo-com.svg"),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset("assets/images/arrow.svg"),
              SizedBox(
                height: 45,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Flexible(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 22, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "2. Choose an asset",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20.sm,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -45,
                    left: 120,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFFB600),
                      radius: 45.r,
                      child: SvgPicture.asset(
                          "assets/images/select-svgrepo-com.svg"),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset("assets/images/arrow.svg"),
              SizedBox(
                height: 45,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Flexible(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 22, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "3. Invest",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20.sm,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -45,
                    left: 120,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF143C6D),
                      radius: 45.r,
                      child: SvgPicture.asset("assets/images/Group 3167.svg"),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset("assets/images/arrow.svg"),
              SizedBox(
                height: 45,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Flexible(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 22, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "4. Easy returns",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20.sm,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                    left: 120,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFFB600),
                      radius: 45.r,
                      child: SvgPicture.asset(
                          "assets/images/return-arrow-svgrepo-com 2.svg"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
