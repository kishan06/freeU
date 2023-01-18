import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/login/contentModel.dart';
import 'package:get/get.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: SvgPicture.asset(
                          contents[i].image,
                          height: 250,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          contents[i].content,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            //fontWeight: FontWeight.,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () => setState(() {
                _controller.animateToPage(currentIndex + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear);
                if (currentIndex == 2) {
                  Get.toNamed('/login');
                }
              }),
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFB600),
                            shape: (RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                        onPressed: () {
                          setState(() {
                            _controller.animateToPage(currentIndex + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear);
                            if (currentIndex == 2) {
                              Get.toNamed('/login');
                            }
                          });
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25.r,
                      child:
                          Icon(color: Color(0xFF6B6B6B), Icons.arrow_forward),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Color(0xFF6B6B6B),
                      fontSize: 16,
                      fontFamily: "Poppins",
                    ),
                  ),
                  onTap: () {
                    Get.toNamed('/login');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
