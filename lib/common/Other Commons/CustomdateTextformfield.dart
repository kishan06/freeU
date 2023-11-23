import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomDateTextFormField extends StatefulWidget {
  CustomDateTextFormField(
      {Key? key,
      this.validator,
      this.inputFormatters,
      required this.hintText,
      required this.validatorText,
      required this.ontap,
      this.textEditingController,
      this.leadingIcon,
      this.readonly = false,
      this.textCapital = false,
      this.isInputPassword = false,
      this.outlineColor = const Color(0xFFFFB600),
      this.texttype,
      this.onInput})
      : super(key: key);

  dynamic validator;
  final TextEditingController? textEditingController;
  final String hintText;
  final String validatorText;
  final Widget? leadingIcon;
  final bool isInputPassword;
  final bool readonly;
  final bool textCapital;
  final dynamic inputFormatters;
  final Color outlineColor;
  final TextInputType? texttype;
  final GestureTapCallback ontap;
  Function(String)? onInput;
  @override
  State<CustomDateTextFormField> createState() =>
      _CustomDatetextFormFieldState();
}

class _CustomDatetextFormFieldState extends State<CustomDateTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isInputPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: widget.textCapital
          ? TextCapitalization.characters
          : TextCapitalization.none,
      style: TextStyle(
        fontSize: 16.sp,
      ),
      onTap: (() => widget.ontap()),
      readOnly: true,
      cursorColor: const Color(0xFF1B8DC9),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      controller: widget.textEditingController,
      decoration: InputDecoration(
        errorStyle: TextStyle(fontSize: 12.sp),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFFCCCCCC), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFFCCCCCC), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFF707070), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        hintStyle: TextStyle(
            color: Color(0x80000000), fontSize: 16.sp, fontFamily: "Poppins"),
        hintText: widget.hintText,
        prefixIcon: widget.leadingIcon == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: widget.leadingIcon!,
              ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month_outlined
              // color: Color(0xFF008083),
              ),
          onPressed: () {
            widget.ontap();
          },
        ),
      ),
      keyboardType: widget.texttype,
      validator: widget.validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "Empty value";
            }
            return null;
          },
      inputFormatters: widget.inputFormatters,
      onChanged: (value) {
        widget.onInput?.call(value);
      },
    );
  }
}
