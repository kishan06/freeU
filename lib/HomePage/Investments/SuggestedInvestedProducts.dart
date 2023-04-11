import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class SuggestedInvestedProducts extends StatefulWidget {
  const SuggestedInvestedProducts({super.key});

  @override
  State<SuggestedInvestedProducts> createState() =>
      _SuggestedInvestedProductsState();
}

class _SuggestedInvestedProductsState extends State<SuggestedInvestedProducts> {
  int selectIndex = 0;
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  PageController indicatorcontroller = PageController(
    viewportFraction: 0.95,
  );
  PageController categoriescontroller = PageController(
    viewportFraction: 0.55,
  );
  PageController investmentcontroller = PageController(
    viewportFraction: 0.9,
  );
  PageController pickcontroller = PageController(
    viewportFraction: 0.75,
  );

  void _selectedTab(int index) {
    setState(() {
      // _lastSelected = 'TAB: $index';
      // print(_lastSelected);

      switch (index) {
        case 0:
          {
            Get.toNamed("/homepage");
          }
          break;

        case 1:
          {
            Get.toNamed('/categoriesmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityFirst())));
          }
          break;

        case 2:
          {
            Get.toNamed('/investmentmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityQuestion())));
          }
          break;
        case 3:
          {
            Get.toNamed('/chatpage');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => Login())));
          }
          break;
        case 4:
          {
            Get.toNamed('/myprofile');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => SignUp())));
          }
          break;
        default:
          {
            throw Error();
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: NavDrawer(),
      backgroundColor: Color(0xffffffff),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      //  AppBar(
      //   backgroundColor: Color(0xffffffff),
      //   elevation: 0,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //     ),
      //     iconSize: 26,
      //     color: Colors.black,
      //   ),
      // ),
      // CustomSignupAppBar(
      //   titleTxt: "Suggested Invested Products",
      //   showLeading: true,
      //   bottomtext: false,
      // ),
      bottomNavigationBar:
          CreateBottomBar(stateBottomNav, "bottombar", context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Suggested invested products",
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
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: Text(
                            "Product",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 68),
                          child: Text(
                            "P & L",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Action",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    common_crd_green(),
                    SizedBox(
                      height: 10,
                    ),
                    common_crd_red(),
                    SizedBox(
                      height: 10,
                    ),
                    common_crd_green(),
                    SizedBox(
                      height: 10,
                    ),
                    common_crd_red(),
                    SizedBox(
                      height: 10,
                    ),
                    // common_crd_green(),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // common_crd_red(),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class common_crd_green extends StatelessWidget {
  const common_crd_green({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Color(0xffECECEC).withOpacity(1), width: 1),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x48B9B9BE),
            blurRadius: 20.0,
            spreadRadius: 0,
            // offset: Offset(-20, -20,),
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/images/investmentmyre (2).svg"),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 4,
                  child: Text(
                    "Vaishnavi\nTech Park",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 84, bottom: 18),
                //   child: SvgPicture.asset("assets/images/Investmentnumber.svg"),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 20, bottom: 18),
                //   child: GestureDetector(
                //     onTap: () {
                //       showModalBottomSheet(
                //         isScrollControlled: true,
                //         context: context,
                //         shape: const RoundedRectangleBorder(
                //           borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(30),
                //             topRight: Radius.circular(30),
                //           ),
                //         ),
                //         builder: (context) {
                //           return Container(
                //             margin: const EdgeInsets.symmetric(
                //                 horizontal: 16, vertical: 30),
                //             child: Column(
                //               mainAxisSize: MainAxisSize.min,
                //               children: [
                //                 SizedBox(
                //                   height: 20.h,
                //                 ),
                //                 SvgPicture.asset(
                //                     "assets/images/thankyouinvestment.svg"),
                //                 SizedBox(
                //                   height: 20,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(
                //                       left: 15, right: 11),
                //                   child: Text(
                //                     'Thank You For Selling\n           Product',
                //                     style: TextStyle(
                //                         fontFamily: 'Poppins',
                //                         fontSize: 30,
                //                         color: Color(0xff0F0C0C),
                //                         fontWeight: FontWeight.w500),
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   height: 20.h,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(
                //                       left: 40, right: 40),
                //                   child: Text(
                //                     'A FreeU Advisory Team will \n    get back to you soon.',
                //                     style: TextStyle(
                //                         fontFamily: 'Poppins',
                //                         fontSize: 20,
                //                         color: Color(0xff272424),
                //                         fontWeight: FontWeight.w300),
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   height: 30,
                //                 ),
                //               ],
                //             ),
                //           );
                //         },
                //       );
                //     },
                //     child: Text(
                //       "Sell",
                //       style: TextStyle(
                //           decoration: TextDecoration.underline,
                //           fontFamily: "Poppins",
                //           color: Color(0xff143C6D),
                //           fontSize: 18.sp),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}

class common_crd_red extends StatelessWidget {
  const common_crd_red({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Color(0xffECECEC).withOpacity(1), width: 1),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x48B9B9BE),
            blurRadius: 20.0,
            spreadRadius: 0,
            // offset: Offset(-20, -20,),
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/hdfcinvestment (6).png"),
              ],
            ),
          ),
          // SizedBox(
          //   height: 8.h,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HDFC AMC\nSelect AIF FOF-1",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 18.sp,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 68, bottom: 18),
                //   child:
                //       SvgPicture.asset("assets/images/Investmentdecrement.svg"),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 22, bottom: 18),
                //   child: GestureDetector(
                //     onTap: () {
                //       showModalBottomSheet(
                //         isScrollControlled: true,
                //         context: context,
                //         shape: const RoundedRectangleBorder(
                //           borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(30),
                //             topRight: Radius.circular(30),
                //           ),
                //         ),
                //         builder: (context) {
                //           return Container(
                //             margin: const EdgeInsets.symmetric(
                //                 horizontal: 16, vertical: 30),
                //             child: Column(
                //               mainAxisSize: MainAxisSize.min,
                //               children: [
                //                 SizedBox(
                //                   height: 20.h,
                //                 ),
                //                 SvgPicture.asset(
                //                     "assets/images/thankyouinvestment.svg"),
                //                 SizedBox(
                //                   height: 20,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(
                //                       left: 15, right: 11),
                //                   child: Text(
                //                     'Thank You For Selling\n           Product',
                //                     style: TextStyle(
                //                         fontFamily: 'Poppins',
                //                         fontSize: 30,
                //                         color: Color(0xff0F0C0C),
                //                         fontWeight: FontWeight.w500),
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   height: 20.h,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(
                //                       left: 40, right: 40),
                //                   child: Text(
                //                     'A FreeU Advisory Team will \n    get back to you soon.',
                //                     style: TextStyle(
                //                         fontFamily: 'Poppins',
                //                         fontSize: 20,
                //                         color: Color(0xff272424),
                //                         fontWeight: FontWeight.w300),
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   height: 30,
                //                 ),
                //               ],
                //             ),
                //           );
                //         },
                //       );
                //     },
                //     child: Text(
                //       "Sell",
                //       style: TextStyle(
                //           decoration: TextDecoration.underline,
                //           fontFamily: "Poppins",
                //           color: Color(0xff143C6D),
                //           fontSize: 18.sp),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
