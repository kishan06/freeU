import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalpage.dart';
//import 'package:freeu/HomePage/Categories/FractionalNewdesign/Fractionalpage.dart';
import 'package:freeu/HomePage/Categories/AlternativeInvestment.dart';
 
import 'package:freeu/HomePage/Categories/High_yield/High_yieldpage.dart';

import 'package:freeu/HomePage/Categories/PeerLendingAssets/PeerMain.dart';

import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/AppBarWithNotification.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/page_animation.dart';
// import 'package:freeu/common/categoryCard.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'FractionalRealEstateProperty/PropertiesInvestment.dart';
import 'revenue_based_financing/revenue_based_main.dart';

class CategoriesMain extends StatefulWidget {
  const CategoriesMain({super.key});

  @override
  State<CategoriesMain> createState() => _CategoriesMainState();
}

class _CategoriesMainState extends State<CategoriesMain> {
  int selectIndex = 0;
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  HomePage home = const HomePage();

  List categoryData = [
    // /
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat1.png",
      "title": "Alternative Investment Funds",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat2.png",
      "title": "Fractional Real Estate",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat3.png",
      "title": "Peer- Peer lending",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat4.png",
      "title": "Invoice Discounting",
    },
    {
      "colorL": AppColors.brownL_973926,
      "colorD": AppColors.brownD_4C1D13,
      "bgImage": "assets/newImages/bgBrown.svg",
      "imageUrl": "assets/newImages/cat5.png",
      "title": "Revenue based Financing",
    },
    {
      "colorL": AppColors.pinkL_E6088B,
      "colorD": AppColors.pinkD_730446,
      "bgImage": "assets/newImages/bgPink.svg",
      "imageUrl": "assets/newImages/cat6.png",
      "title": "Lease based Financing",
    },
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat7.png",
      "title": "Clean and Green Assets",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat8.png",
      "title": "Venture Debt",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat9.png",
      "title": "Secured Debt",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat10.png",
      "title": "High Yield Finance",
    },
  ];

  // List categoryData = home

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
          }
          break;

        case 2:
          {
            Get.toNamed('/investmentmain');
          }
          break;
        case 3:
          {
            Get.toNamed('/chatpage');
          }
          break;
        case 4:
          {
            Get.toNamed('/myprofile');
          }
          break;
        default:
          {
            throw Error();
          }
      }
    });
  }

  DateTime timebackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            sizedBoxWidth(45.w),
            // IconButton(
            //   onPressed: () {
            //     _key.currentState!.openDrawer();
            //   },
            //   icon: SizedBox(
            //     height: 20.h,
            //     width: 25.w,
            //     child: SvgPicture.asset(
            //       "assets/images/menu.svg",
            //       // height: 20.h,
            //       // width: 10.w,
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            //   // color: Colors.red,
            //   // iconSize: 100.h,
            // ),

            sizedBoxWidth(5.w),
            Text(
              'Categories',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.sp,
                  // fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const Spacer(),
            OpenContainerWrappers(
              closeBuild: IconButton(
                onPressed: null,
                icon: SizedBox(
                  width: 18.w,
                  height: 25.h,
                  child: SvgPicture.asset(
                    'assets/images/notification-bell-svgrepo-com.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                // iconSize: 22,
                // color: const Color(0xFF303030),
              ),
              openBuild: const NotificationPage(),
            ),
          ],
        ),
        // backgroundColor: Color(0xFFF5F8FA),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),

      // backgroundColor: Color(0xFFF5F8FA),
      // appBar: AppBar(
      //   backgroundColor: AppColors.white,
      //   title: Row(
      //     children: [
      //       IconButton(
      //         onPressed: () {
      //           _key.currentState!.openDrawer();
      //         },
      //         icon: SizedBox(
      //           height: 20.h,
      //           width: 25.w,
      //           child: SvgPicture.asset(
      //             "assets/images/menu.svg",
      //             // height: 20.h,
      //             // width: 10.w,
      //             fit: BoxFit.fill,
      //           ),
      //         ),
      //         // color: Colors.red,
      //         // iconSize: 100.h,
      //       ),
      //       sizedBoxWidth(5.w),
      //       Text(
      //         'Categories',
      //         softWrap: true,
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //             fontFamily: 'Poppins',
      //             fontSize: 22.sp,
      //             // fontWeight: FontWeight.w400,
      //             color: Colors.black),
      //       ),
      //       Spacer(),
      //       IconButton(
      //         onPressed: () {
      //           Get.toNamed('/notificationpage');
      //         },
      //         icon: SizedBox(
      //           width: 18.w,
      //           height: 25.h,
      //           child: SvgPicture.asset(
      //             'assets/images/notification-bell-svgrepo-com.svg',
      //             fit: BoxFit.fill,
      //           ),
      //         ),
      //         // iconSize: 22,
      //         // color: const Color(0xFF303030),
      //       ),
      //     ],
      //   ),
      //   // backgroundColor: Color(0xFFF5F8FA),
      //   elevation: 0,
      //   shadowColor: Colors.black,
      //   automaticallyImplyLeading: false,
      //   titleSpacing: 0,
      // ),

      // bottomNavigationBar:
      //     CreateBottomBar(stateBottomNav, "Bottombarcategoies", context),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: GridView.builder(
          // shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: categoryData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 169 / 133,
            crossAxisCount: 2,
            crossAxisSpacing: 15.w,
            mainAxisSpacing: 15.w,
          ),
          itemBuilder: (BuildContext context, int index) {
            return OpenContainerWrappers(
              closeBuild: categoryCard(
                color1: categoryData[index]["colorL"],
                color2: categoryData[index]["colorD"],
                bgImage: categoryData[index]["bgImage"],
                image: categoryData[index]["imageUrl"],
                text: categoryData[index]["title"],
              ),
              openBuild: navigate(index),
              //  index == 0
              //     ? const AlternativeInsvestment()
              //     : index == 1
              //         ? const FractionalRealestate()
              //         : index == 9
              //             ? HighYieldFinance()
              //             : SizedBox(),
            );
          },
        ),
      ),
    );
  }

  Widget navigate(int index) {

    // if (index == 0) {
    //   // return 
    // return AlternativeInsvestment();

    // } else {
    //   return AlternativeInsvestment();
    // }
    // return AlternativeInsvestment();
    // var = page;
    switch (index) {
      case 0:
        {
         return  AlternativeInsvestment();
        }

        break;
      case 1:
        {
          return FractionalRealestate();
        }

        break;

      case 2:
        {
          return PeerMain();
        }

      break;

      case 4:
        {
          return RevenueBasedMain();
        }

      break;

       case 9:
        {
          return HighYieldFinance();
        }

        break;  

      default: {
        // Null;
          return FractionalRealestate();

      }
    }
    // return Page;
  }

  Widget categoryCard(
      {required Color color1,
      required Color color2,
      required String bgImage,
      required String image,
      required String text}) {
    return Stack(
      children: [
        Container(
          // color: ,
          // width: 169.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2]),
            borderRadius: BorderRadius.circular(10.h),
          ),
        ),
        Positioned(
          right: 0,
          child: SvgPicture.asset(
            bgImage,
            // width: 65.w,
            // height: 133.h,
          ),
        ),
        SizedBox(
          // width: 169.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  image,
                  height: 45.h,
                  width: 45.h,
                ),

                // Spacer(),

                text14White(text)
              ],
            ),
          ),
        )
      ],
    );
  }

  //  Future<bool> _backbuttonpressed(BuildContext context) async {
  //   bool exitapp = await showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Padding(
  //         padding:  EdgeInsets.all(15.w),
  //         child: AlertDialog(
  //            shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
  //         insetPadding: const EdgeInsets.symmetric(vertical: 10),
  //           title:Text(
  //           "Exit App",
  //           style: TextStyle(
  //               fontFamily: 'Studio Pro',
  //               fontWeight: FontWeight.bold,
  //               fontSize: 18.sp,
  //               color: const Color(0xff3B3F43)),
  //         ),
  //           content: SizedBox(
  //           width: MediaQuery.of(context).size.width,
  //           child: Text(
  //             "Are you sure you want to Exit App?",
  //             style: TextStyle(
  //                 fontFamily: 'Roboto',
  //                 fontSize: 16.sp,
  //                 color: const Color(0xff54595F)),
  //           ),
  //         ),
  //           actions: [
  //            InkWell(
  //             onTap: () {
  //               Get.back();
  //             },
  //             child: Text(
  //               "No",
  //               style: TextStyle(
  //                   fontFamily: "Roboto",
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 16.sp,
  //                   color: const Color(0xff000000)),
  //             ),
  //           ),
  //           sizedBoxWidth(15.sp),
  //           InkWell(
  //             onTap: () {
  //               SystemNavigator.pop();
  //             },
  //             child: Text(
  //               "Yes",
  //               style: TextStyle(
  //                   fontFamily: "Roboto",
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 16.sp,
  //                   color: const Color(0xffB90101)),
  //             ),
  //           ),
  //           sizedBoxWidth(15.sp),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  //   return exitapp ?? false;
  // }
}
