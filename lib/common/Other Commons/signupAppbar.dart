import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      this.showLeading = true,
      this.actionWidget})
      : super(key: key);

  final String titleTxt;
  final Widget? actionWidget;
  final bool? bottomtext;
  final bool? customProfileNavigation;
  final bool? showLeading;
  final bool navigateToTaxPlanning;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [if (actionWidget != null) actionWidget!],
      flexibleSpace: Container(
        height: 50.h,
        decoration: const BoxDecoration(),
      ),
      bottom: bottomtext!
          ? PreferredSize(
              preferredSize: Size.zero,
              child: Text(
                "Steps to check for Clients other than Resident Individual",
                textAlign: TextAlign.center,
                style:
                    //Theme.of(context).textTheme.headline5,
                    TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        decorationColor: Colors.black,
                        fontSize: 12.sp),
                // selectionColor: Colors.black
              ))
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
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Icon(
          Icons.arrow_back_rounded,
          size: 24.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}
