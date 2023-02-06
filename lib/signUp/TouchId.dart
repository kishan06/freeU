// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../common/customNextButton.dart';

class TouchId extends StatefulWidget {
  const TouchId({super.key});

  @override
  State<TouchId> createState() => _TouchIdState();
}

class _TouchIdState extends State<TouchId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffF5F8FA),
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Set-up Touch Id",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 70),
                SizedBox(
                  width: 286,
                  height: 286,
                  child: SvgPicture.asset(
                    'assets/images/fingericon.svg',
                    width: 140,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                CustomNextButton(
                  text: "Set up Now",
                  ontap: () {
                    // _checkBio();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (builder) =>
                    //         const SuccessScreen(),
                    //   ),
                    // );
                  },
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/completeprofile');
                    },
                    child: Text(
                      'will do it later',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF585858),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
