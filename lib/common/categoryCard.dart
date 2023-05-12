  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/Utils/texts.dart';

Widget categoryCard({
    required Color color1,
    required Color color2,
    required String bgImage,
    required String image,
    required String text
  }){
    return Stack(
      children: [
        Container(
          width: 169.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2]
              ),
              borderRadius: BorderRadius.circular(10.h),
            ),
        ),

        Positioned(
          right: 0,
          child: SvgPicture.asset(bgImage,
            width: 65.w,
            height: 133.h,
          ),
        ),

        SizedBox(
          width: 169.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  
                Image.asset(image,
                  height: 45.h,
                  width: 45.h,
                ),

                Spacer(),
          
                text14White(text)
              ],
            ),
          ),
        )
      ],
    );
             
  }
