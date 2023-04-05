import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatPage.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Investments/InvestmentMain.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/profile/profile.dart';
import 'package:get/get.dart';


class BottomBar extends StatefulWidget {


  var selectedIndex;
  BottomBar({this.selectedIndex=0});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _selectedIndex = 0.obs;
  static final List<Widget> _widgetOptions = <Widget>[

     HomePage(),
     CategoriesMain(),
    InvestmentMain(),
    // Container(),
    ChatPage(),
    // myProfile()
    Profile()
  ];
  bool _canPop = false;
  // DateTime timebackPressed = DateTime.now();

  @override

  void initState(){
    super.initState();
    _selectedIndex.value = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        await dialoBox();
        return _canPop;
        // if (_canPop) {
        //   return true;
        // } else {
        //   await showDialog(
        //     context: context,
        // builder: (context) => exitDialog()
        //   );
        //   print("infalse");
        //   print(_canPop);
        //   return _canPop;
        // }
      },
      child: Scaffold(
          //backgroundColor: Colors.transparent,
          extendBody: true,
          //    backgroundColor: AppColors.white,
          body: SafeArea(
              bottom: false,
              child: Obx(() => _widgetOptions.elementAt(_selectedIndex.value))),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
            // fixedColor: AppColors.transparent,
            // fixedColor: Colors.transparent,

            selectedLabelStyle: TextStyle(fontSize: 0),
            unselectedLabelStyle: TextStyle(fontSize: 0),
            iconSize: 30.h,
            selectedItemColor: AppColors.blue143C6D,
            unselectedItemColor: AppColors.black,
            elevation: 0,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: activeIcon("assets/images/home-svgrepo-com (1).svg"),
              icon: inactiveIcon("assets/images/home-svgrepo-com.svg"),
              // icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.explore),
              activeIcon: activeIcon("assets/images/category-alt-svgrepo-com (1).svg"),
              icon: inactiveIcon("assets/images/category-alt-svgrepo-com.svg"),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              activeIcon: activeIcon("assets/images/Group 51109.svg"),
              icon: inactiveIcon("assets/images/money-dollar-coin-svgrepo-com.svg"),

              // icon: Icon(Icons.circle, size: 0),
              label: "Investment",
            ),
            BottomNavigationBarItem(
              activeIcon: activeIcon("assets/images/chat-left-3-svgrepo-com (2) (1).svg"),
              icon: inactiveIcon("assets/images/chat-left-3-svgrepo-com (2).svg"),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              activeIcon: activeIcon("assets/images/Path 30132.svg"),
              icon: inactiveIcon("assets/images/profile.svg"),
              label: "Profile",
            ),
            ],
            currentIndex: _selectedIndex.value,

            onTap: (int index) {
              // if (index != 2) {
                _selectedIndex.value = index;
              // }
            },
            ),
          )),
    
    );
  }

  dialoBox() {
    return showDialog(
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.all(15.w),
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          insetPadding: const EdgeInsets.symmetric(vertical: 10),
          title: Text(
            "Exit App",
            style: TextStyle(
                fontFamily: 'Studio Pro',
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: const Color(0xff3B3F43)),
          ),
          content: SizedBox(
            // margin: EdgeInsets.symmetric(horizontal: 10.w),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Are you sure you want to Exit App?",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16.sp,
                  color: const Color(0xff54595F)),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Text(
                "No",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xff000000)),
              ),
            ),
            sizedBoxWidth(15.sp),
            InkWell(
              onTap: () {
                SystemNavigator.pop();
                // Get.toNamed("/login");
                // Get.back();
                // _canPop = true;
              },
              child: Text(
                "Yes",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xffB90101)),
              ),
            ),
            sizedBoxWidth(15.sp),
          ],
        ),
      ),
    );
  }

  // Widget exitDialog() {
  //   return AlertDialog(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  //     contentPadding: const EdgeInsets.all(0),
  //     content: Stack(
  //       children: [
  //         Stack(
  //           children: [
  //             Stack(
  //               children: [
  //                 ColorFiltered(
  //                     colorFilter: ColorFilter.mode(
  //                       Colors.black.withOpacity(0.15),
  //                       BlendMode.srcOver,
  //                     ),
  //                     child: Image.asset(
  //                       "assets/hooray.png",
  //                       // height: 364.h/
  //                     )),
  //                 Positioned(
  //                   // top: 0,
  //                   bottom: 0,
  //                   left: 0,
  //                   right: 0, height: 247.h,
  //                   child: Container(
  //                     decoration: const BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.only(
  //                         topLeft: Radius.circular(10),
  //                         topRight: Radius.circular(10),
  //                         bottomLeft: Radius.circular(20),
  //                         bottomRight: Radius.circular(20),
  //                       ),
  //                     ),
  //                     // height: 247.h,
  //                     child: Column(
  //                       children: [
  //                         sizedBoxHeight(83.h),
  //                         Text(
  //                           "Exit App",
  //                           style: TextStyle(
  //                               color: const Color(0xff3B3F43),
  //                               fontFamily: "Studio Pro",
  //                               fontWeight: FontWeight.bold,
  //                               fontSize: 26.sp),
  //                         ),
  //                         sizedBoxHeight(16.h),
  //                         Text(
  //                           "Are you sure you want to exit?",
  //                           style: TextStyle(
  //                               fontFamily: "Studio Pro",
  //                               fontWeight: FontWeight.w500,
  //                               fontSize: 18.sp),
  //                         ),
  //                         // sizedBoxHeight(10.h),
  //                         Spacer(),

  //                         Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                           children: [
  //                             SizedBox(
  //                               width: 100.w,
  //                               child: followButton("No", onPressed: () {
  //                                 Get.back();
  //                               }),
  //                             ),
  //                             SizedBox(
  //                               width: 100.w,
  //                               child: followButton("Yes", onPressed: () {
  //                                 _canPop = true;
  //                                 Get.back();
  //                                 // return
  //                               }),
  //                             ),
  //                           ],
  //                         ),

  //                         Spacer(),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //                 Positioned(
  //                   top: 0,
  //                   left: 0,
  //                   right: 0,
  //                   bottom: 100,
  //                   child: Image.asset(
  //                     "assets/hooray_circle.png",
  //                     scale: 1.2,
  //                     fit: BoxFit.none,
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget bottomBarCont() {
  //   return Expanded(
  //       child: Container(
  //     // width: 230,
  //     // height: 90.h,
  //     clipBehavior: Clip.antiAlias,
  //     decoration: BoxDecoration(),
  //     child: Container(
  //       height: 80.h,
  //       margin: EdgeInsets.only(top: 10.h), // ***
  //       decoration: BoxDecoration(
  //         color: AppColors.white,
  //         boxShadow: [
  //           BoxShadow(
  //             color: AppColors.greyL979797,
  //             blurRadius: 5.h,
  //             spreadRadius: 2.h,
  //           ),
  //         ],
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(35.h), topRight: Radius.circular(35.h)),
  //       ),
  //     ),
  //   )

  //       // Container(
  //       //   // width: 80.w,
  //       //   // width: double.infinity,
  //       //   height: 80.h,
  //       //   // decoration: BoxDecoration(
  //       //   //   boxShadow: [
  //       //   //     BoxShadow(
  //       //   //       color: AppColors.greyL979797,
  //       //   //       blurRadius: 10.h,
  //       //   //       spreadRadius: 2.h,
  //       //   //       offset: Offset(0, -5)

  //       //   //     )
  //       //   //   ],
  //       //   //   // borderRadius: BorderRadius.circular(5.h),
  //       //   //   borderRadius: BorderRadius.only(
  //       //   //     topLeft: Radius.circular(35.h),
  //       //   //     topRight: Radius.circular(35.h)
  //       //   //   ),

  //       //   //   color: AppColors.black
  //       //   // ),
  //       //   child: Container(
  //       //     margin: EdgeInsets.only(top: 5.h),
  //       //    // decoration: BoxDecoration(
  //       //   //   boxShadow: [
  //       //   //     BoxShadow(
  //       //   //       color: AppColors.greyL979797,
  //       //   //       blurRadius: 10.h,
  //       //   //       spreadRadius: 2.h,
  //       //   //       offset: Offset(0, -5)

  //       //   //     )
  //       //   //   ],
  //       //   //   // borderRadius: BorderRadius.circular(5.h),
  //       //   //   borderRadius: BorderRadius.only(
  //       //   //     topLeft: Radius.circular(35.h),
  //       //   //     topRight: Radius.circular(35.h)
  //       //   //   ),

  //       //   //   color: AppColors.black
  //       //   // ),,
  //       //   ),

  //       // ),

  //       );
  // }

  Widget activeIcon(String imagePath) {
    return Column(children: [
      SvgPicture.asset(
        imagePath,
        height: 35.h,
        width: 35.h,
        color: AppColors.blue143C6D,
        // colorFilter: AppColors.greyD3B3F43,
      ),
      sizedBoxHeight(5.h),
      CircleAvatar(
        radius: 5.h,
        backgroundColor: AppColors.blue143C6D.withOpacity(0.5),
      )
    ]);
  }

  Widget inactiveIcon(String imagePath) {
    return Column(children: [
      SvgPicture.asset(
        imagePath,
        height: 35.h,
        width: 35.h,
        color: AppColors.black,
      ),
      sizedBoxHeight(2.h),
      CircleAvatar(
        radius: 5.h,
        backgroundColor: Colors.transparent,
      )
    ]);
  }

}
