// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:freeu/common/signupAppbar.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "FAQ's",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
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
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
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
                                  color: Color(0xff414141),
                                  fontSize: 12,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
