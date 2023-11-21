import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/cat_controller.dart';
import 'package:get/get.dart' hide FormData;

class CatFilter extends StatefulWidget {
  const CatFilter({super.key});

  @override
  State<CatFilter> createState() => _CatFilterState();
}

class _CatFilterState extends State<CatFilter> {
  List<int> selectedValues = [];
  CatController controllerCat = Get.put(CatController());

  void handleCheckboxValue(int value) {
    setState(() {
      // if (value != 0) {
      //   selectedValues.add(value);
      // } else {
      //   selectedValues.remove(value);
      // }

      print(value);
      if (value != 0) {
        if (selectedValues.contains(value)) {
          selectedValues.remove(value);
        } else {
          selectedValues.add(value);
        }
      }
      print(selectedValues);
    });
  }

//   filterapicall() async {
//     utils.loader();
//     FormData formData = FormData.fromMap({"filter[]": selectedValues});
//     print("selected value is $selectedValues");
// // log(formData.fields.toString() as num);
//     final data = await Filtercategories().Postfilter(formData);
//     if (data.status == ResponseStatus.SUCCESS) {
//       print("filter added");
//       Get.back();
//       Get.back();
//       return utils.showToast(data.message);
//     } else {
//       print("filter is not added");
//       Get.back();
//       return utils.showToast(data.message);
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                sizedBoxHeight(15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Filters',
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                        height: 40.h,
                        width: 90.w,
                        child: CustomNextButton(
                            ontap: () {
                              // Get.back();
                              // filterapicall();
                              print("selected value is $selectedValues");
                              if (selectedValues.isEmpty) {
                                Flushbar(
                                  message: "Select minimum investment",
                                  duration: Duration(seconds: 3),
                                ).show(context);
                              } else {
                                controllerCat.getfilterData(
                                    filters: selectedValues);
                              }

                              // controllerCat.getfilterData(
                              //     filters: selectedValues);
                            },
                            text: 'Save'))
                  ],
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(100)),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Minimum Investment',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500)),
            ListWidget(
                txt: 'Less than 1,00,000',
                valueOnSelect: 1,
                onCheckboxSelected: handleCheckboxValue),
            ListWidget(
              txt: 'More than 1,00,000 and Upto 5,00,000',
              valueOnSelect: 2,
              onCheckboxSelected: handleCheckboxValue,
            ),
            ListWidget(
              txt: 'More than 5,00,000 and Upto 25,00,000',
              valueOnSelect: 3,
              onCheckboxSelected: handleCheckboxValue,
            ),
            ListWidget(
              txt: 'More than 25,00,000 and Upto 50,00,000',
              valueOnSelect: 4,
              onCheckboxSelected: handleCheckboxValue,
            ),
            ListWidget(
              txt: 'More than 50,00,000',
              valueOnSelect: 5,
              onCheckboxSelected: handleCheckboxValue,
            ),
            Divider(),
            // Text('Investment Horizon',
            //     style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500)),
            // ListWidget(txt: 'Upto 1 Year'),
            // ListWidget(txt: 'More than 1 Year and Upto 3 Years'),
            // ListWidget(txt: 'More than 3 Years and Upto 5 Years'),
            // ListWidget(txt: 'More than 5 Years'),
            // Divider(),
            // Text('Expected Return',
            //     style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500)),
            // ListWidget(txt: 'Upto 12% p.a.'),
            // ListWidget(txt: 'More than 12% and Upto 16% p.a.'),
            // ListWidget(txt: 'More than 16% and Upto 20% p.a.'),
            // ListWidget(txt: 'More than 20% p.a.'),
            sizedBoxHeight(30.h)
          ],
        ),
      ),
    );
  }
}

// class ListWidget extends StatefulWidget {
//   final String txt;
//   ListWidget({super.key, required this.txt});

//   @override
//   State<ListWidget> createState() => _ListWidgetState();
// }

// class _ListWidgetState extends State<ListWidget> {
//   bool selected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16.w),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Flexible(child: text18Grey(widget.txt)),
//           Checkbox(
//             value: selected,
//             onChanged: (value) {
//               setState(() {
//                 selected = !selected;
//                 print(selected);
//               });
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

class ListWidget extends StatefulWidget {
  final String txt;
  final int valueOnSelect;
  final ValueChanged<int> onCheckboxSelected;

  ListWidget(
      {super.key,
      required this.txt,
      this.valueOnSelect = 1,
      required this.onCheckboxSelected});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: text18Grey(widget.txt)),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Checkbox(
              value: selected,
              onChanged: (value) {
                setState(() {
                  selected = !selected;
                  widget.onCheckboxSelected(
                      selected ? widget.valueOnSelect : widget.valueOnSelect);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
