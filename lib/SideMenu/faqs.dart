// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  bool _customTileExpanded = false;
  bool _customTileExpanded1 = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  bool _customTileExpanded4 = false;
  bool _customTileExpanded5 = false;
  bool _customTileExpanded6 = false;
  bool _customTileExpanded7 = false;
  bool _customTileExpanded8 = false;
  bool _customTileExpanded9 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
              SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/faq.png',
                    width: 90,
                    height: 120,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded1 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded1 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded2 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded2 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded3 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded3 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded4 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded4 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded5 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded5 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded6 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded6 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded7 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded7 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded8 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded8 = expanded);
                      },
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff414141),
                                  fontSize: 16.sm,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 182, 182, 182),
                        width: 1,
                      ),
                    )),
                    child: ExpansionTile(
                      title: SizedBox(
                        height: 30,
                        child: Text(
                          'What is Free U?',
                          style: TextStyle(
                            fontSize: 18.sm,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff000000),
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(
                          _customTileExpanded9 ? Icons.remove : Icons.add,
                          size: 13,
                          color: Color(0xff000000),
                        ),
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded9 = expanded);
                      },
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Free U is a tech enabled commercial real estate investment platform that allows its users to access Grade A commercial, retail, and warehousing assets tenanted to multinational tenants.',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Color(0xff414141),
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
