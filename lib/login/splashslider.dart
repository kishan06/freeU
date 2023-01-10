import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/login/content_model.dart';
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
                            fontWeight: FontWeight.bold,
                            fontFamily: '',
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
                            fontFamily: 'Productsans',
                          ),
                        ),
                      ),
                      // InkWell(
                      //     onTap: () {
                      //       setState(() {
                      //         _controller.animateToPage(currentIndex + 1,
                      //             duration: const Duration(milliseconds: 500),
                      //             curve: Curves.linear);
                      //         if (currentIndex == 2) {
                      //           Get.toNamed('/login');
                      //         }
                      //       });
                      //     },
                      //     child:
                      //         SvgPicture.asset("assets/images/nextButton.svg")),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFFFB600),
                                      shape: (RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ))),
                                  onPressed: () {
                                    setState(() {
                                      _controller.animateToPage(
                                          currentIndex + 1,
                                          duration:
                                              const Duration(milliseconds: 500),
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
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 25,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                    color: Color(0xFF6B6B6B),
                                    Icons.arrow_forward),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      )
                    ],
                  );
                },
              ),
            ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Expanded(
            //           flex: 1,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.end,
            //             children: [
            //               Container(
            //                   child: Row(
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: List.generate(
            //                   contents.length,
            //                   (index) => buildDot(index, context),
            //                 ),
            //               )),
            //               SizedBox(
            //                 height: 20,
            //               ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   width: 35,
                // ),
                GestureDetector(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Color(0xFF6B6B6B),
                      fontSize: 16,
                      fontFamily: "",
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
            // SizedBox(
            //   height: 32,
            // )
            //             ],
            //           )),
            //       SizedBox(
            //         width: 50,
            //       ),
            //       Expanded(
            //         flex: 1,
            //         child: Column(
            //           children: [
            //             Container(
            //               height: 60,
            //               margin:
            //                   EdgeInsets.only(left: 35, right: 35, bottom: 20),
            //               width: double.infinity,
            //               child: ElevatedButton(
            //                 onPressed: () {
            //                   setState(() {
            //                     _controller.animateToPage(currentIndex + 1,
            //                         duration: const Duration(milliseconds: 500),
            //                         curve: Curves.linear);
            //                     if (currentIndex == 5) {
            //                       Get.toNamed('/login');
            //                     }
            //                   });
            //                 },
            //                 style: ButtonStyle(
            //                   backgroundColor: MaterialStateProperty.all<Color>(
            //                       Color(0xFFF78104)),
            //                   shape: MaterialStateProperty.all<OutlinedBorder>(
            //                       RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10),
            //                   )),
            //                 ),
            //                 child: Align(
            //                   alignment: Alignment.center,
            //                   child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       children: [
            //                         Text(
            //                           "Next",
            //                           style: blackStyle(context).copyWith(
            //                             color: Colors.white,
            //                             fontSize: 16,
            //                           ),
            //                         ),
            //                       ]),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             )
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
          ],
        ),
      ),
    );
  }

  // Container buildDot(int index, BuildContext context) {
  //   return Container(
  //     height: 10,
  //     width: currentIndex == index ? 35 : 10,
  //     margin: EdgeInsets.only(right: 5),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(20),
  //       color: currentIndex == index ? Color(0xFFF78104) : Colors.grey[300],
  //     ),
  //   );
  // }
}
