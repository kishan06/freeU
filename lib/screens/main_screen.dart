import 'dart:math';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
// import 'package:flutter/services.dart';
// import 'package:food_it_flutter/domain/user/user.dart';
// import 'package:food_it_flutter/providers_viewmodels/authentication_provider.dart';
// import 'package:food_it_flutter/ui/screens/favourites/favourite_screen.dart';
// import 'package:food_it_flutter/ui/screens/profile/profile_screen.dart';
// import 'package:food_it_flutter/ui/screens/restaurant/home_screen.dart';
// import 'package:food_it_flutter/ui/screens/search/search_screen.dart';
// import 'package:food_it_flutter/ui/theme/colors.dart';
// import 'package:food_it_flutter/ui/utils/rive_utils.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Investments/InvestmentMain.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/new_bottom_bar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/screens/side_menu.dart';
import 'package:get/get.dart';

import '../HomePage/Chats/Screens/ChatPage.dart';
// import 'package:provider/provider.dart';
// import 'package:rive/rive.dart';
// import 'components/btm_nav_item.dart';
// import 'components/menu_btn.dart';
// import 'components/rive_models/menu.dart';
// import 'components/side_bar.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key, 
  // required this.sideBarIndex
  }) : super(key: key);
  // int sideBarIndex = 0;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  var currentIndex = 0;
  var reverse = false;

  bool isSideBarOpen = false;
  var _selectedIndex = 0.obs;


  // Menu selectedBottomNav = bottomNavItems.first;

  // late SMIBool isMenuOpenInput;

  // void updateSelectedBtmNav(Menu menu) {
  //   if (selectedBottomNav != menu) {
  //     setState(() {
  //       selectedBottomNav = menu;
  //     });
  //   }
  // }

  late AnimationController _animationController;
  late Animation<double> scaleAnimation;
  late Animation<double> animation;

  @override
  void initState() {
    // setState((){
    //   currentIndex = widget.sideBarIndex;
    //   selectedBottomNav = bottomNavItems[currentIndex];
    // });
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(
            () {
          setState(() {});
        },
      );
    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var authProvider = Provider.of<AuthenticationProvider>(context);
    // var currentUser = authProvider.user;
    // var screens = [
    //   const HomeScreen(),
    //   SearchScreen(),
    //   currentUser != null ? FavouriteScreen(user: currentUser) : Container(),
    //   currentUser != null ? ProfileScreen(user: currentUser) : Container(),
    // ];
    var screens = [
      HomePage(),
      CategoriesMain(),
      InvestmentMain(),
      // Container(),
      ChatPage(),
      // myProfile()
      Profile()
    ];
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.blue143C6D,
      body: Stack(
        children: [
          isSideBarOpen ? Container() :
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            child: PageTransitionSwitcher(
              duration: const Duration(milliseconds: 750),
              reverse: reverse,
              transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
                return SharedAxisTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
              child: Obx(() => screens[_selectedIndex.value],)
              // screens[_selectedIndex.value],
              // screens[currentIndex],
              // child: HomePage(),
              // child: CreateBottomBar(),

            ),
          ),
          AnimatedPositioned(
            width: 288,
            height: MediaQuery.of(context).size.height,
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            left: isSideBarOpen ? 0 : -288,
            top: 0,
            child: SideMenu(),
            // child: SideBar(
            //   currentIndex: currentIndex,
            //   press: (){
            //     setState((){

            //     });
            //   },

            // ),
          ),
          currentIndex == 0 ?
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(
                  1 * animation.value - 30 * (animation.value) * pi / 180),
            child: Transform.translate(
              offset: Offset(animation.value * 265, 0),
              child: Transform.scale(
                scale: scaleAnimation.value,
                child:  ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                  // child: HomeScreen(),
                  // child: HomePage(),
                  child: Obx(() => screens[_selectedIndex.value]),
                ),
              ),
            ),
          ) : SizedBox.shrink(),
          currentIndex == 0 ?
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            left: isSideBarOpen ? 0 : 0,
            top: 35.h,
            child: IconButton(
              onPressed: () {
                // isMenuOpenInput.value = !isMenuOpenInput.value;

                if (_animationController.value == 0) {
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                }

                setState(
                      () {
                    isSideBarOpen = !isSideBarOpen;
                  },
                );
                // _key.currentState!.openDrawer();
              },
              icon: !isSideBarOpen ? SizedBox(
                height: 20.h,
                width: 25.w,
                child: SvgPicture.asset("assets/images/menu.svg",
                  // height: 20.h,
                  // width: 10.w,
                  fit: BoxFit.fill,
                ),
              ): Icon(Icons.cancel_outlined,
                size: 25.w,
                color: AppColors.white,
              ),
              // color: Colors.red,
              // iconSize: 100.h,
            ),
            // MenuBtn(
            //   press: () {
            //     isMenuOpenInput.value = !isMenuOpenInput.value;

            //     if (_animationController.value == 0) {
            //       _animationController.forward();
            //     } else {
            //       _animationController.reverse();
            //     }

            //     setState(
            //           () {
            //         isSideBarOpen = !isSideBarOpen;
            //       },
            //     );
            //   },
            //   // riveOnInit: (artboard) {
            //   //   final controller = StateMachineController.fromArtboard(
            //   //       artboard, "State Machine");

            //   //   artboard.addController(controller!);

            //   //   isMenuOpenInput =
            //   //   controller.findInput<bool>("isOpen") as SMIBool;
            //   //   isMenuOpenInput.value = true;
            //   // },
            // ),
          ): Container(),
        ],
      ),
      bottomNavigationBar: Obx(
            () => !isSideBarOpen ? BottomNavigationBar(
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
            currentIndex: _selectedIndex.value,

            onTap: (int index) {
              // if (index != 2) {
                _selectedIndex.value = index;
              // }
            },
            ): Container(),
          )
    

      // bottomNavigationBar: Transform.translate(
      //   offset: Offset(0, 100 * animation.value),
      //   child: SafeArea(
      //     child: Container(
      //       padding:
      //           const EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 12),
      //       margin: const EdgeInsets.symmetric(horizontal: 24),
      //       decoration: BoxDecoration(
      //         color: primary.withOpacity(0.8),
      //         borderRadius: const BorderRadius.all(Radius.circular(24)),
      //         boxShadow: [
      //           BoxShadow(
      //             color: primary.withOpacity(0.3),
      //             offset: const Offset(0, 20),
      //             blurRadius: 20,
      //           ),
      //         ],
      //       ),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: List.generate(
      //           bottomNavItems.length,
      //           (index) {
      //             Menu navBar = bottomNavItems[index];
      //             return BtmNavItem(
      //               navBar: navBar,
      //               press: () {
      //                 RiveUtils.changeSMIBoolState(navBar.rive.status!);
      //                 updateSelectedBtmNav(navBar);
      //                 setState(() {
      //                   reverse = index < currentIndex;
      //                   currentIndex = index;
      //                 });
      //               },
      //               riveOnInit: (artboard) {
      //                 navBar.rive.status = RiveUtils.getRiveInput(artboard,
      //                     stateMachineName: navBar.rive.stateMachineName);
      //                 print(navBar.rive.stateMachineName);
      //               },
      //               selectedNav: selectedBottomNav,
      //             );
      //           },
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    
    );
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
