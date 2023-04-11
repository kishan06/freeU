import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  bool notCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
                    "FAQ's",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                    border: notCollapsed
                        ? null
                        : Border.all(color: const Color(0xffCCCCCC)),
                    color:
                        notCollapsed ? const Color(0xff143C6D) : Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.all(15.h),
                  initiallyExpanded: notCollapsed,
                  onExpansionChanged: (value) {
                    setState(() {
                      notCollapsed = value;
                    });
                  },
                  trailing: Icon(
                    notCollapsed
                        ? Icons.remove_circle_outline_rounded
                        : Icons.add_circle_outline_rounded,
                    size: 18.sp,
                    color: notCollapsed ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'What is Free U?',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20.sp,
                        color: notCollapsed ? Colors.white : Colors.black),
                  ),
                  children: <Widget>[
                    Text(
                      "Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(15.h),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const FAQwidgets();
                  },
                  separatorBuilder: (context, index) {
                    return sizedBoxHeight(15.h);
                  },
                  itemCount: 6)
            ],
          ),
        ),
      ),
    );
  }
}

class FAQwidgets extends StatefulWidget {
  const FAQwidgets({super.key});

  @override
  State<FAQwidgets> createState() => _FAQwidgetsState();
}

class _FAQwidgetsState extends State<FAQwidgets> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return expansionFAQ();
  }

  Widget expansionFAQ() {
    return Container(
      decoration: BoxDecoration(
          border: isExpanded ? null : Border.all(color: Color(0xffCCCCCC)),
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
          'What is Free U?',
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20.sp,
              color: isExpanded ? Colors.white : Colors.black),
        ),
        children: <Widget>[
          Text(
            "Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.",
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
