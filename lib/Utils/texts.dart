import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';

Widget text30BlackM(String text){
  return Text(text,
    style: TextStyle(
      fontSize: 29.sp,
      color: AppColors.black,
      fontWeight: FontWeight.w500
    ),
  );
}

Widget text18Grey(String text){
  return Text(text,
    style: TextStyle(
      fontSize: 18.sp,
      color: AppColors.grey616161,
    ),
  );
}
