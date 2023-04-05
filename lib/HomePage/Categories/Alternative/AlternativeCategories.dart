import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AlternativeCategories extends StatefulWidget {
  const AlternativeCategories({super.key});

  @override
  State<AlternativeCategories> createState() => _AlternativeCategoriesState();
}

class _AlternativeCategoriesState extends State<AlternativeCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Alternative Investment \nFunds categories",
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
                      height: 37.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: GestureDetector(
                        onTap: null,
                        child: Container(
                          width: 358,
                          height: 325,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xff002555),
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
                                  "assets/images/categoryearning.png",
                                  width: 180,
                                  height: 180,
                                ),
                                SizedBox(height: 21.h),
                                Text(
                                  "Alternative Investment \n        Funds Category I",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 25.sp,
                                      color: Color(0XFFFFFFFF),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 27.h,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: GestureDetector(
                        onTap: null,
                        child: Container(
                          width: 358,
                          height: 325,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xffB23C7E),
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
                                  "assets/images/categorydebt (1).png",
                                  width: 180,
                                  height: 180,
                                ),
                                SizedBox(height: 21.h),
                                Text(
                                  "Alternative Investment \n    Funds Category II",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 25.sp,
                                      color: Color(0XFFFFFFFF),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 27.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        width: 358,
                        height: 325,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xff008A5B),
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
                                "assets/images/categoryreturninvestment.png",
                                width: 180,
                                height: 180,
                              ),
                              SizedBox(height: 21.h),
                              Text(
                                "Alternative Investment \n    Funds Category III",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 25.sp,
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 27.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
