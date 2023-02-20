// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Color(0xFF6B6B6B),
                      )),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "FAQ's",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 20.sm),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/FAQ .png',
                  width: 90,
                  height: 120,
                )
              ),
              SizedBox(height: 20,),
              Accordion(
                paddingListBottom: 0,
                paddingListTop: 0,
                paddingListHorizontal: 0,
                disableScrolling: true,
                maxOpenSections: 1,
                scaleWhenAnimating: true,
                openAndCloseAnimation: true,
                // headerPadding:
                //     const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                sectionClosingHapticFeedback: SectionHapticFeedback.light,
                children: [
                  AccordionSection(
                    scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                    isOpen: true,
                    headerBackgroundColor: Color.fromARGB(3, 255, 255, 255),
                    headerBackgroundColorOpened: Color(0xFFD8EEFD),
                    contentBackgroundColor: Color(0xFFD8EEFD),
                    contentBorderColor: Color(0xFFD8EEFD),
                    contentBorderRadius: 10,
                    headerBorderRadius: 10,
                    rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                    header: Text(
                      'What is Free U?',
                      style: TextStyle(
                        color: Color(0xFF1B8DC9),
                        fontFamily: "Poppins",
                        fontSize: 18.sm,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    content: Column(
                      children: [
                        Text(
                          "Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 83, 82, 82),
                            fontFamily: "Poppins",
                            fontSize: 15.sm,
                          ),
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 10,
                    // onOpenSection: () => print('onOpenSection ...'),
                    // onCloseSection: () => print('onCloseSection ...'),
                  ),
                  AccordionSection(
                    scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                    isOpen: false,
                    headerBackgroundColor: Color.fromARGB(3, 255, 255, 255),
                    headerBackgroundColorOpened: Color(0xFFD8EEFD),
                    contentBackgroundColor: Color(0xFFD8EEFD),
                    contentBorderColor: Color(0xFFD8EEFD),
                    contentBorderRadius: 10,
                    headerBorderRadius: 10,
                    rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                    header: Text(
                      'What is Free U?',
                      style: TextStyle(
                        color: Color(0xFF1B8DC9),
                        fontFamily: "Poppins",
                        fontSize: 18.sm,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    content: Column(
                      children: [
                        Text(
                          "Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 83, 82, 82),
                            fontFamily: "Poppins",
                            fontSize: 15.sm,
                          ),
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 10,
                    // onOpenSection: () => print('onOpenSection ...'),
                    // onCloseSection: () => print('onCloseSection ...'),
                  ),
                  AccordionSection(
                    scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                    isOpen: false,
                    headerBackgroundColor: Color.fromARGB(3, 255, 255, 255),
                    headerBackgroundColorOpened: Color(0xFFD8EEFD),
                    contentBackgroundColor: Color(0xFFD8EEFD),
                    contentBorderColor: Color(0xFFD8EEFD),
                    contentBorderRadius: 10,
                    headerBorderRadius: 10,
                    rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                    header: Text(
                      'What is Free U?',
                      style: TextStyle(
                        color: Color(0xFF1B8DC9),
                        fontFamily: "Poppins",
                        fontSize: 18.sm,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    content: Column(
                      children: [
                        Text(
                          "Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 83, 82, 82),
                            fontFamily: "Poppins",
                            fontSize: 15.sm,
                          ),
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 10,
                    // onOpenSection: () => print('onOpenSection ...'),
                    // onCloseSection: () => print('onCloseSection ...'),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class common_ctn extends StatelessWidget {
  const common_ctn({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SvgPicture.asset(
            "assets/images/bullet point.svg",
            width: 13.w,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          text,
          style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
        )
      ],
    );
  }
}
