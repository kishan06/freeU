import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Models/FAQ/FAQModel.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class Fractional1 extends StatefulWidget {
  Fractional1({super.key, this.title, this.faqslist});

  String? title;

  List<Faq>? faqslist;
  @override
  State<Fractional1> createState() => _Fractional1State();
}

class _Fractional1State extends State<Fractional1> {
  List<bool> notCollapsedList = [];

  @override
  void initState() {
    notCollapsedList = List.generate(widget.faqslist!.length, (index) => true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.sp,
                      color: const Color(0xff000000),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  widget.title ?? "",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return _buildBody(
                        widget.faqslist![index].faqQuestion,
                        widget.faqslist![index].faqAnswer,
                        notCollapsedList[index]);
                  },
                  separatorBuilder: (_, index) {
                    return sizedBoxHeight(10.h);
                  },
                  itemCount: widget.faqslist?.length ?? 0),
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildBody(question, answers, notCollapsed) {
    return FaqBox(
      contentString: answers,
      titleString: question,
    );
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     SizedBox(
    //       height: 20.h,
    //     ),
    //     Container(
    //       decoration: BoxDecoration(
    //           border: notCollapsed
    //               ? null
    //               : Border.all(color: const Color(0xffCCCCCC)),
    //           color: notCollapsed ? const Color(0xff143C6D) : Colors.white,
    //           borderRadius: BorderRadius.circular(10.r)),
    //       child: ExpansionTile(
    //         childrenPadding: EdgeInsets.all(15.h),
    //         initiallyExpanded: notCollapsed,
    //         onExpansionChanged: (value) {
    //           setState(() {
    //             notCollapsed = value;
    //           });
    //         },
    //         trailing: Icon(
    //           notCollapsed
    //               ? Icons.remove_circle_outline_rounded
    //               : Icons.add_circle_outline_rounded,
    //           size: 18.sp,
    //           color: notCollapsed ? Colors.white : Colors.black,
    //         ),
    //         title: Text(
    //           question ?? "",
    //           style: TextStyle(
    //               fontFamily: "Poppins",
    //               fontSize: 20.sp,
    //               color: notCollapsed ? Colors.white : Colors.black),
    //         ),
    //         children: <Widget>[
    //           Text(
    //             answers ?? "",
    //             style: TextStyle(
    //                 color: Colors.white,
    //                 fontFamily: "Poppins",
    //                 fontSize: 16.sp,
    //                 fontWeight: FontWeight.w300),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}

class FaqBox extends StatefulWidget {
  final String titleString;
  final String contentString;
  FaqBox({super.key, required this.titleString, required this.contentString});

  @override
  State<FaqBox> createState() => _FaqBoxState();
}

class _FaqBoxState extends State<FaqBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              isExpanded ? null : Border.all(color: const Color(0xffCCCCCC)),
          color: isExpanded ? const Color(0xff143C6D) : Colors.white,
          borderRadius: BorderRadius.circular(10.r)),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(15.h),
        initiallyExpanded: isExpanded,
        onExpansionChanged: (bool expanding) {
          setState(() {
            isExpanded = expanding;
          });
        },
        trailing: Icon(
          isExpanded
              ? Icons.remove_circle_outline_rounded
              : Icons.add_circle_outline_rounded,
          size: 18.sp,
          color: isExpanded ? Colors.white : Colors.black,
        ),
        title: Text(
          widget.titleString,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20.sp,
              color: isExpanded ? Colors.white : Colors.black),
        ),
        children: <Widget>[
          Text(
            widget.contentString,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
