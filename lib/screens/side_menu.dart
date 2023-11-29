import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Global.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/viewModel/Profile/Getprofile.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    super.key,
  });

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final ProfileImageController editProfileImage =
      Get.put(ProfileImageController());

  final controllerEntryPoint = Get.put(EntryPointController());

  Future<void> _logoutstate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('name');
  }

  List sideBarData = [
    {"imagePath": "assets/logos/side1.png", "text": "KYC"},
    {"imagePath": "assets/logos/side2.png", "text": "Security"},
    {"imagePath": "assets/logos/side3.png", "text": "How to Invest"},
    {"imagePath": "assets/logos/side5.png", "text": "About FreeU"},
    {"imagePath": "assets/logos/side6.png", "text": "Our Insights"},
    {"imagePath": "assets/logos/side7.png", "text": "FAQ's"},
    {"imagePath": "assets/logos/side8.png", "text": "Privacy Policy"},
    {"imagePath": "assets/logos/side9.png", "text": "Terms and condition"},
    {"imagePath": "assets/logos/side10.png", "text": "Contact Us"},
    // {"imagePath": "assets/logos/side11.png", "text": "Logout"},
  ];

  Future? myfuture;

  @override
  void initState() {
    super.initState();
    myfuture = GetProfile().GetProfileAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controllerEntryPoint.logedIn!
          ? FutureBuilder(
              future: myfuture,
              builder: (ctx, snapshot) {
                if (snapshot.data == null) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Center(child: CircularProgressIndicator())],
                  );
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error} occured',
                        style: TextStyle(fontSize: 18.spMin),
                      ),
                    );
                  }
                }
                return _buildBody();
              },
            )
          : _buildBody(),
      // SafeArea(
      //   child: Container(
      //     width: 300.w,
      //     height: double.infinity,
      //     decoration: const BoxDecoration(color: AppColors.blue143C6D),
      //     child: DefaultTextStyle(
      //       style: const TextStyle(color: Colors.white),
      //       child: Padding(
      //         padding: EdgeInsets.fromLTRB(16.w, 10.h, 45.w, 10.h),
      //         child: Column(
      //           children: [
      //             sizedBoxHeight(60.h),
      //             InkWell(
      //                 onTap: () {},
      //                 child: GetBuilder<EntryPointController>(builder: (_) {
      //                   return controllerEntryPoint.logedIn!
      //                       ? InkWell(
      //                           onTap: () async {
      //                             final result =
      //                                 await Get.toNamed("/userlogged");
      //                             print("result is $result");
      //                             if (result) {
      //                               setState(() {});
      //                             }
      //                           },
      //                           child: Row(
      //                             children: [
      //                               ProfileObj?.user?.profileImage != ''
      //                                   ? ClipOval(
      //                                       child: SizedBox.fromSize(
      //                                         size: Size.fromRadius(25.r),
      //                                         child: CircleAvatar(
      //                                           backgroundImage: NetworkImage(
      //                                               ProfileObj!
      //                                                   .user!.profileImage!),
      //                                           radius: 25.r,
      //                                         ),
      //                                       ),
      //                                     )
      //                                   : Container(
      //                                       height: 50.w,
      //                                       width: 50.w,
      //                                       child: ClipRRect(
      //                                         borderRadius:
      //                                             BorderRadius.circular(100),
      //                                         child: Image.asset(
      //                                           'assets/images/profie.png',
      //                                           fit: BoxFit.fill,
      //                                         ),
      //                                       ),
      //                                     ),
      //                               sizedBoxWidth(15.w),
      //                               Column(
      //                                 crossAxisAlignment:
      //                                     CrossAxisAlignment.start,
      //                                 children: [
      //                                   text16White(
      //                                     nameValue == null ||
      //                                             nameValue!.isEmpty
      //                                         ? myusername!
      //                                         : '$nameValue',
      //                                   ),
      //                                   text14White("Investor")
      //                                 ],
      //                               ),
      //                               Spacer(),
      //                               Icon(
      //                                 Icons.arrow_forward_ios_outlined,
      //                                 size: 20.w,
      //                                 color: AppColors.white,
      //                               )
      //                             ],
      //                           ),
      //                         )
      //                       : InkWell(
      //                           onTap: () {
      //                             Get.toNamed("/login");
      //                           },
      //                           child: Row(
      //                             children: [
      //                               editProfileImage.profilePicPath.value != ''
      //                                   ? ClipOval(
      //                                       child: SizedBox.fromSize(
      //                                         size: Size.fromRadius(25.r),
      //                                         child: Image(
      //                                           image: FileImage(File(
      //                                               editProfileImage
      //                                                   .profilePicPath.value)),
      //                                           fit: BoxFit.cover,
      //                                           width: 50.w,
      //                                           height: 50.h,
      //                                         ),
      //                                       ),
      //                                     )
      //                                   : Container(
      //                                       height: 50.w,
      //                                       width: 50.w,
      //                                       child: ClipRRect(
      //                                         borderRadius:
      //                                             BorderRadius.circular(100),
      //                                         child: Image.asset(
      //                                           'assets/images/profie.png',
      //                                           fit: BoxFit.fill,
      //                                         ),
      //                                       ),
      //                                     ),
      //                               sizedBoxWidth(15.w),
      //                               Column(
      //                                 crossAxisAlignment:
      //                                     CrossAxisAlignment.start,
      //                                 children: [
      //                                   text16White(
      //                                     nameValue == null ||
      //                                             nameValue!.isEmpty
      //                                         ? 'Guest'
      //                                         : '$nameValue $lastNameValue',
      //                                   ),
      //                                   text14White("Sign In/Sign up")
      //                                 ],
      //                               ),
      //                               Spacer(),
      //                               Icon(
      //                                 Icons.arrow_forward_ios_outlined,
      //                                 size: 20.w,
      //                                 color: AppColors.white,
      //                               )
      //                             ],
      //                           ),
      //                         );
      //                 })),
      //             ListView.builder(
      //               shrinkWrap: true,
      //               itemCount: sideBarData.length,
      //               itemBuilder: (_, index) {
      //                 return sideBarTile(
      //                   image: sideBarData[index]["imagePath"],
      //                   text: sideBarData[index]["text"],
      //                   onTap: () {
      //                     navigateTo(index, context);
      //                   },
      //                 );
      //               },
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        width: 300.w,
        height: double.infinity,
        decoration: const BoxDecoration(color: AppColors.blue143C6D),
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 10.h, 45.w, 10.h),
            child: Column(
              children: [
                sizedBoxHeight(60.h),
                InkWell(
                    onTap: () {},
                    child: GetBuilder<EntryPointController>(builder: (_) {
                      return controllerEntryPoint.logedIn!
                          ? InkWell(
                              onTap: () async {
                                final result = await Get.toNamed("/userlogged");
                                //print("result is $result");
                                if (result) {
                                  GetProfile()
                                      .GetProfileAPI()
                                      .then((value) => setState(() {}));
                                }
                              },
                              child: Row(
                                children: [
                                  ProfileObj?.user?.profileImage != null 
                                      ? ClipOval(
                                          child: SizedBox.fromSize(
                                            size: Size.fromRadius(25.r),
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  ProfileObj!
                                                      .user!.profileImage!),
                                              radius: 25.r,
                                            ),
                                          ),
                                        )
                                      : Container(
                                          height: 50.w,
                                          width: 50.w,
                                          child: ClipRRect(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text16White(
                                        nameValue == null || nameValue!.isEmpty
                                            ? myusername!
                                            : '$nameValue',
                                      ),
                                      text14White("Investor")
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20.w,
                                    color: AppColors.white,
                                  )
                                ],
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                // Get.toNamed("/login");
                            Get.offAllNamed("/login");
                              },
                              child: Row(
                                children: [
                                  ClipOval(
                                    child: SizedBox.fromSize(
                                        size: Size.fromRadius(25.r),
                                        child: Image.asset(
                                            'assets/images/user.png')),
                                  ),
                                  sizedBoxWidth(15.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text16White(
                                        nameValue == null || nameValue!.isEmpty
                                            ? 'Guest'
                                            : '$nameValue $lastNameValue',
                                      ),
                                      text14White("Sign In/Sign up")
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20.w,
                                    color: AppColors.white,
                                  )
                                ],
                              ),
                            );
                    })),
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
                // sizedBoxHeight(10.h),
                InkWell(
                  onTap: () {},
                  child: GetBuilder<EntryPointController>(builder: (_){
                    return 
                    controllerEntryPoint.logedIn!
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              thickness: 0.25.h,
                              color: AppColors.white,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    logoutDailog(context);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 1.h),
                                    child: Row(
                                      children: [
                                        sizedBoxWidth(2.w),
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.h,
                                          child: Image.asset(
                                            "assets/logos/side11.png",
                                            // height: ,
                                            color: AppColors.white,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        text16White("Logout")
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      : SizedBox();
                  })
                  
                )
              ],
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
        Get.toNamed("/kycmainpage");
      }
      break;

    case 1:
      {
        Get.toNamed("/security");
        // Get.toNamed("/pindialogpage");
      }
      break;

    case 2:
      {
        Get.toNamed("/howtoinvest");
      }
      break;

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
        // Get.toNamed("/faqs");
        Get.toNamed("/newfaqs");        
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

    // case 9:
    //   {
    //     logoutDailog(context);
    //   }
    //   break;

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
            Center(
              child: Text(
                'Are you sure want to log out?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.sp, color: Color(0xFF444444)),
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
                    text: "Log out",
                    ontap: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.remove('token');
                      await prefs.remove('name');
                      prefs.clear();
                      Get.offAll(() => Login());
                      print(myusername!);

                      // final SharedPreferences prefs =
                      //     await SharedPreferences.getInstance();

                      // await prefs.setBool('LogedIn', false);

                      // Get.offAll(Login());
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
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: const BoxDecoration(
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
                      "Cancel",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sp,
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

class sideBarTile extends StatelessWidget {
  final String image;
  final String text;
  final void Function()? onTap;

  sideBarTile({
    required this.image,
    required this.text,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 0.25.h,
          color: AppColors.white,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: Row(
              children: [
                sizedBoxWidth(2.w),
                SizedBox(
                  height: 30.h,
                  width: 30.h,
                  child: Image.asset(
                    image,
                    // height: ,
                    color: AppColors.white,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                text16White(text)
              ],
            ),
          ),
        )
      ],
    );
  }
}
