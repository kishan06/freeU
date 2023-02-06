// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "Success Stories",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
            child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed('/successstoriesdetails');
              },
              child: stories(),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/successstoriesdetails');
              },
              child: stories(),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/successstoriesdetails');
              },
              child: stories(),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/successstoriesdetails');
              },
              child: stories(),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/successstoriesdetails');
              },
              child: stories(),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/successstoriesdetails');
              },
              child: stories(),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/successstoriesdetails');
              },
              child: stories(),
            ),
          ],
        )),
      ),
    );
  }
}

class stories extends StatelessWidget {
  const stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Color.fromARGB(255, 228, 224, 224),
          width: 1,
        ),
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Image.asset('assets/images/51025.png'),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum has been the industrys\nstandarddummy text ever since the 1500s.',
                  style: TextStyle(
                    fontSize: 14.sm,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Jan 09, 2023',
                  style: TextStyle(
                    fontSize: 14.sm,
                    color: Color(0xff000000),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
