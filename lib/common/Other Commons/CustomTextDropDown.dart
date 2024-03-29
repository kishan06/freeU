import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextDropdown extends StatefulWidget {
  CustomTextDropdown({
    Key? key,
    this.hinttext,
    this.prefix,
    this.errortext,
    this.item,
    this.controller,
    this.outlineColor = const Color(0xFFFFB600),
    required this.showDropDown,
    this.selectedValue,
    this.onInput,
  }) : super(key: key);
  final String? errortext;
  final String? prefix;
  final String? hinttext;
  final TextEditingController? controller;
  final bool showDropDown;
  final Color outlineColor;
  final List<String>? item;
  final Function(String)? onInput;
  String? selectedValue;
  @override
  State<CustomTextDropdown> createState() => _CustomTextDropdownState();
}

class _CustomTextDropdownState extends State<CustomTextDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffCCCCCC)),
        borderRadius: BorderRadius.circular(
          10.r,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 45.h,
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black26.withOpacity(0),
                  ),
                  color: Colors.white,
                ),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.white,
                ),
                hint:
                 Row(
  children: [
    Expanded(
      child: Text(
        widget.selectedValue ?? widget.hinttext ?? "", // Use the hint text if selectedValue is null
        style: 
        widget.selectedValue != null ?

        TextStyle(
          fontSize: 16.sp,
          color: Colors.black,
        )
        :
        TextStyle(
            color: Color(0x80000000), fontSize: 16.sp, fontFamily: "Poppins"),

        overflow: TextOverflow.ellipsis,
      ),
    ),
  ],
),

                //  Row(
                //   children: [
                //     Expanded(
                //       child: Text(
                //         widget.selectedValue ?? "",
                //         style: TextStyle(
                //           fontSize: 16.sp,
                //           color: Colors.black,
                //         ),
                //         overflow: TextOverflow.ellipsis,
                //       ),
                //     ),
                //   ],
                // ),
                buttonPadding: const EdgeInsets.only(left: 0, right: 14),
                value: widget.selectedValue,
                onChanged: (value1) {
                  widget.onInput?.call(value1 ?? "");
                  setState(() {
                    widget.selectedValue = value1;
                    widget.controller?.text =  value1 ?? "";
                  });
                },
                isExpanded: true,
                items: widget.item!
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
