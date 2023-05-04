import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/screens/entry_point.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

String? language;

class SideBar extends StatefulWidget {
  const SideBar({
    super.key,
    // required this.press, required this.currentIndex
  });

  @override
  State<SideBar> createState() => _SideBarState();

  // final VoidCallback press;
  // final int currentIndex;
}

class _SideBarState extends State<SideBar> {
  final ProfileImageController editProfileImage =
      Get.put(ProfileImageController());

  final controllerEntryPoint = Get.put(EntryPointController());

  List sideBarData = [
    {"imagePath": "assets/logos/side1.png", "text": "kyc"},
    {"imagePath": "assets/logos/side2.png", "text": "Security"},
    {"imagePath": "assets/logos/side3.png", "text": "How to Invest"},
    // {"imagePath": "assets/logos/side4.png", "text": "Update Risk Profile"},
    {"imagePath": "assets/logos/side5.png", "text": "About FreeU"},
    {"imagePath": "assets/logos/side6.png", "text": "Our Insights"},
    {"imagePath": "assets/logos/side7.png", "text": "FAQ's"},
    {"imagePath": "assets/logos/side8.png", "text": "Privacy Policy"},
    {"imagePath": "assets/logos/side9.png", "text": "Terms and condition"},
    {"imagePath": "assets/logos/side10.png", "text": "Contact Us"},
    {"imagePath": "assets/logos/side11.png", "text": "Logout"},
  ];
  // Menu selectedSideMenu = sidebarMenus.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 300.w,
          height: double.infinity,
          decoration: const BoxDecoration(color: AppColors.blue143C6D
              // borderRadius: BorderRadius.all(
              //   Radius.circular(30),
              // ),
              ),
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.w, 10.h, 45.w, 10.h),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  sizedBoxHeight(60.h),
                  InkWell(onTap: () {
                    // Get.toNamed("/userlogged");
                  }, child: GetBuilder<EntryPointController>(builder: (_) {
                    return controllerEntryPoint.logedIn!
                        ? InkWell(
                            onTap: () {
                              Get.toNamed("/userlogged");
                            },
                            child: Row(
                              children: [
                                editProfileImage.profilePicPath.value != ''
                                    ? ClipOval(
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(25.r),
                                          child: Image(
                                            image: FileImage(File(
                                                editProfileImage
                                                    .profilePicPath.value)),
                                            fit: BoxFit.cover,
                                            width: 50.w,
                                            height: 50.h,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 50.w,
                                        width: 50.w,
                                        child:
                                            // ClipRRect(
                                            //   // borderRadius: BorderRadius.circular(100),
                                            //   // child: Image.network("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",fit: BoxFit.fill,)),
                                            ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.asset(
                                            'assets/images/profie.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),

                                sizedBoxWidth(15.w),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text16White(
                                      nameValue == null || nameValue!.isEmpty
                                          ? 'Kartikey Adani'
                                          : '$nameValue $lastNameValue',
                                    ),
                                    text14White("Investor".tr)
                                  ],
                                ),

                                Spacer(),

                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 20.w,
                                  color: AppColors.white,
                                )

                                // SizedBox(
                                //   width: 5,
                                // ),
                                // Text(
                                //   "Kartikey Adani",
                                //   style: TextStyle(
                                //     fontSize: 15.sm,
                                //   ),
                                // ),
                              ],
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              Get.toNamed("/login");
                            },
                            child: Row(
                              children: [
                                editProfileImage.profilePicPath.value != ''
                                    ? ClipOval(
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(25.r),
                                          child: Image(
                                            image: FileImage(File(
                                                editProfileImage
                                                    .profilePicPath.value)),
                                            fit: BoxFit.cover,
                                            width: 50.w,
                                            height: 50.h,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 50.w,
                                        width: 50.w,
                                        child:
                                            // ClipRRect(
                                            //   borderRadius: BorderRadius.circular(100),
                                            //   child: Image.network("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",fit: BoxFit.fill,)),
                                            ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.asset(
                                            'assets/images/profie.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),

                                sizedBoxWidth(15.w),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text16White(
                                      nameValue == null || nameValue!.isEmpty
                                          ? 'Guest'.tr
                                          : '$nameValue $lastNameValue',
                                    ),
                                    text14White("Sign In/Sign up".tr)
                                  ],
                                ),

                                Spacer(),

                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 20.w,
                                  color: AppColors.white,
                                )

                                // SizedBox(
                                //   width: 5,
                                // ),
                                // Text(
                                //   "Kartikey Adani",
                                //   style: TextStyle(
                                //     fontSize: 15.sm,
                                //   ),
                                // ),
                              ],
                            ),
                          );
                  })
                      // Row(
                      //   children: [
                      //     editProfileImage.profilePicPath.value != ''
                      //         ? ClipOval(
                      //             child: SizedBox.fromSize(
                      //               size: Size.fromRadius(25.r),
                      //               child: Image(
                      //                 image: FileImage(File(
                      //                     editProfileImage.profilePicPath.value)),
                      //                 fit: BoxFit.cover,
                      //                 width: 50.w,
                      //                 height: 50.h,
                      //               ),
                      //             ),
                      //           )
                      //         : SizedBox(
                      //             height: 50.w,
                      //             width: 50.w,
                      //             child: Image.asset(
                      //               'assets/images/avatar.png',
                      //               fit: BoxFit.fill,
                      //             ),
                      //           ),

                      //     sizedBoxWidth(15.w),

                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         text16White(
                      //           nameValue == null || nameValue!.isEmpty
                      //               ? 'Kartikey Adani'
                      //               : '$nameValue $lastNameValue',
                      //         ),
                      //         text14White("Investor")
                      //       ],
                      //     ),

                      //     Spacer(),

                      //     Icon(
                      //       Icons.arrow_forward_ios_outlined,
                      //       size: 20.w,
                      //       color: AppColors.white,
                      //     )

                      //     // SizedBox(
                      //     //   width: 5,
                      //     // ),
                      //     // Text(
                      //     //   "Kartikey Adani",
                      //     //   style: TextStyle(
                      //     //     fontSize: 15.sm,
                      //     //   ),
                      //     // ),
                      //   ],
                      // ),

                      ),
                  // StreamBuilder<bool>(
                  //   stream: null,
                  //   builder: (context, snapshot) {
                  // return

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: sideBarData.length,
                    itemBuilder: (_, index) {
                      return sideBarTile(
                        image: sideBarData[index]["imagePath"],
                        text: sideBarData[index]["text"],
                        onTap: () {
                          navigateTo(index, context);
                        },
                      );
                    },
                  ),
                  //   },
                  // ),
                  sizedBoxHeight(15.h),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Language'.tr),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                ),
                                Center(
                                  child: Text(
                                    'Select Language'.tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17.sp,
                                        color: const Color(0xFF444444)),
                                  ),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          var locale = const Locale('en', 'US');
                                          Get.updateLocale(locale);
                                          language = 'English';
                                        });
                                        Get.back();
                                      },
                                      child: Text('English'.tr)),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 50.h,
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            var locale =
                                                const Locale('hi', 'IN');
                                            Get.updateLocale(locale);
                                            language = 'हिंदी';
                                          });
                                          Get.back();
                                        },
                                        child: Text(
                                          "Hindi".tr,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Text(
                          'Language'.tr,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        sizedBoxHeight(5.h),
                        Text(
                          language == null ? 'English'.tr : '$language',
                          style: const TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void navigateTo(int index, BuildContext context) {
  switch (index) {
    case 0:
      {
        Get.toNamed("/kyc1");
      }
      break;

    case 1:
      {
        Get.toNamed("/security");
      }
      break;

    case 2:
      {
        Get.toNamed("/howtoinvest");
      }
      break;

    // case 3:
    //   {
    //     Get.toNamed("/updaterisk");
    //   }
    //   break;

    case 3:
      {
        Get.toNamed("/about");
      }
      break;

    case 4:
      {
        Get.toNamed("/insights");
      }
      break;

    case 5:
      {
        Get.toNamed("/faqs");
      }
      break;

    case 6:
      {
        Get.toNamed("/privacypolicy");
      }
      break;

    case 7:
      {
        Get.toNamed("/termsandconditions");
      }
      break;

    case 8:
      {
        Get.toNamed("/contactus");
      }
      break;

    case 9:
      {
        // logoutDailog();
        logoutDailog(context);

        // Get.toNamed("/security");
      }
      break;

    default:
      {
        null;
      }
  }
}

Future<dynamic> logoutDailog(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    builder: (context) {
      return Container(
        color: Color(0xFFFEFEFE),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30.h,
            ),
            // Center(
            //   child: Text(
            //     'Log Out?',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontFamily: 'Poppins',
            //         fontSize: 20.sm,
            //         color: Colors.black),
            //   ),
            // ),
            // SizedBox(
            //   height: 10.h,
            // ),
            Center(
              child: Text(
                'Loguot_Dialogue'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.sm, color: Color(0xFF444444)),
              ),
            ),
            SizedBox(
              height: 37.h,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: CustomNextButton(
                    text: "Logout".tr,
                    ontap: () async {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      await prefs.setBool('LogedIn', false);

                      Get.offAll(Login());
                    },
                  )),
            ),
            SizedBox(
              height: 27.h,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: GestureDetector(
                onTap: () {
                  print("going to homepage");
                  //Get.off(HomePage());
                  Navigator.pop(context);
                  // Get.toNamed("/homepage");
                },
                child: Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: const BoxDecoration(
                    // borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xFFffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0, // soften the shadow
                        spreadRadius: 0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Cancel".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sm,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

class sideBarTile extends StatefulWidget {
  String image;
  String text;
  void Function()? onTap;

  sideBarTile({
    required this.image,
    required this.text,
    this.onTap,
    super.key,
  });

  @override
  State<sideBarTile> createState() => _sideBarTileState();
}

class _sideBarTileState extends State<sideBarTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 0.25.h,
          color: AppColors.white,
        ),
        InkWell(
          onTap: widget.onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: Row(
              children: [
                sizedBoxWidth(2.w),
                SizedBox(
                  height: 30.h,
                  width: 30.h,
                  child: Image.asset(
                    widget.image.tr,
                    // height: ,
                    color: AppColors.white,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                text16White(widget.text.tr)
              ],
            ),
          ),
        )
      ],
    );
  }
}
