import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool light = true;
  File? _image;

  bool editBool = false;
  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      // final imagePermanent = await saveFilePermanently(image.path);

      setState(() {
        this._image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.sp,
                    ),
                  ),
                  Visibility(
                    visible: !editBool,
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          editBool = true;
                        });
                      }),
                      child: SvgPicture.asset(
                        'assets/images/Group 51018.svg',
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Investor profile",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              sizedBoxHeight(30.h),
              editBool
                  ? editProfile()
                  : Column(
                      children: [
                        sizedBoxHeight(30.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: SizedBox.fromSize(
                                  size: Size.fromRadius(60.r),
                                  child: _image != null
                                      ? Image.file(
                                          _image!,
                                          width: 200.w,
                                          height: 200.h,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.asset('assets/images/user.png')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Kartikey Adani',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
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
                              '8425025713',
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
                            Text(
                              'Kartikey@gmail.com',
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
                                    '614, 6TH Floor, Palm Spring Centre, New Link Rd, Malad West, Mumbai, Maharashtra 400064',
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
                              value: light,
                              onToggle: (value) {
                                setState(() {
                                  light = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
            ],
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
                        child: _image != null
                            ? Image.file(
                                _image!,
                                width: 200.w,
                                height: 200.h,
                                fit: BoxFit.cover,
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
              hintText: 'Enter First Name', validatorText: 'Enter First Name'),
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
              hintText: 'Enter Last Name', validatorText: 'Enter Last Name'),
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
              hintText: 'Enter Email Id', validatorText: 'Enter Email Id '),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'SMS updates',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                        value: light,
                        onToggle: (value) {
                          setState(() {
                            light = value;
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
              setState(() {
                editBool = false;
              });
            }),
          )
        ],
      ),
    );
  }
}
