// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int selectIndex = 0;
  final List<String> imageUrls = [
    "https://via.placeholder.com/300x200.png?text=Image+1",
    "https://via.placeholder.com/300x200.png?text=Image+2",
    "https://via.placeholder.com/300x200.png?text=Image+3",
  ];
  PageController indicatorcontroller2 = PageController(
    viewportFraction: 0.95,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "About FreeU",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/employees.png',
                width: 100.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'About Us',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Color(0xff131313),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/13536.png',
                    width: 60.w,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Experience',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.sm,
                        ),
                      ),
                      Text(
                        'Our Great team of more than\n1400 Software experts',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14.sm,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/13540.png',
                    width: 60.w,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Quick Support',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "We'll help you test bold new\nideas while Sharing your",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Our Great Team',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff131313),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Image.asset(
                        'assets/images/team01.png',
                        // height: 180.h,
                        width: 100.w,
                      )),
                  SizedBox(
                    width: 15.w,
                  ),
                  Flexible(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Lorem ipsum contains the type of face more in use an aspect that allows you to have an overviewed of the rendering of the text',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff143C6D))),
                          SizedBox(height: 8),
                          Text('- Rushabh Parekh',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff143C6D))),
                          Text(
                            '  Founder, CEO',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff143C6D)),
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Meet Our Experts',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          // borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color(0xFFffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFBDBBBB),
                              blurRadius: 20.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/team02.png'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Priyanka Joshi',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'CX Consultant',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          // borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color(0xFFffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 189, 187, 187),
                              blurRadius: 20.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/team03.png'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Raj shinde',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'UI Developer',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Business Partners /\nAssociated Professionals',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 167.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 145.h,
                      child: PageView.builder(
                        controller: indicatorcontroller2,
                        itemCount: 4,
                        itemBuilder: (
                          BuildContext context,
                          int index1,
                        ) {
                          if (index1 == 0) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/amazon.png',
                                  height: 100.h,
                                  width: 185.w,
                                )
                              ],
                            );
                          } //2nd plan
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/amazon.png',
                                height: 100.h,
                                width: 185.w,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: indicatorcontroller2,
                      count: 4,
                      effect: ExpandingDotsEffect(
                          dotHeight: 5,
                          dotWidth: 5,
                          radius: 50,
                          activeDotColor: Color(0xFF153D6D),
                          dotColor: Color(0xFF153D6D).withOpacity(0.4)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
