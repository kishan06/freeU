import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextDropdown extends StatefulWidget {
  CustomTextDropdown({
    Key? key,
    this.hinttext,
    this.prefix,
    this.errortext,
    this.item,
    this.outlineColor = const Color(0xFFFFB600),
    required this.controller,
    required this.showDropDown,
    this.selectedValue,
    this.onInput,
  }) : super(key: key);
  final String? errortext;
  final TextEditingController controller;
  final String? prefix;
  final String? hinttext;
  final bool showDropDown;
  final Color outlineColor;
  final List<String>? item;
  final void Function(String)? onInput;
  String? selectedValue;
  @override
  State<CustomTextDropdown> createState() => _CustomTextDropdownState();
}

class _CustomTextDropdownState extends State<CustomTextDropdown> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final List<String> items =
    //     widget.item ?? ['Reetik', 'Hemant', 'Salman', 'Kisan', 'Chinmay'];

    return Column(
      children: [
        // SizedBox(
        //   height: 55.h,
        //   child: TextFormField(
        //     readOnly: true,
        //     onChanged: widget.onInput,
        //     textAlignVertical: TextAlignVertical.top,
        //     keyboardType: TextInputType.text,
        //     validator: (value) {
        //       if (value == null || value.isEmpty) {
        //         return widget.errortext ?? "Please Enter Data";
        //       }
        //       return null;
        //     },
        //     controller: controller,
        //     decoration: InputDecoration(
        //       filled: true,
        //       fillColor: Colors.white,
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(30),
        //         borderSide: BorderSide(color: Color(0xFF707070), width: 1),
        //       ),
        //       enabledBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(30),
        //         borderSide: BorderSide(color: Color(0xFF707070), width: 1),
        //       ),
        //       focusedBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(30),
        //         borderSide: BorderSide(color: widget.outlineColor, width: 1),
        //       ),
        //       errorBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(30),
        //         borderSide: const BorderSide(color: Colors.red, width: 1),
        //       ),
        //       focusedErrorBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(30),
        //         borderSide: const BorderSide(color: Colors.red, width: 1),
        //       ),
        //       suffixIcon: widget.showDropDown
        //           ? PopupMenuButton<String>(
        //               icon: const Icon(
        //                 Icons.keyboard_arrow_down,
        //                 color: Color(0xFFFFB600),
        //               ),
        //               offset: Offset.zero,
        //               position: PopupMenuPosition.under,
        //               onSelected: (String value) {
        //                 setState(() {
        //                   controller.text = value;
        //                 });
        //               },
        //               shape: const RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.all(
        //                 Radius.circular(10.0),
        //               )),
        //               itemBuilder: (BuildContext context) {
        //                 return items.map<PopupMenuItem<String>>((String value) {
        //                   return PopupMenuItem(
        //                       child: Container(
        //                           width: 200.w,
        //                           child: Text(
        //                             value,
        //                           )),
        //                       value: value);
        //                 }).toList();
        //               },
        //             )
        //           : null,
        //     ),
        //   ),
        // ),
        SizedBox(
          height: 55.h,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF707070),
                ),
                color: Colors.white,
              ),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black26,
                ),
                color: Colors.white,
              ),
              hint: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.selectedValue ?? "Select",
                      style: TextStyle(
                          color: Color(0x80000000),
                          fontSize: 16.sp,
                          fontFamily: "Poppins"),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              buttonPadding: const EdgeInsets.only(left: 10, right: 14),
              value: widget.selectedValue,
              onChanged: (value) {
                setState(() {
                  widget.selectedValue = value;
                });
              },
              isExpanded: true,
              items: widget.item!
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 14.sm,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
