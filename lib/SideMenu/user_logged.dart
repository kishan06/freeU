// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, unused_field, avoid_print, depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/signupAppbar.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool isSwitched = false;
  bool readonly = false;
  late File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: CustomSignupAppBar(
        titleTxt: "Investor Profile",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/team02.png",
                      ),
                    ),
                    Positioned(
                        right: -16,
                        bottom: 0,
                        child: SizedBox(
                            height: 46,
                            width: 46,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(color: Color(0xFF0E0A0A)),
                              ),
                              color: Color(0xFF17181A),
                              onPressed: () {},
                              child: Center(child: Icon(Icons.camera)),
                            )))
                  ],
                ),
              ),
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
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFFFFB600), width: 1),
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
        )),
      ),
    );
  }
}

FlatButton(
    {required RoundedRectangleBorder shape,
    required Color color,
    required Null Function() onPressed,
    required Center child}) {}
