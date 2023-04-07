// part 'HomePage.dart';
// part 'HomePage.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatPage.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Investments/InvestmentMain.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/screens/side_menu.dart';
import 'package:get/get.dart';

// part 'HomePage.dart';
var selectedIndex = 0.obs;


class EntryPoint extends StatefulWidget {
  // int index;
  EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> with SingleTickerProviderStateMixin {

  // bool isSideBarClosed
  bool isSideMenuClosed = true;
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  // var selectedIndex = 0.obs;
  var screens = [
    HomePage(),
    CategoriesMain(),
    InvestmentMain(),
    ChatPage(),
    Profile()
  ];

  @override
  void initState() {
    selectedIndex.value = Get.arguments;
    print(selectedIndex);
    _animationController = AnimationController(vsync: this,
      duration: Duration(milliseconds: 200)
    )..addListener(() {
      setState(() {
        
      });
    });

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn)
    );

    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn)
    );
    //
    // TODO: implement initState
    super.initState();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }


  // late SMI
  // late 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.blue143C6D,
          resizeToAvoidBottomInset: false,
          extendBody: true,
          body: Stack(
            children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                curve: Curves.fastOutSlowIn,
                left: isSideMenuClosed ? -300.w :0,
                width: 300.w,
                height: MediaQuery.of(context).size.height,
                child: SideBar()
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(animation.value - 30 * animation.value * pi / 180),
                child: Transform.translate(
                  offset: Offset(animation.value * 300.w, 0),
                  child: Transform.scale(
                    scale: scaleAnimation.value,
                    child: ClipRRect(
                      // bord
                      borderRadius: BorderRadius.all(Radius.circular(isSideMenuClosed ? 0 : 24)),
                      child: Obx(() => screens[selectedIndex.value])
                      // screens[selectedIndex.value]
                      // HomePage()
                    )
                  )
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                curve: Curves.fastOutSlowIn,
                // left: isSideMenuClosed ? 0 ? 220,
                top: 5.h,
                child: IconButton(
                  onPressed: () {
                    if (isSideMenuClosed) {
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                    }
                    setState(() {
              
                      isSideMenuClosed = !isSideMenuClosed;
                    });
                  },
                  icon: isSideMenuClosed ? SizedBox(
                    height: 20.h,
                    width: 25.w,
                    child: SvgPicture.asset("assets/images/menu.svg",
                      // height: 20.h,
                      // width: 10.w,
                      fit: BoxFit.fill,
                    ),
                  ) : Icon(Icons.cancel_outlined,
                    size: 25.w,
                    color: AppColors.white,
                  ),
                  // color: Colors.red,
                  // iconSize: 100.h,
                ),
              ),
            ],
          ),
          bottomNavigationBar: isSideMenuClosed ? Obx(
            () => BottomNavigationBar(
              // height
            // fixedColor: AppColors.transparent,
            // fixedColor: Colors.transparent,
            
            selectedLabelStyle: TextStyle(fontSize: 12.sp),
            unselectedLabelStyle: TextStyle(fontSize: 12.sp),
            iconSize: 20.h,
            selectedItemColor: AppColors.blue143C6D,
            unselectedItemColor: AppColors.black,
            elevation: 0,
            // labe
            backgroundColor: AppColors.white,
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
            currentIndex: selectedIndex.value,
          
            onTap: (int index) {
              // if (index != 2) {
                selectedIndex.value = index;
              // }
            },
            ),
          ): SizedBox()
        
        ),
      ),
    );

    // return const Placeholder();
  }

  Widget activeIcon(String imagePath) {
    return Column(children: [
      SvgPicture.asset(
        imagePath,
        height: 20.h,
        width: 20.h,
        // color: AppColors.blue143C6D,
        // colorFilter: AppColors.greyD3B3F43,
      ),
      // sizedBoxHeight(5.h),
      // CircleAvatar(
      //   radius: 5.h,
      //   backgroundColor: AppColors.blue143C6D.withOpacity(0.5),
      // )
    ]);
  }

  Widget inactiveIcon(String imagePath) {
    return Column(children: [
      SvgPicture.asset(
        imagePath,
        height: 20.h,
        width: 20.h,
        // color: AppColors.black,
      ),
      // sizedBoxHeight(2.h),
      // CircleAvatar(
      //   radius: 5.h,
      //   backgroundColor: Colors.transparent,
      // )
    ]);
  }

}