// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
class ProfileImageController extends GetxController {
  RxString profilePicPath = "".obs;

  void getImage(ImageSource imgSource) async {
    final ImagePicker picker = ImagePicker();
    print('profilePicPath $profilePicPath');
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
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _key,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              sizedBoxWidth(45.w),
              sizedBoxWidth(5.w),
              Text(
                'profile_title'.tr,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.sp,
                    color: Colors.black),
              ),
            ],
          ),
          elevation: 0,
          shadowColor: Colors.black,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              PreferredSize(
                preferredSize: Size.fromHeight(50.h),
                child: TabBar(
                  indicatorColor: Color(0xff002A5B),
                  indicatorWeight: 5.h,
                  tabs: [
                    Tab(
                        child: Text(
                      'profile'.tr,
                      style:
                          TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                    )),
                    Tab(
                        child: Text(
                      'kyc'.tr,
                      style:
                          TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                    )),
                    Tab(
                        child: Text(
                      'profile_risk'.tr,
                      style:
                          TextStyle(color: Color(0xff000000), fontSize: 16.sp),
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
  bool editBool = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final ProfileImageController editProfileImage =
      Get.put(ProfileImageController());

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
                        editProfileImage.getImage(ImageSource.camera);
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
                        editProfileImage.getImage(ImageSource.gallery);
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

  DateTime timebackPressed = DateTime.now();

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
                                child: editProfileImage.profilePicPath.value !=
                                        ''
                                    ? Image(
                                        image: FileImage(File(editProfileImage
                                            .profilePicPath.value)),
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
                            'sms'.tr,
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
                  Obx(
                    () => ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(60.r),
                        child: editProfileImage.profilePicPath.value != ''
                            ? Image(
                                image: FileImage(File(
                                    editProfileImage.profilePicPath.value)),
                                fit: BoxFit.cover,
                                width: 200.w,
                                height: 200.h,
                              )
                            : Image.asset('assets/images/user.png'),
                      ),
                    ),
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
            "profile_name".tr,
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
                  return 'profile_nameV1'.tr;
                }
                if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
                  return 'profile_nameV2'.tr;
                }
                return null;
              },
              textEditingController: nameController,
              hintText: 'profile_nameFirst'.tr,
              validatorText: 'profile_nameFirst'.tr),
          SizedBox(height: 20.h),
          Text(
            "profile_lastName".tr,
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
                  return 'profile_lastnameV1'.tr;
                }
                if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
                  return 'profile_lastnameV2'.tr;
                }
                // v1 = true;
                return null;
              },
              textEditingController: lastNameController,
              hintText: 'profile_lastNameV1'.tr,
              validatorText: 'profile_lastNameV1'.tr),
          SizedBox(height: 20.h),
          Text(
            "profile_phone".tr,
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
                  return 'profile_phoneV1'.tr;
                } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                    .hasMatch(value)) {
                  return 'profile_phoneV2'.tr;
                }
                // v3 = true;
                return null;
              },
              textEditingController: phoneController,
              hintText: 'profile_phoneV3'.tr,
              validatorText: 'profile_phoneV3'.tr),
          SizedBox(height: 20.h),
          Text(
            "profile_email".tr,
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
                  return 'profile_emailV1'.tr;
                }
                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                    .hasMatch(value)) {
                  return 'profile_emailV2'.tr;
                }
                // v4 = true;
                return null;
              },
              textEditingController: emailController,
              hintText: 'profile_emailV3'.tr,
              validatorText: 'profile_emailV3'.tr),
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
                        'sms'.tr,
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
                      Text(
                        'smsOption'.tr,
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
            "profile_add".tr,
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
              hintText: "profile_add".tr,
            ),
            minLines: 5,
            maxLines: null,
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomNextButton(
            text: 'profile_update'.tr,
            ontap: (() {
              _submit();
            }),
          )
        ],
      ),
    );
  }

  //  Future<bool> _backbuttonpressed(BuildContext context) async {
  //   bool? exitapp = await showDialog(
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
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
                "kyc_step1".tr,
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
                "kyc_step1_info".tr,
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
                "kyc_step1_info1".tr,
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
                "kyc_step1_number".tr,
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
                  hintText: "kykyc_step1_numberV1".tr,
                  validatorText: "kykyc_step1_numberV1".tr),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "profile_email".tr,
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
                  hintText: "profile_emailV1".tr,
                  validatorText: "profile_emailV1".tr),
              SizedBox(height: 20.h),
              Text(
                "kyc_residential".tr,
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
                "dob".tr,
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
                          sizedBoxWidth(10.w)
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
                "Occupation".tr,
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
                    "Marketing manager".tr,
                    "financial operations".tr,
                    "Software developer.".tr
                  ],
                  controller: residentialstatustexteditingcontroller,
                  showDropDown: true),

              // CustomTextFormField(
              //     hintText: "Please Enter Occupation",
              //     validatorText: "Please Enter Occupation"),
              SizedBox(height: 20.h),
              Text(
                "Father's Name".tr,
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
                  hintText: "Please Enter Father's Name".tr,
                  validatorText: "Please Enter Father's Name".tr),
              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Continue".tr,
                ontap: () {
                  setState(() {
                    _controller.animateToPage(currentIndex = 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  });
                },
              ),
              sizedBoxHeight(10.h)
            ],
          ),
        ),
      ),
    );
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
                "kycStep2".tr,
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
                "kycStep2_add".tr,
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
                "kycText1".tr,
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
                "Country".tr,
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
                "Pincode".tr,
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
                  hintText: "pincodeV1".tr, validatorText: "pincodeV1".tr),
              SizedBox(height: 13.h),
              Text(
                "streetAdd".tr,
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
                "City".tr,
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
                "State / Province/ Region".tr,
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
                "Document Type".tr,
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
                "Document Number".tr,
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
                  hintText: "docV1".tr, validatorText: "docV1".tr),
              SizedBox(height: 10.h),
              Text(
                "kyctxt4".tr,
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
                "kyctxt5".tr,
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
                },
              ),
              sizedBoxHeight(10.h)
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
                "kycStep3".tr,
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
                "PAN & Aadhar details".tr,
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
                "Provide your PAN & Aadhar details".tr,
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
                "PAN Number".tr,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "panV1".tr, validatorText: "panV1".tr),
              SizedBox(
                height: 13.h,
              ),
              Text(
                "panUpload".tr,
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
                "Aadhar Number".tr,
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
                  hintText: "aadharV1".tr, validatorText: "aadharV1".tr),
              SizedBox(height: 10.h),
              Text(
                "Upload Aadhar card".tr,
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
                  text: "Continue".tr,
                  ontap: () {
                    setState(() {
                      _controller.animateToPage(currentIndex = 3,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear);
                    });
                  }),
              sizedBoxHeight(10.h)
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
                "kycStep4".tr,
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
                "Bank account details".tr,
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
                "kycStep4_txt1".tr,
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
                "IFSC code".tr,
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
                "Account Number".tr,
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
                "kycStep4_txt2".tr,
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
                "Bank Name".tr,
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
                text: "Submit".tr,
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
                                'kycThankyou'.tr,
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
              ),
              sizedBoxHeight(10.h)
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Center(
            child: Form(
                key: _form,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "enterName".tr,
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
                          "enterAge".tr,
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
                        "enterDiscription".tr,
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
                        "enterReason".tr,
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
                        "enterIncome".tr,
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
                        "enterPlan".tr,
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
                        "enterHope".tr,
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
                                          'riskThankyou'.tr,
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
                      // sizedBoxHeight(50.h)
                    ]))),
      ),
    );
  }
}
