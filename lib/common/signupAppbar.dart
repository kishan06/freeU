import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomSignupAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  const CustomSignupAppBar(
      {Key? key,
      required this.titleTxt,
      this.bottomtext,
      this.customProfileNavigation = false,
      this.navigateToTaxPlanning = false,
      this.showLeading = true})
      : super(key: key);

  final String titleTxt;

  final bool? bottomtext;
  final bool? customProfileNavigation;
  final bool? showLeading;
  final bool navigateToTaxPlanning;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        height: 50.h,
        decoration: const BoxDecoration(),
      ),
      bottom: bottomtext!
          ? PreferredSize(
              child: Text(
                "Steps to check for Clients other than Resident Individual",
                textAlign: TextAlign.center,
                style:
                    //Theme.of(context).textTheme.headline5,
                    TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        decorationColor: Colors.black,
                        fontSize: 12.sm),
                // selectionColor: Colors.black
              ),
              preferredSize: Size.zero)
          : null,
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0,
      automaticallyImplyLeading: false,

      titleSpacing: 0,
      // centerTitle: true,
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          titleTxt,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sm,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
      leading: Row(children: [
        SizedBox(
          width: 25,
        ),
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_rounded,
            size: 30.sp,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
