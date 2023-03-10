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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FA),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: Color(0xFF6B6B6B),
                        )),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      "How To Invest",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 20.sm),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.h,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x48B9B9BE),
                            blurRadius: 20.0,
                            spreadRadius: 0,
                            // offset: Offset(10, 10, 10, 10),
                          )
                        ],
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
                                  fontSize: 18.sm,
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
                                fontSize: 13.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -45,
                      left: 120,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF143C6D),
                        radius: 45.r,
                        child: SvgPicture.asset("assets/images/adduser.svg"),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset("assets/images/downarrow.svg"),
                SizedBox(
                  height: 46.h,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x48B9B9BE),
                            blurRadius: 20.0,
                            spreadRadius: 0,
                            // offset: Offset(10, 10, 10, 10),
                          )
                        ],
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
                                  fontSize: 18.sm,
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
                                fontSize: 13.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -45,
                      left: 120,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFFB600),
                        radius: 45.r,
                        child: SvgPicture.asset("assets/images/arrow.svg"),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset("assets/images/downarrow.svg"),
                SizedBox(
                  height: 46.h,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x48B9B9BE),
                            blurRadius: 20.0,
                            spreadRadius: 0,
                            // offset: Offset(10, 10, 10, 10),
                          )
                        ],
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
                                  fontSize: 18.sm,
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
                                fontSize: 13.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -45,
                      left: 120,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF143C6D),
                        radius: 45.r,
                        child: SvgPicture.asset("assets/images/invest.svg"),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset("assets/images/downarrow.svg"),
                SizedBox(
                  height: 46.h,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x48B9B9BE),
                            blurRadius: 20.0,
                            spreadRadius: 0,
                            // offset: Offset(10, 10, 10, 10),
                          )
                        ],
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
                                  fontSize: 18.sm,
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
                                fontSize: 13.sm,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -45,
                      left: 120,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFFB600),
                        radius: 45.r,
                        child:
                            SvgPicture.asset("assets/images/returnarrow.svg"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
