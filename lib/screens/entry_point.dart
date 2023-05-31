import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Categories/cat_main_screen.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatPage.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Market/market_tab.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/screens/side_menu.dart';
import 'package:get/get.dart';
import '../HomePage/Investments/new_investment.dart';

var selectedIndex = 0;

class EntryPoint extends StatefulWidget {
  EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint>
    with SingleTickerProviderStateMixin {
  bool isSideMenuClosed = true;
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  late bool logedIn;
  final controllerEntryPoint = Get.put(EntryPointController());
  var screens = [
    const HomePage(),
    // const CategoriesMain(),
    const CatMainScreen(),
    const NewInvestment(),
    const ChatPage(),
    const MarketTab(),
  ];

  @override
  void initState() {
    super.initState();
    controllerEntryPoint.checkLogin();
    selectedIndex = Get.arguments ?? 0;
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));

    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // late SMI
  // late
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backbuttonpressed(context),
      child: Container(
        color: AppColors.white,
        child: SafeArea(child: GetBuilder<EntryPointController>(builder: (_) {
          return controllerEntryPoint.isLoading!
              ? const SizedBox()
              : Scaffold(
                  backgroundColor: AppColors.blue143C6D,
                  resizeToAvoidBottomInset: false,
                  extendBody: true,
                  body: Stack(
                    children: [
                      AnimatedPositioned(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.fastOutSlowIn,
                          left: isSideMenuClosed ? -300.w : 0,
                          width: 300.w,
                          height: MediaQuery.of(context).size.height,
                          child: const SideBar()),
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(animation.value -
                              30 * animation.value * pi / 180),
                        child: Transform.translate(
                          offset: Offset(animation.value * 300.w, 0),
                          child: Transform.scale(
                            scale: scaleAnimation.value,
                            child: ClipRRect(
                                // bord
                                borderRadius: BorderRadius.all(
                                    Radius.circular(isSideMenuClosed ? 0 : 24)),
                                child: screens[selectedIndex]),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.fastOutSlowIn,
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
                          icon: isSideMenuClosed
                              ? SizedBox(
                                  height: 25.h,
                                  // width: 25.w,
                                  child: SvgPicture.asset(
                                    "assets/images/menu.svg",
                                    // height: 20.h,
                                    // width: 10.w,
                                    fit: BoxFit.contain,
                                  ),
                                )
                              : Icon(
                                  Icons.cancel_outlined,
                                  size: 25.w,
                                  color: AppColors.white,
                                ),
                        ),
                      ),
                    ],
                  ),
                  bottomNavigationBar: isSideMenuClosed
                      ? BottomNavigationBar(
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
                              activeIcon: activeIcon(
                                  "assets/images/home-svgrepo-com (1).svg"),
                              icon: inactiveIcon(
                                  "assets/images/home-svgrepo-com.svg"),
                              label: "Home",
                            ),
                            BottomNavigationBarItem(
                              activeIcon: activeIcon(
                                  "assets/images/category-alt-svgrepo-com (1).svg"),
                              icon: inactiveIcon(
                                  "assets/images/category-alt-svgrepo-com.svg"),
                              label: "Categories",
                            ),
                            BottomNavigationBarItem(
                              activeIcon: CircleAvatar(
                                radius: 16.r,
                                backgroundColor: Color(0xff143C6D29),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/Group 51330.svg",
                                        height: 20.h),
                                  ],
                                ),
                              ),
                              icon: inactiveIcon(
                                  "assets/images/money-dollar-coin-svgrepo-com.svg"),
                              label: "Investment",
                            ),
                            BottomNavigationBarItem(
                              activeIcon: activeIcon(
                                  "assets/images/chat-left-3-svgrepo-com (2) (1).svg"),
                              icon: inactiveIcon(
                                  "assets/images/chat-left-3-svgrepo-com (2).svg"),
                              label: "Chat",
                            ),
                            BottomNavigationBarItem(
                              activeIcon: activeIcon("assets/logos/market.svg"),
                              icon:
                                  inactiveIcon("assets/logos/marketBlank.svg"),
                              label: "Market",
                            ),
                          ],
                          currentIndex: selectedIndex,

                          onTap: (int index) {
                            selectedIndex = index;
                            setState(() {});
                          },
                        )
                      : const SizedBox());
        })),
      ),
    );
  }

  Future<bool> _backbuttonpressed(BuildContext context) async {
    bool? exitapp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(15.w),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
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
        );
      },
    );
    return exitapp ?? false;
  }

  Widget activeIcon(String imagePath) {
    return CircleAvatar(
      radius: 16.r,
      backgroundColor: Color(0xff143C6D29),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          imagePath,
          height: 20.h,
          color: AppColors.blue143C6D,
        ),
      ]),
    );
  }

  Widget inactiveIcon(String imagePath) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset(
        imagePath,
        height: 20.h,
      ),
    ]);
  }
}
