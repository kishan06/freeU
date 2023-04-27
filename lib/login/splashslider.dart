import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/login/contentModel.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashslider extends StatefulWidget {
  const Splashslider({Key? key}) : super(key: key);

  @override
  State<Splashslider> createState() => _SplashsliderState();
}

class _SplashsliderState extends State<Splashslider> {
  int currentIndex = 0;
  late PageController _controller;
  DateTime timebackPressed = DateTime.now();
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timebackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timebackPressed = DateTime.now();

        if (isExitWarning) {
          final message = "Press back again to exit";
          Fluttertoast.showToast(
            msg: message,
            fontSize: 18,
          );

          return false;
        } else {
          Fluttertoast.cancel();

          SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        // backgroundColor: Color(0xffF5F8FA),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 37.h,
              ),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: 4,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return page1();
                    } else if (i == 1) {
                      return page2();
                    } else if (i == 2) {
                      return page3();
                    } else {
                      return page4();
                    }
                    // return Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Expanded(
                    //       flex: 8,
                    //       child: SvgPicture.asset(
                    //         contents[i].image,
                    //         height: 250.h,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 20.h,
                    //     ),
                    //     Expanded(
                    //       flex: 1,
                    //       child: Text(
                    //         contents[i].title,
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           fontSize: 24.sm,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       flex: 2,
                    //       child: Text(
                    //         contents[i].content,
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           fontSize: 15.sm,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // );
                  },
                ),
              ),
              // const Spacer(),
              // SizedBox(
              //   height: 15.h,
              // ),
              SizedBox(
                width: 330.w,
                child: CustomNextButton(
                  text: "Next",
                  ontap: () {
                    setState(() {
                      _controller.animateToPage(currentIndex + 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear);
                      if (currentIndex == 3) {
                        Get.toNamed('/EntryPoint', arguments: 0);
                      }
                    });
                  },
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  currentIndex < 3
                      ? GestureDetector(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                            ),
                          ),
                          onTap: () async {
                            final SharedPreferences prefs = await SharedPreferences.getInstance();

                            await prefs.setBool('OnBoardDone', true);
                            Get.toNamed('/EntryPoint', arguments: 0);
                          },
                        )
                      : Text(
                          "",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16.sp,
                            fontFamily: "Poppins",
                          ),
                        )
                ],
              ),
              SizedBox(
                height: 32.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget page1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM("What is FreeU ?"),

          sizedBoxHeight(15.h),

          text18Grey(
              "FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering the best risk adjusted returns to our investors."),

          sizedBoxHeight(37.h),

          Container(
            width: 180.h,
            height: 180.h,
            child: Image.asset(
              "assets/logos/bar-graph.png",
              // width: 180.h,
              // height: 180.h,
              fit: BoxFit.fill,
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 153.h,
              height: 153.h,
              child: Image.asset(
                "assets/logos/economic-growth.png",
                // width: 153.h,
                // height: 153.h,
                fit: BoxFit.fill,
              ),
            ),
          )

          // Text("dsf")
          // Text("FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering thebest risk adjusted returns to our investors.",
          //   style: TextStyle(
          //     fontSize: 20.sp,
          //     color: AppColors.grey616161,
          //     // fontWeight: FontWeight.w500
          //   ),
          // )
        ],
      ),
    );
  }

  Widget page2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM("What are \nAlternative Assets?"),

          sizedBoxHeight(15.h),

          text18Grey(
              "As the name suggests, Alternative investments are financial investments that cannot be categorized as a traditional, or conventional investment."),

          sizedBoxHeight(53.h),

          Center(
            child: Container(
              width: 250.h,
              height: 250.h,
              child: Image.asset(
                "assets/logos/allocation.png",
                // width: 250.h,
                // height: 250.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text("dsf")
          // Text("FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering thebest risk adjusted returns to our investors.",
          //   style: TextStyle(
          //     fontSize: 20.sp,
          //     color: AppColors.grey616161,
          //     // fontWeight: FontWeight.w500
          //   ),
          // )
        ],
      ),
    );
  }

  Widget page3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM(
              "Difference between Alternative & \nTraditional Investments"),

          sizedBoxHeight(15.h),

          text18Grey(
              "Traditional investments are investments that can be bought, sold, and traded on a public market"),

          // sizedBoxHeight(30.h),
          const Spacer(),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120.h,
                height: 120.h,
                child: Image.asset(
                  "assets/logos/money-bag.png",
                  // width: 120.h,
                  // height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),

              text30BlackM("vs"),

              SizedBox(
                height: 120.h,
                width: 120.h,
              )

              // Image.asset("assets/logos/economic-growth.png",
              //   width: 120.h,
              //   height: 120.h,
              // ),
            ],
          ),

          // Center(child: text30BlackM("vs")),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 130.h,
              height: 130.h,
              child: Image.asset(
                "assets/logos/real-estate.png",
                // width: 130.h,
                // height: 130.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // sizedBoxHeight(15.h),
          const Spacer(),

          text18Grey(
              "Alternative investments, on the other hand, are not publicly traded."),

          const Spacer(),
        ],
      ),
    );
  }

  Widget page4() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM("Why FreeU ?"),

          sizedBoxHeight(15.h),

          text18Grey(
              "Freeu is one-stop shop for Alternate Investments. We want you to learn, compare, and choose before you invest. Luckily, we have curated the best of the best’s options for you"),

          sizedBoxHeight(50.h),

          Center(
            child: Container(
              width: 250.h,
              height: 250.h,
              child: Image.asset(
                "assets/logos/return-on-investment (1).png",
                // width: 250.h,
                // height: 250.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text("dsf")
          // Text("FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering thebest risk adjusted returns to our investors.",
          //   style: TextStyle(
          //     fontSize: 20.sp,
          //     color: AppColors.grey616161,
          //     // fontWeight: FontWeight.w500
          //   ),
          // )
        ],
      ),
    );
  }
}
