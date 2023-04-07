// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freeu/SideMenu/user_logged.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/profile/kyctabs2.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../common/CustomTextDropDown.dart';

bool smsUpdate = true;
TextEditingController nameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController addressController = TextEditingController();

String? nameValue;
String? lastNameValue;
String? phoneValue;
String? emailValue;
String? addressValue;

// File? profilPic;
RxString profilePicPath = "".obs;

void getImage(ImageSource imgSource) async {
  final ImagePicker picker = ImagePicker();
  final XFile? pickedImg = await picker.pickImage(source: imgSource);
  if (pickedImg != null) {
    final CroppedFile? croppedImg = await ImageCropper().cropImage(
        sourcePath: pickedImg.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        compressFormat: ImageCompressFormat.jpg,
        maxHeight: 512,
        maxWidth: 512,
        compressQuality: 100,
        cropStyle: CropStyle.circle,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          // CropAspectRatioPreset.ratio3x2,
          // CropAspectRatioPreset.original,
          // CropAspectRatioPreset.ratio4x3,
          // CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: "Crop Image",
            toolbarColor: Get.theme.appBarTheme.backgroundColor,
            // toolbarWidgetColor: ColorConstants.kWhite,
            backgroundColor: Colors.black,
            activeControlsWidgetColor: Colors.red,
            // initAspectRatio: CropAspectRatioPreset.original,
            cropFrameColor: Colors.white,
            lockAspectRatio: false,
          ),
          IOSUiSettings(
            title: 'Crop Image',
          ),
        ]);
    if (croppedImg != null) {
      // profilPic = croppedImg.path;
      profilePicPath.value = croppedImg.path;
      // Get.back();
    }
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  // bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _key,
        // drawer: NavDrawer(),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                'Your Profile',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.sp,
                    // fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              // Spacer(),
              // Icon(
              //   Icons.more_vert_rounded,
              //   color: Colors.blueAccent,
              //   size: 25.sp,
              // ),
              // IconButton(
              //   onPressed: () {
              //     Get.toNamed('/notificationpage');
              //   },
              //   icon: SizedBox(
              //     width: 18.w,
              //     height: 25.h,
              //     child: SvgPicture.asset(
              //       'assets/images/notification-bell-svgrepo-com.svg',
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              //   // iconSize: 22,
              //   // color: const Color(0xFF303030),
              // ),
            ],
          ),
          // backgroundColor: Color(0xFFF5F8FA),
          elevation: 0,
          shadowColor: Colors.black,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
        ),
        
        // appBar: AppBar(
        //   toolbarHeight: 50.h,
        //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
        //   elevation: 2,
        //   shadowColor: Colors.black,
        //   automaticallyImplyLeading: false,
        //   titleSpacing: 0,
        //   title: SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Text(
        //       'Your Profile',
        //       softWrap: true,
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //           fontFamily: 'Poppins',
        //           fontSize: 19.sp,
        //           fontWeight: FontWeight.w400,
        //           color: Colors.black),
        //     ),
        //   ),
        //   leading: Row(
        //     children: [
        //       IconButton(
        //         onPressed: () {
        //           _key.currentState!.openDrawer();
        //         },
        //         icon: SvgPicture.asset("assets/images/menu.svg"),
        //         color: Colors.black,
        //         iconSize: 25.sp,
        //       ),
        //     ],
        //   ),
        //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(50.h),
        //     child: TabBar(
        //       indicatorColor: Color(0xff002A5B),
        //       indicatorWeight: 5.h,
        //       tabs: [
        //         Tab(
        //             child: Text(
        //           'Profile',
        //           style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
        //         )),
        //         Tab(
        //             child: Text(
        //           'KYC',
        //           style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
        //         )),
        //         Tab(
        //             child: Text(
        //           'Risk Profile',
        //           style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
        //         )),
        //       ],
        //     ),
        //   ),
        // ),
        // // bottomNavigationBar:
        //     CreateBottomBar(stateBottomNav, "Bottombarprofile", context),
        body: Column(
          children: [
            PreferredSize(
              preferredSize: Size.fromHeight(50.h),
              child: TabBar(
                indicatorColor: Color(0xff002A5B),
                indicatorWeight: 5.h,
                tabs: [
                  Tab(
                      child: Text(
                    'Profile',
                    style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                  )),
                  Tab(
                      child: Text(
                    'KYC',
                    style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                  )),
                  Tab(
                      child: Text(
                    'Risk Profile',
                    style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                  )),
                ],
              ),
            ),
            Expanded(
              child: const TabBarView(
                children: [
                  profiletab(),
                  KYCtabs(),
                  riskprofile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class profiletab extends StatefulWidget {
  const profiletab({
    Key? key,
  }) : super(key: key);

  @override
  State<profiletab> createState() => _profiletabState();
}

class _profiletabState extends State<profiletab> {
  // bool isSwitched = false;

  bool editBool = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submit() {
    // final FormState? form = _formKey.currentState;
    // if (form != null && form.validate()) {
    //   form.save();
    setState(() {
      setState(() {
        editBool = false;
        nameValue = nameController.text;
        lastNameValue = lastNameController.text;
        phoneValue = phoneController.text;
        emailValue = emailController.text;
        addressValue = addressController.text;
      });
    });
    // }
  }

  // Future getImage(ImageSource source) async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: source);
  //     if (image == null) return;
  //     final imageTemporary = File(image.path);
  //     // final imagePermanent = await saveFilePermanently(image.path);

  //     setState(() {
  //       profilPic = imageTemporary;
  //     });
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    return File(imagePath).copy(imagePath);
  }

  builduploadprofile() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26.r),
          topRight: Radius.circular(26.r),
        ),
      ),
      builder: (context) {
        return Container(
          // height: 180.h,
          margin: EdgeInsets.symmetric(horizontal: 36.w, vertical: 26.h),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile Photo',
                  style: TextStyle(
                      color: Color(0xff444444),
                      fontSize: 22.sp,
                      fontFamily: 'Poppins'),
                ),
                sizedBoxHeight(40.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        getImage(ImageSource.camera);
                        Get.back();
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundColor: Color(0xff143C6D),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff444444),
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    sizedBoxWidth(36.w),
                    GestureDetector(
                      onTap: () {
                        getImage(ImageSource.gallery);
                        Get.back();
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundColor: Color(0xff143C6D),
                            child: Icon(
                              Icons.image_outlined,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Gallery',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff444444),
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
            child: editBool
                ? editProfile()
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: SizedBox.fromSize(
                                size: Size.fromRadius(60.r),
                                child:profilePicPath.value != null
                            ? Image(
                                image: FileImage(File(profilePicPath.value)),
                                fit: BoxFit.cover,
                                width: 200.w,
                                height: 200.h,
                              )
                                    : Image.asset('assets/images/user.png')),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              nameValue == null || nameValue!.isEmpty
                                  ? 'Kartikey Adani'
                                  : '$nameValue $lastNameValue',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {
                              setState(() {
                                editBool = true;
                              });
                            }),
                            child: SvgPicture.asset(
                              'assets/images/Group 51018.svg',
                              width: 20.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff002A5B),
                            radius: 25.r,
                            child: Icon(Icons.phone_in_talk_sharp),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            phoneValue == null || phoneValue!.isEmpty
                                ? '8425025713'
                                : '$phoneValue',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 36.h,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff002A5B),
                            radius: 25.r,
                            child: Icon(Icons.mail_outline),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Flexible(
                            child: Text(
                              emailValue == null || emailValue!.isEmpty
                                  ? 'Kartikey@gmail.com'
                                  : '$emailValue',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 36.h,
                        color: Colors.grey,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff002A5B),
                            radius: 25.r,
                            child: Icon(Icons.location_on_outlined),
                          ),
                          SizedBox(
                            width: 22.w,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                sizedBoxHeight(10.h),
                                Text(
                                  addressValue == null || addressValue!.isEmpty
                                      ? '614, 6TH Floor, Palm Spring Centre, New Link Rd, Malad West, Mumbai, Maharashtra 400064'
                                      : '$addressValue',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 36.h,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SMS updates',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          FlutterSwitch(
                            switchBorder: Border.all(
                              strokeAlign: BorderSide.strokeAlignCenter,
                              style: BorderStyle.solid,
                              width: 1,
                              color: const Color(0xffCCCCCC),
                            ),
                            padding: 4.h,
                            borderRadius: 20.r,
                            width: 80.w,
                            height: 30.h,
                            toggleSize: 20.sp,
                            toggleColor: const Color(0xff143C6D),
                            activeColor: Colors.white,
                            inactiveColor: const Color(0xffB1B1B1),
                            value: smsUpdate,
                            onToggle: (value) {
                              smsUpdate;
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Widget editProfile() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                        size: Size.fromRadius(60.r),
                        child: profilePicPath.value != null
                            ? Image(
                                image: FileImage(File(profilePicPath.value)),
                                fit: BoxFit.cover,
                                width: 200.w,
                                height: 200.h,
                              )
                            : Image.asset('assets/images/user.png')),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        builduploadprofile();
                      },
                      child: Material(
                        elevation: 1,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          radius: 16.5.r,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.edit_outlined,
                            color: Color(0xffCCCCCC),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          sizedBoxHeight(33.h),
          Text(
            "First Name",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a Username';
                }
                if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
                  return 'Please enter a valid username (letters and numbers only)';
                }
                // v1 = true;
                return null;
              },
              textEditingController: nameController,
              hintText: 'Enter First Name',
              validatorText: 'Enter First Name'),
          SizedBox(height: 20.h),
          Text(
            "Last Name",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter lastname';
                }
                if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
                  return 'Please enter a valid name (letters and numbers only)';
                }
                // v1 = true;
                return null;
              },
              textEditingController: lastNameController,
              hintText: 'Enter Last Name',
              validatorText: 'Enter Last Name'),
          SizedBox(height: 20.h),
          Text(
            "Phone Number",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          CustomTextFormField(
              texttype: TextInputType.phone,
              validator: (value) {
                if (value == value.isEmpty) {
                  return 'Mobile number is required';
                } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                    .hasMatch(value)) {
                  return 'Enter valid mobile number';
                }
                // v3 = true;
                return null;
              },
              textEditingController: phoneController,
              hintText: 'Enter Phone Number',
              validatorText: 'Enter Phone Number'),
          SizedBox(height: 20.h),
          Text(
            "Email Id",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          CustomTextFormField(
              validator: (value) {
                if (value == value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                    .hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                // v4 = true;
                return null;
              },
              textEditingController: emailController,
              hintText: 'Enter Email Id',
              validatorText: 'Enter Email Id '),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'SMS updates',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      FlutterSwitch(
                        switchBorder: Border.all(
                          strokeAlign: BorderSide.strokeAlignCenter,
                          style: BorderStyle.solid,
                          width: 1,
                          color: const Color(0xffCCCCCC),
                        ),
                        padding: 0,
                        borderRadius: 20,
                        width: 40,
                        height: 15,
                        toggleSize: 15,
                        toggleColor: const Color(0xff143C6D),
                        activeColor: Colors.white,
                        inactiveColor: const Color(0xffB1B1B1),
                        value: smsUpdate,
                        onToggle: (value) {
                          setState(() {
                            smsUpdate = value;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Opt Out / Opt In',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xff737373),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Address",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          TextFormField(
            controller: addressController,
            style: TextStyle(fontSize: 16.sp),
            cursorColor: const Color(0xFFFFB600),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12.h),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              hintStyle:
                  const TextStyle(color: Color(0x80000000), fontSize: 14),
              hintText: "Address",
            ),
            minLines: 5,
            maxLines: null,
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomNextButton(
            text: 'Update',
            ontap: (() {
              _submit();
            }),
          )
        ],
      ),
    );
  }
}

