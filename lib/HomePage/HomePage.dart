// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  PageController indicatorcontroller = PageController(
    viewportFraction: 0.97,
  );
  PageController categoriescontroller = PageController(
    viewportFraction: 0.55,
  );
  PageController investmentcontroller = PageController(
    viewportFraction: 0.9,
  );
  PageController pickcontroller = PageController(
    viewportFraction: 0.70,
  );
  PageController recommendedcontroller = PageController(
    viewportFraction: 0.99,
  );

  void _selectedTab(int index) {
    setState(() {
      // _lastSelected = 'TAB: $index';
      // print(_lastSelected);

      switch (index) {
        case 0:
          {
            Get.toNamed("/homepage");
          }
          break;

        case 1:
          {
            Get.toNamed('/categoriesmain');
          }
          break;

        case 2:
          {
            Get.toNamed('/investmentmain');
          }
          break;
        case 3:
          {
            Get.toNamed('/chatpage');
          }
          break;
        case 4:
          {
            Get.toNamed('/myprofile');
          }
          break;
        default:
          {
            throw Error();
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F8FA),
      appBar: AppBar(
        title: Text(
          'Welcome',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 19.sm,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        backgroundColor: Color(0xFFF5F8FA),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              icon: SvgPicture.asset("assets/images/menu.svg"),
              color: Colors.black,
              iconSize: 25,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/notificationpage');
            },
            icon: SvgPicture.asset(
              'assets/images/notification-bell-svgrepo-com.svg',
            ),
            iconSize: 22,
            color: const Color(0xFF303030),
          ),
        ],
      ),
      bottomNavigationBar:
          CreateBottomBar(stateBottomNav, "BottombarHomepage", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 167.h,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFCFEFFF),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          blurRadius: 10,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 148.h,
                        child: PageView.builder(
                          controller: indicatorcontroller,
                          itemCount: 3,
                          itemBuilder: (
                            BuildContext context,
                            int index1,
                          ) {
                            bool isMyPageIndex = selectIndex == index1;
                            if (index1 == 0) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 6, right: 0, bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Invest for Future\nin Stable Platform\nand Make\nFast Money',
                                          style: TextStyle(
                                              fontSize: 14.sm,
                                              fontFamily: 'Poppins'),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor: Colors.white,
                                              // color: Color(0xFFFF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            onPressed: () {
                                              Get.toNamed('/categoriesmain');
                                            },
                                            child: Text(
                                              'Invest Now',
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 13.sm,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/persongraph.svg",
                                          height: 100,
                                          width: 200,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            } //2nd plan
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: 10.0, left: 6, right: 0, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Invest for Future\nin Stable Platform\nand Make\nFast Money',
                                        style: TextStyle(
                                            fontSize: 14.sm,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Colors.white,
                                            // color: Color(0xFFFF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          onPressed: () {
                                            Get.toNamed('/categoriesmain');
                                          },
                                          child: Text(
                                            'Invest Now',
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 13.sm,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/persongraph.svg",
                                        height: 100,
                                        width: 200,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: indicatorcontroller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          dotHeight: 7.h,
                          dotWidth: 7.w,
                          activeDotColor: Color(0xFF153D6D),
                          dotColor: Color(0xFF153D6D).withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      titleText("Your Investments"),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 150.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(5),
                        width: Get.width * 0.85,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.06),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                  color: Color(0xFF1B8DC9),
                                ),
                                width: 15.w,
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Flexible(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text(
                                        "Chennai Office Opportunity",
                                        style: blackStyle15().copyWith(
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Spacer(),
                                    Flexible(
                                      flex: 2,
                                      child: Text(
                                        "??? 25,00,000",
                                        style: blackStyle14().copyWith(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Text(
                                        "Invested",
                                        style: blackStyle14(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: DougnutChart(),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 149.h,
                  //   child: PageView.builder(
                  //     padEnds: false,
                  //     controller: investmentcontroller,
                  //     itemCount: 2,
                  //     itemBuilder: (
                  //       BuildContext context,
                  //       int index1,
                  //     ) {
                  //       bool isMyPageIndex = selectIndex == index1;
                  //       if (index1 == 0) {
                  //         return Card(
                  //           elevation: 2,
                  //           shadowColor: Colors.black.withOpacity(0.2),
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(15),
                  //           ),
                  //           child: Row(
                  //             children: [
                  //               Container(
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.only(
                  //                     topLeft: Radius.circular(15),
                  //                     bottomLeft: Radius.circular(15),
                  //                   ),
                  //                   color: Color(0xFF1B8DC9),
                  //                 ),
                  //                 width: 15.w,
                  //               ),
                  //               SizedBox(
                  //                 width: 30.w,
                  //               ),
                  //               Flexible(
                  //                 flex: 1,
                  //                 child: Column(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceEvenly,
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     SizedBox(
                  //                       height: 6.h,
                  //                     ),
                  //                     Flexible(
                  //                       flex: 3,
                  //                       child: Text(
                  //                         "Chennai Office Opportunity",
                  //                         style: blackStyle15().copyWith(
                  //                             fontWeight: FontWeight.w300),
                  //                       ),
                  //                     ),
                  //                     Spacer(),
                  //                     Flexible(
                  //                       flex: 2,
                  //                       child: Text(
                  //                         "??? 25,00,000",
                  //                         style: blackStyle14().copyWith(
                  //                             fontWeight: FontWeight.w500),
                  //                       ),
                  //                     ),
                  //                     Flexible(
                  //                       flex: 2,
                  //                       child: Text(
                  //                         "Invested",
                  //                         style: blackStyle14(),
                  //                       ),
                  //                     ),
                  //                     SizedBox(
                  //                       height: 6.h,
                  //                     )
                  //                   ],
                  //                 ),
                  //               ),
                  //               Flexible(
                  //                 flex: 1,
                  //                 child: SizedBox(
                  //                     height: 200,
                  //                     width: 200,
                  //                     child: DougnutChart()),
                  //               ),
                  //               SizedBox(
                  //                 width: 10.w,
                  //               )
                  //             ],
                  //           ),
                  //         );
                  //       } //2nd plan
                  //       return Card(
                  //         elevation: 2,
                  //         shadowColor: Colors.black.withOpacity(0.2),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         child: Row(
                  //           children: [
                  //             Container(
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.only(
                  //                   topLeft: Radius.circular(15),
                  //                   bottomLeft: Radius.circular(15),
                  //                 ),
                  //                 color: Color(0xFF1B8DC9),
                  //               ),
                  //               width: 15.w,
                  //             ),
                  //             SizedBox(
                  //               width: 30.w,
                  //             ),
                  //             Flexible(
                  //               flex: 1,
                  //               child: Column(
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceEvenly,
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   SizedBox(
                  //                     height: 6.h,
                  //                   ),
                  //                   Flexible(
                  //                     flex: 3,
                  //                     child: Text(
                  //                       "Chennai Office Opportunity",
                  //                       style: blackStyle15().copyWith(
                  //                           fontWeight: FontWeight.w300),
                  //                     ),
                  //                   ),
                  //                   Spacer(),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     child: Text(
                  //                       "??? 25,00,000",
                  //                       style: blackStyle14().copyWith(
                  //                           fontWeight: FontWeight.w500),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     child: Text(
                  //                       "Invested",
                  //                       style: blackStyle14(),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 6.h,
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //             Flexible(
                  //               flex: 1,
                  //               child: SizedBox(
                  //                   height: 200,
                  //                   width: 200,
                  //                   child: DougnutChart()),
                  //             ),
                  //             SizedBox(
                  //               width: 10.w,
                  //             )
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 4.0, top: 12, bottom: 12, right: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleText('Categories'),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed('/fractionalrealestateproperty1');
                              },
                              child: Container(
                                // elevation: 2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.06),
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                      )
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/real-estate.png",
                                        height: 50,
                                        width: 50,
                                      ),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                      Text(
                                        'Fractional Real Estate',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16.sm,
                                            fontFamily: 'Poppins'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: SizedBox(
                              width: 10,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed('/peerlendingasset1');
                              },
                              child: Container(
                                // elevation: 2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.06),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/blockchain.png",
                                        height: 50,
                                        width: 50,
                                      ),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                      Text(
                                        'Peer- Peer\n lending',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16.sm,
                                            fontFamily: 'Poppins'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      titleText("Top Pick"),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),

                  // SizedBox(
                  //   height: 290,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(10),
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.black.withOpacity(0.15),
                  //             spreadRadius: 2,
                  //             blurRadius: 10,
                  //           )
                  //         ]),
                  //     child: Padding(
                  //       padding: EdgeInsets.only(top: 0),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Image.asset(
                  //             'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
                  //             fit: BoxFit.cover,
                  //             width: double.infinity,
                  //           ),
                  //           SizedBox(
                  //             height: 10,
                  //           ),
                  //           Text(
                  //             'Vaishnavi Tech Park Opportunity',
                  //             style: blackStyle15(),
                  //           ),
                  //           SizedBox(
                  //             height: 7.h,
                  //           ),
                  //           Row(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Flexible(
                  //                 child: Icon(
                  //                   Icons.location_on_outlined,
                  //                   size: 18.sm,
                  //                   color: Color(0xFF707070),
                  //                 ),
                  //               ),
                  //               // SizedBox(
                  //               //   width: 4.w,
                  //               // ),
                  //               Flexible(
                  //                 flex: 4,
                  //                 child: Text(
                  //                   'Outer Ring Road Sarjapur, Bangalore',
                  //                   style: blackStyle12().copyWith(
                  //                     color: Color(0xFF707070),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 8.h,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // )
                  //
                  //
                  //
                  //
                  //
                  //
                  SizedBox(
                    height: 310.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(10),
                        width: Get.width * 0.65,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.06),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 0.0, left: 0, right: 0, bottom: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      child: Image.asset(
                                        'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 150,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Fractional Real Estate',
                                              style: blackStyle14().copyWith(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Vaishnavi Tech Park Opportunity',
                                    style:
                                        blackStyle15().copyWith(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Icon(
                                          Icons.location_on_outlined,
                                          size: 22,
                                          color: Color(0xFF707070),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 4.w,
                                      // ),
                                      Flexible(
                                        flex: 4,
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Outer Ring Road Sarjapur, Bangalore',
                                            style: blackStyle12().copyWith(
                                                color: Color(0xFF707070),
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 290,
                  //   child: ListView.builder(
                  //     // controller: pickcontroller,
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: 2,
                  //     itemBuilder: (
                  //       BuildContext context,
                  //       int index1,
                  //     ) {
                  //       bool isMyPageIndex = selectIndex == index1;
                  //       if (index1 == 0) {
                  //         return Card(
                  //           elevation: 2,
                  //           color: Color(0xFFFFFFFF),
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(15),
                  //           ),
                  //           child: Padding(
                  //             padding: EdgeInsets.only(
                  //                 top: 14.0, left: 15, right: 15, bottom: 6),
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   'Fractional Real Estate',
                  //                   style: blackStyle14()
                  //                       .copyWith(fontWeight: FontWeight.w400),
                  //                 ),
                  //                 SizedBox(
                  //                   height: 10,
                  //                 ),
                  //                 Image.asset(
                  //                   'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
                  //                   fit: BoxFit.cover,
                  //                   width: double.infinity,
                  //                 ),
                  //                 SizedBox(
                  //                   height: 10,
                  //                 ),
                  //                 Text(
                  //                   'Vaishnavi Tech Park Opportunity',
                  //                   style: blackStyle15(),
                  //                 ),
                  //                 SizedBox(
                  //                   height: 8,
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   mainAxisAlignment: MainAxisAlignment.start,
                  //                   children: [
                  //                     Flexible(
                  //                       child: Icon(
                  //                         Icons.location_on_outlined,
                  //                         size: 18.sm,
                  //                         color: Color(0xFF707070),
                  //                       ),
                  //                     ),
                  //                     // SizedBox(
                  //                     //   width: 4.w,
                  //                     // ),
                  //                     Flexible(
                  //                       flex: 4,
                  //                       child: Text(
                  //                         'Outer Ring Road Sarjapur, Bangalore',
                  //                         style: blackStyle12().copyWith(
                  //                           color: Color(0xFF707070),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 8.h,
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         );
                  //       } //2nd plan
                  //       return Card(
                  //         elevation: 2,
                  //         color: Color(0xFFFFFFFF),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         child: Padding(
                  //           padding: EdgeInsets.only(
                  //               top: 14.0, left: 15, right: 15, bottom: 6),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 'Fractional Real Estate',
                  //                 style: blackStyle14()
                  //                     .copyWith(fontWeight: FontWeight.w400),
                  //               ),
                  //               SizedBox(
                  //                 height: 10.h,
                  //               ),
                  //               Image.asset(
                  //                 'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
                  //               ),
                  //               SizedBox(
                  //                 height: 9.h,
                  //               ),
                  //               Text(
                  //                 'Vaishnavi Tech Park Opportunity',
                  //                 style: blackStyle15(),
                  //               ),
                  //               SizedBox(
                  //                 height: 7.h,
                  //               ),
                  //               Row(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Flexible(
                  //                     child: Icon(
                  //                       Icons.location_on_outlined,
                  //                       size: 18.sm,
                  //                       color: Color(0xFF707070),
                  //                     ),
                  //                   ),
                  //                   // SizedBox(
                  //                   //   width: 4.w,
                  //                   // ),
                  //                   Flexible(
                  //                     flex: 4,
                  //                     child: Text(
                  //                       'Outer Ring Road Sarjapur, Bangalore',
                  //                       style: blackStyle12().copyWith(
                  //                         color: Color(0xFF707070),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SizedBox(
                  //                 height: 8.h,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      titleText("Recommended"),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 320,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Get.toNamed("/fractionalrealestateproperty2");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: Get.width * 0.85,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.06),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 0.0, left: 0, right: 0, bottom: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFCFEFFF),
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.06),
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                          )
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                                      child: Text(
                                        'Fractional Real Estate',
                                        style: blackStyle12(),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Vaishnavi Tech Park Opportunity',
                                    style: blackStyle16(),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Icon(
                                          Icons.location_on_outlined,
                                          size: 18.sm,
                                          color: Color(0xFF707070),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 4.w,
                                      // ),
                                      Flexible(
                                        flex: 4,
                                        child: Text(
                                          'Outer Ring Road Sarjapur, Bangalore',
                                          style: blackStyle12().copyWith(
                                            color: Color(0xFF707070),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // child: PageView.builder(
                    //   padEnds: false,
                    //   controller: recommendedcontroller,
                    //   itemCount: 2,
                    //   itemBuilder: (
                    //     BuildContext context,
                    //     int index1,
                    //   ) {
                    //     bool isMyPageIndex = selectIndex == index1;
                    //     if (index1 == 0) {
                    //       return GestureDetector(
                    //         onTap: () {
                    //           Get.toNamed("/fractionalrealestateproperty2");
                    //         },
                    //         child: Card(
                    //           elevation: 2,
                    //           color: Color(0xFFFFFFFF),
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(15),
                    //           ),
                    //           child: Padding(
                    //             padding: EdgeInsets.only(
                    //                 top: 14.0, left: 15, right: 15, bottom: 6),
                    //             child: Column(
                    //               mainAxisAlignment: MainAxisAlignment.center,
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Image.asset(
                    //                   'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
                    //                 ),
                    //                 SizedBox(
                    //                   height: 3.h,
                    //                 ),
                    //                 Card(
                    //                   color: Color(0xFFCFEFFF),
                    //                   shape: RoundedRectangleBorder(
                    //                     borderRadius: BorderRadius.circular(5),
                    //                   ),
                    //                   child: Padding(
                    //                     padding:
                    //                         EdgeInsets.fromLTRB(6, 3, 6, 3),
                    //                     child: Text(
                    //                       'Fractional Real Estate',
                    //                       style: blackStyle12(),
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 5.h,
                    //                 ),
                    //                 Flexible(
                    //                   child: Text(
                    //                     'Vaishnavi Tech Park Opportunity',
                    //                     style: blackStyle16(),
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 5.h,
                    //                 ),
                    //                 Row(
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.start,
                    //                   children: [
                    //                     Flexible(
                    //                       child: Icon(
                    //                         Icons.location_on_outlined,
                    //                         size: 18.sm,
                    //                         color: Color(0xFF707070),
                    //                       ),
                    //                     ),
                    //                     // SizedBox(
                    //                     //   width: 4.w,
                    //                     // ),
                    //                     Flexible(
                    //                       flex: 4,
                    //                       child: Text(
                    //                         'Outer Ring Road Sarjapur, Bangalore',
                    //                         style: blackStyle12().copyWith(
                    //                           color: Color(0xFF707070),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 8.h,
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //       );
                    //     } //2nd plan
                    //     return GestureDetector(
                    //       onTap: () {
                    //         Get.toNamed("/fractionalrealestateproperty2");
                    //       },
                    //       child: Card(
                    //         elevation: 2,
                    //         color: Color(0xFFFFFFFF),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(15),
                    //         ),
                    //         child: Padding(
                    //           padding: EdgeInsets.only(
                    //               top: 14.0, left: 15, right: 15, bottom: 6),
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
                    //               ),
                    //               SizedBox(
                    //                 height: 3.h,
                    //               ),
                    //               Card(
                    //                 color: Color(0xFFCFEFFF),
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(5),
                    //                 ),
                    //                 child: Padding(
                    //                   padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                    //                   child: Text(
                    //                     'Fractional Real Estate',
                    //                     style: blackStyle12(),
                    //                   ),
                    //                 ),
                    //               ),
                    //               SizedBox(
                    //                 height: 5.h,
                    //               ),
                    //               Flexible(
                    //                 child: Text(
                    //                   'Vaishnavi Tech Park Opportunity',
                    //                   style: blackStyle16(),
                    //                 ),
                    //               ),
                    //               SizedBox(
                    //                 height: 5.h,
                    //               ),
                    //               Row(
                    //                 crossAxisAlignment:
                    //                     CrossAxisAlignment.start,
                    //                 mainAxisAlignment: MainAxisAlignment.start,
                    //                 children: [
                    //                   Flexible(
                    //                     child: Icon(
                    //                       Icons.location_on_outlined,
                    //                       size: 18.sm,
                    //                       color: Color(0xFF707070),
                    //                     ),
                    //                   ),
                    //                   // SizedBox(
                    //                   //   width: 4.w,
                    //                   // ),
                    //                   Flexible(
                    //                     flex: 4,
                    //                     child: Text(
                    //                       'Outer Ring Road Sarjapur, Bangalore',
                    //                       style: blackStyle12().copyWith(
                    //                         color: Color(0xFF707070),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //               SizedBox(
                    //                 height: 8.h,
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFCFEFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ]),
                // shape: RoundedRectangleBorder(
                //   side: BorderSide(
                //     width: 0.5,
                //     color: Color(0xFFCFCFCF).withOpacity(1),
                //   ),
                //   borderRadius: BorderRadius.circular(15),
                // ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 11.0, bottom: 11, right: 15, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Our Success Stories",
                            style: TextStyle(
                                fontSize: 17.sm, fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/success');
                            },
                            child: Text(
                              "Know More",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                                color: Color(0xFF1B8DC9),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/images/success.svg')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      titleText("Trending news"),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/insightsinner');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, left: 10, right: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/na_april_69.jpg",
                                  height: 70,
                                  width: 90,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: SizedBox(
                                width: 20,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Retail banks wake up to digital",
                                    style: blackStyle14(),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "October 17 , 2022",
                                        style: blackStyle12(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/insightsinner');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, left: 10, right: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/na_april_69.jpg",
                                  height: 70,
                                  width: 90,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: SizedBox(
                                width: 20,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Retail banks wake up to digital",
                                    style: blackStyle14(),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "October 17 , 2022",
                                        style: blackStyle12(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  titleText(String title) {
    return Text(
      // "Your Investments",
      title,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        color: Color(0xFF1B8DC9),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class DougnutChart extends StatelessWidget {
  const DougnutChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 20),
      ChartData('Steve', 20),
    ];
    return SfCircularChart(centerY: '55', centerX: '50', palette: <Color>[
      Color.fromARGB(255, 113, 201, 248),
      Color(0xFF1B8DC9),
    ], annotations: <CircularChartAnnotation>[
      CircularChartAnnotation(
        widget: Container(
          child: PhysicalModel(
            child: Container(),
            shape: BoxShape.circle,
            elevation: 10,
            shadowColor: Colors.black,
            color: const Color.fromRGBO(230, 230, 230, 1),
          ),
        ),
      ),
      CircularChartAnnotation(
        widget: Container(
          child: const Text(
            '50%',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    ], series: <CircularSeries>[
      DoughnutSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          // Radius of doughnut
          radius: '100%')
    ]);
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

void dataLabel(DataLabelRenderArgs args) {
  args.text = '50';
}
