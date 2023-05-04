import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:get/get.dart';

Widget text30BlackM(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 29.sp, color: AppColors.black, fontWeight: FontWeight.w500),
  );
}

Widget text20Black(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 20.sp,
      color: AppColors.black,
      // fontWeight: FontWeight.w500
    ),
  );
}

Widget text18Grey(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18.sp,
      color: AppColors.grey616161,
    ),
  );
}

Widget text14Grey272424(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14.sp,
      color: AppColors.grey272424,
    ),
  );
}

Widget text13Grey707070(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 13.sp,
      color: AppColors.grey707070,
    ),
  );
}

Widget text14Black(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14.sp,
      color: AppColors.black,
    ),
  );
}

Widget text16White(String text, {TextAlign? textAlign}) {
  return Text(
    text.tr,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: 16.sp,
      color: AppColors.white,
    ),
  );
}

Widget text20White(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: 20.sp,
      color: AppColors.white,
    ),
  );
}

Widget text14White(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: 14.sp,
      color: AppColors.white,
    ),
  );
}
