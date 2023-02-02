import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    Key? key,
    GlobalKey<FormState>? form,
    this.ontap,
    required this.text,
    this.colorchange = false,
  }) : super(key: key);

  final bool colorchange;
  final GestureTapCallback? ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330.w,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shadowColor: Color.fromARGB(181, 239, 239, 245),
          backgroundColor: Color(0xFFFFB600),
          //  color: Color(0xFFFFB600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 16.sm, fontFamily: 'Poppins'),
        ),
        onPressed: () {
          ontap!();
        },
      ),
    );
  }
}
