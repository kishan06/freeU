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
    return
        // SafeArea(
        //child:
        Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 26,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "How to invest",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/profileinvest.png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "1. Create An Account",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/assetinvest.png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "2. Choose an asset",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/investmentinvest (2).png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "3. Invest",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/backinvest.png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "4. Easy returns",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 61.h,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // );
  }
}