class KYCtabs extends StatefulWidget {
  const KYCtabs({super.key});

  @override
  State<KYCtabs> createState() => _KYCtabsState();
}

class _KYCtabsState extends State<KYCtabs> {
  int currentIndex = 0;
  late PageController _controller;
  String? datecontroller;

  DateTime? _selectedDate;
  final residentialstatustexteditingcontroller = TextEditingController();

  final countrytexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(

        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
        child: PageView.builder(
          controller: _controller,
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            if (index == 0) {
              return kyc1();
            } else if (index == 1) {
              return kyc2();
            } else if (index == 2) {
              return kyc3();
            }
            return kyc4();
          },

        ),
      ),
    );
  }

  Widget kyc1() {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Step 1 : Complete your KYC",
                style: TextStyle(
                    fontSize: 22.sp,
                    color: Color(0xFF143C6D),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Personal Information",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Provide your personal information as per your Bank Account",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Contact Number",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Phone Number",
                  validatorText: "Please Enter Phone Number"),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Email ID",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Email Id",
                  validatorText: "Please Enter Email Id"),
              SizedBox(height: 20.h),
              Text(
                "Residential Status",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextDropdown(
                  item: ["1", "2", "3"],
                  controller: residentialstatustexteditingcontroller,
                  showDropDown: true),
              SizedBox(height: 20.h),
              Text(
                "Date of Birth",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              GestureDetector(
                onTap: () {
                  _presentDatePicker();
                },
                child: Container(
                  height: 45.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffCCCCCC),
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          sizedBoxWidth(20.w),
                          Text(_selectedDate == null ? '' : '$datecontroller'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          sizedBoxWidth(45.w)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // CustomTextFormField(
              //     hintText: "", validatorText: "Please Enter Email Id"),
              SizedBox(height: 20.h),
              Text(
                "Occupation",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextDropdown(
                  item: [
                    "Marketing manager",
                    "financial operations.",
                    "Software developer."
                  ],
                  controller: residentialstatustexteditingcontroller,
                  showDropDown: true),

              // CustomTextFormField(
              //     hintText: "Please Enter Occupation",
              //     validatorText: "Please Enter Occupation"),
              SizedBox(height: 20.h),
              Text(
                "Father's Name",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Father's Name",
                  validatorText: "Please Enter Father's Name"),
              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Continue",
                ontap: () {
                  setState(() {
                    _controller.animateToPage(currentIndex = 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
    ;
  }

  Widget kyc2() {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: prefer_const_constructors
              Text(
                "Step 2 : Complete your KYC",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xFF143C6D),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Address Details",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Provide your current correspondance address and upload an address proof of the same",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Country",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextDropdown(
                  item: ["India", "Australia", "Canada"],
                  controller: countrytexteditingcontroller,
                  showDropDown: true),
              SizedBox(
                height: 13.h,
              ),
              Text(
                "Pincode",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Pincode",
                  validatorText: "Please Enter Pincode"),
              SizedBox(height: 13.h),
              Text(
                "Address - Area and Street",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              TextFormField(
                cursorColor: const Color(0xFFFFB600),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: addresstextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10).h,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle: TextStyle(
                    color: Color(0x80000000),
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                  ),
                  hintText: "",
                ),
                minLines: 5,
                maxLines: null,
              ),
              SizedBox(height: 13.h),
              Text(
                "City",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextDropdown(
                  item: ["Mumbai", "Thane", "Palghar"],
                  controller: countrytexteditingcontroller,
                  showDropDown: true),
              SizedBox(height: 13.h),
              Text(
                "State / Province/ Region",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextDropdown(
                  item: ["Maharashtra", "kerala", "Punjab"],
                  controller: countrytexteditingcontroller,
                  showDropDown: true),
              SizedBox(height: 20.h),
              Text(
                "Document Type",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextDropdown(
                  item: ["PDF", "JPEG", "PNG"],
                  controller: countrytexteditingcontroller,
                  showDropDown: true),
              SizedBox(height: 10.h),
              Text(
                "Document Number",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Document Number",
                  validatorText: "Please Enter Document Number"),
              SizedBox(height: 10.h),
              Text(
                "Please upload document front side",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormField(
                cursorColor: const Color(0xFFFFB600),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: uploadfronttextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.h),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle: TextStyle(
                    color: Color(0x80000000),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                  ),
                  hintText: "",
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Please upload document back side(if applicable)",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormField(
                cursorColor: const Color(0xFFFFB600),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: uploadfronttextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.h),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle: TextStyle(
                    color: Color(0x80000000),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                  ),
                  hintText: "",
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 40.h),
              CustomNextButton(
                  text: "Continue",
                  ontap: () {
                    setState(() {
                      _controller.animateToPage(currentIndex = 2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear);
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget kyc3() {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Step 3 : Complete your KYC",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF143C6D),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "PAN & Aadhar details",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Provide your PAN & Aadhar details",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "PAN Number",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter PAN Number",
                  validatorText: "Please Enter PAN Number"),
              SizedBox(
                height: 13.h,
              ),
              Text(
                "Upload PAN card front side",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              TextFormField(
                cursorColor: const Color(0xFFFFB600),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: uploadfronttextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.h),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle:
                      TextStyle(color: Color(0x80000000), fontSize: 14.sp),
                  hintText: "",
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Aadhar Number",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Aadhar Number",
                  validatorText: "Please Enter Aadhar Number"),
              SizedBox(height: 10.h),
              Text(
                "Upload Aadhar card",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormField(
                cursorColor: const Color(0xFFFFB600),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: uploadfronttextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.h),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle:
                      TextStyle(color: Color(0x80000000), fontSize: 14.sp),
                  hintText: "",
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 40.h),
              CustomNextButton(
                  text: "Continue",
                  ontap: () {
                    setState(() {
                      _controller.animateToPage(currentIndex = 3,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear);
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget kyc4() {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Step 4 : Complete your KYC",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.sp,
                  color: Color(0xFF143C6D),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Bank account details",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Provide your Bank account details",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "IFSC code",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter IFSC code",
                  validatorText: "Please Enter IFSC code"),
              SizedBox(
                height: 13,
              ),
              Text(
                "Account Number",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Account Number",
                  validatorText: "Please Enter Account Number"),
              SizedBox(
                height: 13.h,
              ),
              Text(
                "Upload cancelled check/ Bank statement",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              TextFormField(
                cursorColor: const Color(0xFFFFB600),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: uploadfronttextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.h),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xFFCCCCCC), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xFFCCCCCC), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xFFCCCCCC), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle:
                      TextStyle(color: Color(0x80000000), fontSize: 16.sp),
                  hintText: "",
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Bank Name",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Bank Name",
                  validatorText: "Please Enter Bank Name"),
              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Continue",
                ontap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 24.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Image.asset('assets/images/kyc.png'),
                            SizedBox(
                              height: 30.h,
                            ),
                            Center(
                              child: Text(
                                'Thankyou for updating\n your KYC',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.sp,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1922),
            lastDate: DateTime.now())
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return setState(() {
          datecontroller = '';
        });
        ;
      }
      setState(() {
        _selectedDate = pickedDate;
        datecontroller =
            "${_selectedDate!.day.toString()}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year.toString().padLeft(2, '0')}";
      });
    });
  }
}

class riskprofile extends StatefulWidget {
  const riskprofile({super.key});

  @override
  State<riskprofile> createState() => _riskprofileState();
}

class _riskprofileState extends State<riskprofile> {
  final famailiarity = TextEditingController();
  final investing = TextEditingController();
  final income = TextEditingController();
  final invest = TextEditingController();
  final basis = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Center(
            child: Form(
                key: _form,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SvgPicture.asset(
                      //   'assets/images/risk.svg',
                      //   // width: 120.w,
                      // ),
                      // SizedBox(
                      //   height: 20.h,
                      // ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Enter your First name ?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff000000)),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(hintText: "", validatorText: ""),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Enter your age?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff000000)),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(hintText: "", validatorText: ""),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "How would you describe your level of familiarity ?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                        item: ["Beginner", "Competent", "Proficient", "Expert"],
                        controller: famailiarity,
                        showDropDown: true,
                        // selectedValue: "select it",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "What is the primary reason you're interested in investing?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(item: [
                        "Building Wealth",
                        "Petirement",
                        "Major Purchase",
                        "Business Investment",
                        "Holiday"
                      ], controller: investing, showDropDown: true),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "What is your annual income ?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(item: [
                        "Below 25 Lacs",
                        "26 to 35 Lacs",
                        "36 to 50 Lacs",
                        "Above 50 Lacs"
                      ], controller: income, showDropDown: true),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "How long do you plan to invest?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(item: [
                        "Less than 3 years",
                        "3 - 5 years",
                        "6 - 10 years"
                      ], controller: invest, showDropDown: true),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "How much do you hope to invest on a monthly/yearly basis?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(item: [
                        "5 Lakhs to 10 Lakhs",
                        "10 Lakhs to 25 Lakhs",
                      ], controller: basis, showDropDown: true),
                      SizedBox(
                        height: 50.h,
                      ),
                      CustomNextButton(
                          ontap: (() {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  topRight: Radius.circular(30.r),
                                ),
                              ),
                              builder: (context) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 50.w, vertical: 24.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Image.asset('assets/images/kyc.png'),
                                      SizedBox(
                                        height: 30.h,
                                      ),
                                      Center(
                                        child: Text(
                                          'Thankyou for updating your Risk Profile',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }),
                          text: "Submit"),
                      sizedBoxHeight(50.h)
                    ]))),
      ),
    );
  }
}
