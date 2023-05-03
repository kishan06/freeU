  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bulletTextBoldTitle({required String text, required String title}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "> ",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                // TextSpan(
                //     text: number,
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontFamily: "Poppins",
                //       fontSize: 18.sp,
                //     )),
                TextSpan(
                    text: title,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: text,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    )),
              ],
            ),
            // sent,
            // style: TextStyle(
            //   color: Colors.black,
            //   fontFamily: "Poppins",
            //   fontSize: 18.sp,
          ),
        ),
        // Row(
        //   children: [
        //     Text(title,
        //       style: TextStyle(
        //         fontSize: 18.sp,
        //         fontWeight: FontWeight.w600
        //       ),
        //     ),

        //     Text(text,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontFamily: "Poppins",
        //         fontSize: 18.sp,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
