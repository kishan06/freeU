import 'dart:math';
import 'package:another_flushbar/flushbar.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/Global.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Categories/cat_main_screen.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatPage.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Market/market_tab.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/ViewModel/Profile/Getprofile.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/screens/side_menu.dart';
import 'package:freeu/viewModel/Security_pin/Postpin.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
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
  TextEditingController user_pin = TextEditingController();
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

    GetProfile().GetProfileAPI();

     Future.delayed(Duration(seconds: 4), () {
      print("pin dialog shown is $pindialog");
      requestPermissions();

      // pindialog
      //     ? null
      //     : controllerEntryPoint.logedIn!
      //         ? buildPinAlertDialog()
      //         : null;

    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

 static Future<bool> requestP() async {
    bool permissionStatus;
    final deviceInfo = await DeviceInfoPlugin().androidInfo;
    if (deviceInfo.version.sdkInt! > 32) {
      permissionStatus = await Permission.photos.request().isGranted;
    } else {
      permissionStatus = await Permission.storage.request().isGranted;
    }
    return permissionStatus;
  }

  void requestPermissions() async {
    bool permissionStatus = await requestP();
    // Map<Permission, PermissionStatus> statuses = await [
    //   Permission.storage,
    //   Permission.photos
    // ].request();

    if (permissionStatus) {
      print("Permission Granted");
      // Permissions granted, proceed with your operations
    } else {
      // Permissions denied, handle accordingly
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text('Permission denied. Unable to download image.'),
      //   ),
      // );

      await Flushbar(
        message: "Permission denied. Unable to download image.",
        duration: Duration(seconds: 3),
      ).show(context);
    }
  }

  buildPinAlertDialog() {
    return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      pageBuilder: (context, animation, secondaryAnimation) {
        return WillPopScope(
          onWillPop: () => _backbuttonpressed(context),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      "Welcome back",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 25.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Use your 4 Digit Pin to easily log in!",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    // focusNode: pinFocusNode,
                    controller: user_pin,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: 'Enter PIN',
                      // focusedBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   borderSide:
                      //       BorderSide(color: Color(0xFF707070), width: 1.0),
                      // ),
                      // enabledBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   borderSide:
                      //       BorderSide(color: Color(0xFF707070), width: 1.0),
                      // ),
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF303030).withOpacity(0.3)),
                      // errorBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   borderSide: BorderSide(color: Colors.red, width: 1.0),
                      // ),
                      // focusedErrorBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   borderSide: BorderSide(color: Colors.red, width: 1.0),
                      // ),
                      errorStyle: const TextStyle(
                        fontSize: 16.0,
                      ),

                      // suffixIcon: GestureDetector(
                      //   onTap: () {
                      //     // UploadPinData();
                      //   },
                      //   child: Container(
                      //     padding: EdgeInsets.only(right: 25),
                      //     width: 10,
                      //     height: 10,
                      //     child: SvgPicture.asset(
                      //       'assets/images/nextbuttonicon.svg',
                      //     ),
                      //   ),
                      // ),
                    ),
                    maxLength: 4,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Pin is Empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  sizedBoxHeight(10.h),
                  // ProfileObj!.user!.pin == "1000"
                  // ?
                  // Text("First time user pin is 1000")
                  // : SizedBox(),

                  ProfileObj != null &&
                          ProfileObj!.user != null &&
                          ProfileObj!.user!.pin == "1000"
                      ? Text("First time user pin is 1000")
                      : SizedBox(),

                  SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: CustomNextButton(
                        text: 'GO',
                        ontap: () {
                          UploadPinData();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          // Get.toNamed("/forgotpinPindialog");
                        },
                        child: Text(
                          "Forgot PIN?",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void UploadPinData() async {
    utils.loader();
    Map<String, dynamic> updata = {
      "pin": int.parse(user_pin.text),
    };
    final data = await Securitypin().PostChecksecuritypin(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print("Pin exist");
      pindialog = true;
      Get.back();
      return utils.showToast(data.message);
    } else {
      Get.back();
      print("pin does not exist");
      return utils.showToast(data.message);
    }
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
                              20 * animation.value * pi / 180),
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
                  Navigator.pop(context);
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
