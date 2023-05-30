import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class CatFilter extends StatefulWidget {
  const CatFilter({super.key});

  @override
  State<CatFilter> createState() => _CatFilterState();
}

class _CatFilterState extends State<CatFilter> {
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
                              Get.back();
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
            ListWidget(txt: 'Less than 1,00,000'),
            ListWidget(txt: 'More than 1,00,000 and Upto 5,00,000'),
            ListWidget(txt: 'More than 5,00,000 and Upto 25,00,000'),
            ListWidget(txt: 'More than 25,00,000 and Upto 50,00,000'),
            ListWidget(txt: 'More than 50,00,000'),
            Divider(),
            Text('Investment Horizon',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500)),
            ListWidget(txt: 'Upto 1 Year'),
            ListWidget(txt: 'More than 1 Year and Upto 3 Years'),
            ListWidget(txt: 'More than 3 Years and Upto 5 Years'),
            ListWidget(txt: 'More than 5 Years'),
            Divider(),
            Text('Expected Return',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500)),
            ListWidget(txt: 'Upto 12% p.a.'),
            ListWidget(txt: 'More than 12% and Upto 16% p.a.'),
            ListWidget(txt: 'More than 16% and Upto 20% p.a.'),
            ListWidget(txt: 'More than 20% p.a.'),
            sizedBoxHeight(30.h)
          ],
        ),
      ),
    );
  }
}

class ListWidget extends StatefulWidget {
  final String txt;
  ListWidget({super.key, required this.txt});

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
        children: [
          Flexible(child: text18Grey(widget.txt)),
          Checkbox(
            value: selected,
            onChanged: (value) {
              setState(() {
                selected = !selected;
                print(selected);
              });
            },
          )
        ],
      ),
    );
  }
}
