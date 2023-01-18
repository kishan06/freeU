import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    Key? key,
    this.validator,
    this.inputFormatters,
    required this.hintText,
    required this.validatorText,
    this.textEditingController,
    this.leadingIcon,
    this.readonly = false,
    this.isInputPassword = false,
    this.outlineColor = const Color(0xFFFFB600),
  }) : super(key: key);

  final dynamic validator;
  final TextEditingController? textEditingController;
  final String hintText;
  final String validatorText;
  final Widget? leadingIcon;
  final bool isInputPassword;
  final bool readonly;
  final dynamic inputFormatters;
  final Color outlineColor;

  @override
  State<CustomTextFormField> createState() => _CustomtextFormFieldState();
}

class _CustomtextFormFieldState extends State<CustomTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isInputPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        readOnly: widget.readonly,
        cursorColor: const Color(0xFFFFB600),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText,
        controller: widget.textEditingController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Color(0xFF707070), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Color(0xFF707070), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: widget.outlineColor, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          hintStyle: const TextStyle(color: Color(0x80000000), fontSize: 14),
          hintText: widget.hintText,
          prefixIcon: widget.leadingIcon == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: widget.leadingIcon!,
                ),
          suffixIcon: widget.isInputPassword
              ? GestureDetector(
                  onTap: () => setState(() => obscureText = !obscureText),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          "show",
                          style: TextStyle(
                            color: Color(0xFFFFB600),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              //  IconButton(
              //     onPressed: () => setState(() => obscureText = !obscureText),
              //     icon: Icon(
              //       obscureText ? Icons.visibility_off : Icons.visibility,
              //       color: Colors.black.withOpacity(0.5),
              //     ),
              //   )
              : null,
        ),
        validator: widget.validator,
        inputFormatters: widget.inputFormatters);
  }
}
