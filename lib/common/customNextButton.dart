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
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          // ignore: deprecated_member_use
          primary: colorchange ? Colors.white : const Color(0xFFFFB600),
          shape: RoundedRectangleBorder(
            side: colorchange
                ? BorderSide(color: Color(0xFF707070))
                : BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: colorchange ? Color(0xFF303030) : Colors.white,
            fontSize: 16.sm,
            fontFamily: 'Productsans',
          ),
        ),
        onPressed: () {
          ontap!();
        },
      ),
    );
  }
}
