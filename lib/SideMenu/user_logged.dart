// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, unused_field, avoid_print, depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool isSwitched = false;
  bool readonly = false;
  File? _image;

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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => getImage(ImageSource.camera),
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => getImage(ImageSource.camera),
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Gallery',
                            style: TextStyle(fontSize: 15),
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
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "Investor Profile",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                        size: Size.fromRadius(70),
                        child: _image != null
                            ? Image.file(
                                _image!,
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              )
                            : Image.asset('assets/images/user.png')),
                  ),
                  Positioned(
                    top: 110,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        builduploadprofile();
                      },
                      child: CircleAvatar(
                        child: Icon(
                          Icons.edit,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: (() {}),
            child: SvgPicture.asset(
              'assets/images/Group 51018.svg',
              width: 20,
            ),
          ),
        ),
        Text(
          "First Name",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sm,
              color: Color(0xff303030)),
        ),
        SizedBox(
          height: 6.h,
        ),
        CustomTextFormField(
            hintText: 'Enter First Name',
            validatorText: 'Enter First Name'),
        SizedBox(height: 20.h),
        Text(
          "Last Name",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sm,
              color: Color(0xff303030)),
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
              fontSize: 16.sm,
              color: Color(0xff303030)),
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
              fontSize: 16.sm,
              color: Color(0xff303030)),
        ),
        SizedBox(
          height: 6.h,
        ),
        CustomTextFormField(
            hintText: 'Enter Email Id', validatorText: 'Enter Email Id '),
        SizedBox(height: 20.h),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('SMS updates'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: Color.fromARGB(255, 59, 129, 214),
                  activeColor: Color(0xFF143C6D),
                ),
                Text(
                  'Opt Out / Opt In',
                  style: TextStyle(fontSize: 12, color: Color(0xff737373)),
                )
              ],
            ),
          ],
        ),
        Text(
          "Address",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sm,
              color: Color(0xff303030)),
        ),
        SizedBox(
          height: 6.h,
        ),
        TextFormField(
          cursorColor: const Color(0xFFFFB600),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Color(0xFF707070).withOpacity(0), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Color(0xFF707070).withOpacity(0), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Color(0xFFFFB600).withOpacity(0), width: 1),
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
          ],
        ),
      ),
    );
  }
}

FlatButton(
    {required RoundedRectangleBorder shape,
    required Color color,
    required Null Function() onPressed,
    required Center child}) {}
