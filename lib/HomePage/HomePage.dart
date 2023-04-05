// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/AlternativeInvestment.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/categoryCard.dart';
import 'package:freeu/common/sized_box.dart';
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

  List topPickData = [
    {
      // /
      "text1": "Fractional Real Estate",
      "imageUrl": "assets/newImages/top_pick_img1.png",
      "title": "Vaishnavi Tech Park\nOpportunity",
      "add": "Outer Ring Road Sarjapur,\nBangalore",
    },
    {
      "text1": "Alternative investment funds",
      "imageUrl": "assets/newImages/top_pick_img2.png",
      "title": "Tata Consultancy\nServices",
      "add": "Banyan Park,\nMumbai",
    },
    {
      "text1": "Fractional Real Estate",
      "imageUrl": "assets/newImages/top_pick_img1.png",
      "title": "Vaishnavi Tech Park\nOpportunity",
      "add": "Outer Ring Road Sarjapur,\nBangalore",
    },
    {
      "text1": "Alternative investment funds",
      "imageUrl": "assets/newImages/top_pick_img2.png",
      "title": "Tata Consultancy\nServices",
      "add": "Banyan Park,\nMumbai",
    },
  ];

  List categoryData = [
    // /
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat1.png",
      "title": "Alternative Investment Funds",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat2.png",
      "title": "Fractional Real Estate",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat3.png",
      "title": "Peer- Peer lending",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat4.png",
      "title": "Invoice Discounting",
    },
    {
      "colorL": AppColors.brownL_973926,
      "colorD": AppColors.brownD_4C1D13,
      "bgImage": "assets/newImages/bgBrown.svg",
      "imageUrl": "assets/newImages/cat5.png",
      "title": "Revenue based Financing",
    },
    {
      "colorL": AppColors.pinkL_E6088B,
      "colorD": AppColors.pinkD_730446,
      "bgImage": "assets/newImages/bgPink.svg",
      "imageUrl": "assets/newImages/cat6.png",
      "title": "Lease based Financing",
    },
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat7.png",
      "title": "Clean and Green Assets",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat8.png",
      "title": "Venture Debt",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat9.png",
      "title": "Secured Debt",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat10.png",
      "title": "High Yield Finance",
    },
  ];

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
      // backgroundColor: Color(0xFFF5F8FA),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              icon: SizedBox(
                height: 20.h,
                width: 25.w,
                child: SvgPicture.asset(
                  "assets/images/menu.svg",
                  // height: 20.h,
                  // width: 10.w,
                  fit: BoxFit.fill,
                ),
              ),
              // color: Colors.red,
              // iconSize: 100.h,
            ),
            sizedBoxWidth(5.w),
            Text(
              'Welcome',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.sp,
                  // fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Get.toNamed('/notificationpage');
              },
              icon: SizedBox(
                width: 18.w,
                height: 25.h,
                child: SvgPicture.asset(
                  'assets/images/notification-bell-svgrepo-com.svg',
                  fit: BoxFit.fill,
                ),
              ),
              // iconSize: 22,
              // color: const Color(0xFF303030),
            ),
          ],
        ),
        // backgroundColor: Color(0xFFF5F8FA),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      // bottomNavigationBar:
      //     CreateBottomBar(stateBottomNav, "BottombarHomepage", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 159.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.blue143C6D,
                    borderRadius: BorderRadius.circular(15.h),
                    image: DecorationImage(
                        image: AssetImage("assets/newImages/Group 51336.png"),
                        fit: BoxFit.fill)
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.06),
                    //     blurRadius: 10,
                    //     spreadRadius: 2,
                    //   )
                    // ]
                    ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                  child: Column(
                    children: [
                      // Image.asset(name)
                      SvgPicture.asset(
                        "assets/newImages/quotes-svgrepo-com.svg",
                        width: 24.w,
                        height: 15.h,
                      ),

                      Spacer(),

                      // Text(data)
                      text16White(
                          "We do not just provide you options. We want you to learn about the ones best suited for your needs.",
                          textAlign: TextAlign.center)
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text20Black("Top Picks"),
                      text14Grey272424("View more")
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 285.h,
                    child: ListView.separated(
                        separatorBuilder: (_, index) {
                          return index == topPickData.length
                              ? SizedBox()
                              : sizedBoxWidth(20.w);
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: topPickData.length,
                        itemBuilder: (context, index) {
                          return topPickCard(
                            text1: topPickData[index]["text1"],
                            imagePath: topPickData[index]["imageUrl"],
                            title: topPickData[index]["title"],
                            add: topPickData[index]["add"],
                            // /
                          );
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),

              twoText("Categories", "View more"),

              sizedBoxHeight(10.h),

              SizedBox(
                height: 133.h,
                child: ListView.separated(
                    separatorBuilder: (_, index) {
                      return index == 2 ? SizedBox() : sizedBoxWidth(20.w);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          var screen;
                          switch (index) {
                            case 0:
                              screen = AlternativeInsvestment();

                              break;
                            default:
                          }
                          Get.to(screen);
                        },
                        child: categoryCard(
                          color1: categoryData[index]["colorL"],
                          color2: categoryData[index]["colorD"],
                          bgImage: categoryData[index]["bgImage"],
                          image: categoryData[index]["imageUrl"],
                          text: categoryData[index]["title"],
                        ),
                      );
                    }),
              ),

              sizedBoxHeight(15.h),

              twoText("Knowledge center", "View more"),

              // Padding(
              //   padding:
              //       EdgeInsets.only(left: 4.0, top: 12, bottom: 12, right: 4.0),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       titleText('Categories'),
              //       SizedBox(
              //         height: 8.h,
              //       ),
              //       SizedBox(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Expanded(
              //               flex: 1,
              //               child: GestureDetector(
              //                 onTap: () {
              //                   Get.toNamed('/fractionalrealestateproperty1');
              //                 },
              //                 child: Container(
              //                   // elevation: 2,
              //                   decoration: BoxDecoration(
              //                       color: Colors.white,
              //                       borderRadius: BorderRadius.circular(10),
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: Colors.black.withOpacity(0.06),
              //                           spreadRadius: 2,
              //                           blurRadius: 10,
              //                         )
              //                       ]),
              //                   child: Padding(
              //                     padding: EdgeInsets.all(10),
              //                     child: Column(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.center,
              //                       children: [
              //                         Image.asset(
              //                           "assets/images/real-estate.png",
              //                           height: 50,
              //                           width: 50,
              //                         ),
              //                         SizedBox(
              //                           width: 13.w,
              //                         ),
              //                         Text(
              //                           'Fractional Real Estate',
              //                           textAlign: TextAlign.center,
              //                           style: TextStyle(
              //                               fontSize: 16.sm,
              //                               fontFamily: 'Poppins'),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             Expanded(
              //               flex: 0,
              //               child: SizedBox(
              //                 width: 10,
              //               ),
              //             ),
              //             Expanded(
              //               flex: 1,
              //               child: GestureDetector(
              //                 onTap: () {
              //                   Get.toNamed('/peerlendingasset1');
              //                 },
              //                 child: Container(
              //                   // elevation: 2,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(10),
              //                     boxShadow: [
              //                       BoxShadow(
              //                         color: Colors.black.withOpacity(0.06),
              //                         spreadRadius: 2,
              //                         blurRadius: 10,
              //                       )
              //                     ],
              //                   ),
              //                   child: Padding(
              //                     padding: EdgeInsets.all(10),
              //                     child: Column(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.center,
              //                       children: [
              //                         Image.asset(
              //                           "assets/images/blockchain.png",
              //                           height: 50,
              //                           width: 50,
              //                         ),
              //                         SizedBox(
              //                           width: 13.w,
              //                         ),
              //                         Text(
              //                           'Peer- Peer\n lending',
              //                           textAlign: TextAlign.center,
              //                           style: TextStyle(
              //                               fontSize: 16.sm,
              //                               fontFamily: 'Poppins'),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 10.h,
              ),

              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return tileCard();
                  },
                  separatorBuilder: (_, index) {
                    return sizedBoxHeight(10.h);
                  },
                  itemCount: 3),

              sizedBoxHeight(20.h)

              // GestureDetector(
              //   onTap: () {
              //     Get.toNamed('/insightsinner');
              //   },
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Color(0xFFFFFFFF),
              //         borderRadius: BorderRadius.circular(15),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.black.withOpacity(0.06),
              //             blurRadius: 10,
              //             spreadRadius: 2,
              //           ),
              //         ]),
              //     child: Padding(
              //       padding: const EdgeInsets.only(
              //           top: 14.0, left: 10, right: 15, bottom: 10),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Expanded(
              //             flex: 2,
              //             child: ClipRRect(
              //               borderRadius: BorderRadius.circular(10),
              //               child: Image.asset(
              //                 "assets/images/na_april_69.jpg",
              //                 height: 70,
              //                 width: 90,
              //               ),
              //             ),
              //           ),
              //           const Expanded(
              //             flex: 0,
              //             child: SizedBox(
              //               width: 20,
              //             ),
              //           ),
              //           Expanded(
              //             flex: 5,
              //             child: Column(
              //               mainAxisAlignment:
              //                   MainAxisAlignment.spaceBetween,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   "Retail banks wake up to digital",
              //                   style: blackStyle14(),
              //                 ),
              //                 Row(
              //                   children: [
              //                     Icon(
              //                       Icons.calendar_today_outlined,
              //                       size: 14,
              //                     ),
              //                     SizedBox(
              //                       width: 5,
              //                     ),
              //                     Text(
              //                       "October 17 , 2022",
              //                       style: blackStyle12(),
              //                     ),
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     twoText("Top Picks", "View more"),
              //     // Row(
              //     //   children: [
              //     //     SizedBox(
              //     //       width: 3.w,
              //     //     ),
              //     //     titleText("Top Pick"),
              //     //   ],
              //     // ),
              //     SizedBox(
              //       height: 8.h,
              //     ),

              //     // SizedBox(
              //     //   height: 290,
              //     //   child: Container(
              //     //     decoration: BoxDecoration(
              //     //         color: Colors.white,
              //     //         borderRadius: BorderRadius.circular(10),
              //     //         boxShadow: [
              //     //           BoxShadow(
              //     //             color: Colors.black.withOpacity(0.15),
              //     //             spreadRadius: 2,
              //     //             blurRadius: 10,
              //     //           )
              //     //         ]),
              //     //     child: Padding(
              //     //       padding: EdgeInsets.only(top: 0),
              //     //       child: Column(
              //     //         mainAxisAlignment: MainAxisAlignment.start,
              //     //         crossAxisAlignment: CrossAxisAlignment.start,
              //     //         children: [
              //     //           Image.asset(
              //     //             'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
              //     //             fit: BoxFit.cover,
              //     //             width: double.infinity,
              //     //           ),
              //     //           SizedBox(
              //     //             height: 10,
              //     //           ),
              //     //           Text(
              //     //             'Vaishnavi Tech Park Opportunity',
              //     //             style: blackStyle15(),
              //     //           ),
              //     //           SizedBox(
              //     //             height: 7.h,
              //     //           ),
              //     //           Row(
              //     //             crossAxisAlignment: CrossAxisAlignment.start,
              //     //             mainAxisAlignment: MainAxisAlignment.start,
              //     //             children: [
              //     //               Flexible(
              //     //                 child: Icon(
              //     //                   Icons.location_on_outlined,
              //     //                   size: 18.sm,
              //     //                   color: Color(0xFF707070),
              //     //                 ),
              //     //               ),
              //     //               // SizedBox(
              //     //               //   width: 4.w,
              //     //               // ),
              //     //               Flexible(
              //     //                 flex: 4,
              //     //                 child: Text(
              //     //                   'Outer Ring Road Sarjapur, Bangalore',
              //     //                   style: blackStyle12().copyWith(
              //     //                     color: Color(0xFF707070),
              //     //                   ),
              //     //                 ),
              //     //               ),
              //     //             ],
              //     //           ),
              //     //           SizedBox(
              //     //             height: 8.h,
              //     //           ),
              //     //         ],
              //     //       ),
              //     //     ),
              //     //   ),
              //     // )
              //     //
              //     //
              //     //
              //     //
              //     //
              //     //
              //     SizedBox(
              //       height: 310.h,
              //       child: ListView.builder(
              //         scrollDirection: Axis.horizontal,
              //         itemCount: 2,
              //         itemBuilder: (context, index) => Container(
              //           margin: EdgeInsets.all(10),
              //           width: Get.width * 0.65,
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 color: Color(0xFFFFFFFF),
              //                 borderRadius: BorderRadius.circular(15),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     color: Colors.black.withOpacity(0.06),
              //                     blurRadius: 10,
              //                     spreadRadius: 2,
              //                   )
              //                 ]),
              //             child: Padding(
              //               padding: EdgeInsets.only(
              //                   top: 0.0, left: 0, right: 0, bottom: 6),
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Stack(
              //                     children: [
              //                       ClipRRect(
              //                         borderRadius: BorderRadius.only(
              //                           topLeft: Radius.circular(10),
              //                           topRight: Radius.circular(10),
              //                         ),
              //                         child: Image.asset(
              //                           'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
              //                           fit: BoxFit.cover,
              //                           width: double.infinity,
              //                           height: 150,
              //                         ),
              //                       ),
              //                       Positioned(
              //                         bottom: 0,
              //                         left: 0,
              //                         right: 0,
              //                         child: Container(
              //                           height: 40,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black.withOpacity(0.4),
              //                           ),
              //                           child: Padding(
              //                             padding:
              //                                 const EdgeInsets.only(left: 8.0),
              //                             child: Align(
              //                               alignment: Alignment.centerLeft,
              //                               child: Text(
              //                                 'Fractional Real Estate',
              //                                 style: blackStyle14().copyWith(
              //                                   fontWeight: FontWeight.w400,
              //                                   color: Colors.white,
              //                                   fontSize: 16,
              //                                 ),
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                   SizedBox(height: 10),
              //                   Padding(
              //                     padding: const EdgeInsets.symmetric(
              //                         horizontal: 8.0),
              //                     child: Text(
              //                       'Vaishnavi Tech Park Opportunity',
              //                       style:
              //                           blackStyle15().copyWith(fontSize: 16),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 7.h,
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.symmetric(
              //                         horizontal: 8.0),
              //                     child: Row(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.start,
              //                       mainAxisAlignment: MainAxisAlignment.start,
              //                       children: [
              //                         Flexible(
              //                           child: Icon(
              //                             Icons.location_on_outlined,
              //                             size: 22,
              //                             color: Color(0xFF707070),
              //                           ),
              //                         ),
              //                         // SizedBox(
              //                         //   width: 4.w,
              //                         // ),
              //                         Flexible(
              //                           flex: 4,
              //                           child: Align(
              //                             alignment: Alignment.topLeft,
              //                             child: Text(
              //                               'Outer Ring Road Sarjapur, Bangalore',
              //                               style: blackStyle12().copyWith(
              //                                   color: Color(0xFF707070),
              //                                   fontSize: 14),
              //                             ),
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 8.h,
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     // SizedBox(
              //     //   height: 290,
              //     //   child: ListView.builder(
              //     //     // controller: pickcontroller,
              //     //     scrollDirection: Axis.horizontal,
              //     //     itemCount: 2,
              //     //     itemBuilder: (
              //     //       BuildContext context,
              //     //       int index1,
              //     //     ) {
              //     //       bool isMyPageIndex = selectIndex == index1;
              //     //       if (index1 == 0) {
              //     //         return Card(
              //     //           elevation: 2,
              //     //           color: Color(0xFFFFFFFF),
              //     //           shape: RoundedRectangleBorder(
              //     //             borderRadius: BorderRadius.circular(15),
              //     //           ),
              //     //           child: Padding(
              //     //             padding: EdgeInsets.only(
              //     //                 top: 14.0, left: 15, right: 15, bottom: 6),
              //     //             child: Column(
              //     //               mainAxisAlignment: MainAxisAlignment.start,
              //     //               crossAxisAlignment: CrossAxisAlignment.start,
              //     //               children: [
              //     //                 Text(
              //     //                   'Fractional Real Estate',
              //     //                   style: blackStyle14()
              //     //                       .copyWith(fontWeight: FontWeight.w400),
              //     //                 ),
              //     //                 SizedBox(
              //     //                   height: 10,
              //     //                 ),
              //     //                 Image.asset(
              //     //                   'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
              //     //                   fit: BoxFit.cover,
              //     //                   width: double.infinity,
              //     //                 ),
              //     //                 SizedBox(
              //     //                   height: 10,
              //     //                 ),
              //     //                 Text(
              //     //                   'Vaishnavi Tech Park Opportunity',
              //     //                   style: blackStyle15(),
              //     //                 ),
              //     //                 SizedBox(
              //     //                   height: 8,
              //     //                 ),
              //     //                 Row(
              //     //                   crossAxisAlignment:
              //     //                       CrossAxisAlignment.start,
              //     //                   mainAxisAlignment: MainAxisAlignment.start,
              //     //                   children: [
              //     //                     Flexible(
              //     //                       child: Icon(
              //     //                         Icons.location_on_outlined,
              //     //                         size: 18.sm,
              //     //                         color: Color(0xFF707070),
              //     //                       ),
              //     //                     ),
              //     //                     // SizedBox(
              //     //                     //   width: 4.w,
              //     //                     // ),
              //     //                     Flexible(
              //     //                       flex: 4,
              //     //                       child: Text(
              //     //                         'Outer Ring Road Sarjapur, Bangalore',
              //     //                         style: blackStyle12().copyWith(
              //     //                           color: Color(0xFF707070),
              //     //                         ),
              //     //                       ),
              //     //                     ),
              //     //                   ],
              //     //                 ),
              //     //                 SizedBox(
              //     //                   height: 8.h,
              //     //                 ),
              //     //               ],
              //     //             ),
              //     //           ),
              //     //         );
              //     //       } //2nd plan
              //     //       return Card(
              //     //         elevation: 2,
              //     //         color: Color(0xFFFFFFFF),
              //     //         shape: RoundedRectangleBorder(
              //     //           borderRadius: BorderRadius.circular(15),
              //     //         ),
              //     //         child: Padding(
              //     //           padding: EdgeInsets.only(
              //     //               top: 14.0, left: 15, right: 15, bottom: 6),
              //     //           child: Column(
              //     //             mainAxisAlignment: MainAxisAlignment.center,
              //     //             crossAxisAlignment: CrossAxisAlignment.start,
              //     //             children: [
              //     //               Text(
              //     //                 'Fractional Real Estate',
              //     //                 style: blackStyle14()
              //     //                     .copyWith(fontWeight: FontWeight.w400),
              //     //               ),
              //     //               SizedBox(
              //     //                 height: 10.h,
              //     //               ),
              //     //               Image.asset(
              //     //                 'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
              //     //               ),
              //     //               SizedBox(
              //     //                 height: 9.h,
              //     //               ),
              //     //               Text(
              //     //                 'Vaishnavi Tech Park Opportunity',
              //     //                 style: blackStyle15(),
              //     //               ),
              //     //               SizedBox(
              //     //                 height: 7.h,
              //     //               ),
              //     //               Row(
              //     //                 crossAxisAlignment: CrossAxisAlignment.start,
              //     //                 mainAxisAlignment: MainAxisAlignment.start,
              //     //                 children: [
              //     //                   Flexible(
              //     //                     child: Icon(
              //     //                       Icons.location_on_outlined,
              //     //                       size: 18.sm,
              //     //                       color: Color(0xFF707070),
              //     //                     ),
              //     //                   ),
              //     //                   // SizedBox(
              //     //                   //   width: 4.w,
              //     //                   // ),
              //     //                   Flexible(
              //     //                     flex: 4,
              //     //                     child: Text(
              //     //                       'Outer Ring Road Sarjapur, Bangalore',
              //     //                       style: blackStyle12().copyWith(
              //     //                         color: Color(0xFF707070),
              //     //                       ),
              //     //                     ),
              //     //                   ),
              //     //                 ],
              //     //               ),
              //     //               SizedBox(
              //     //                 height: 8.h,
              //     //               ),
              //     //             ],
              //     //           ),
              //     //         ),
              //     //       );
              //     //     },
              //     //   ),
              //     // ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       children: [
              //         SizedBox(
              //           width: 3.w,
              //         ),
              //         titleText("Recommended"),
              //       ],
              //     ),
              //     SizedBox(
              //       height: 8.h,
              //     ),
              //     SizedBox(
              //       width: double.infinity,
              //       height: 320,
              //       child: ListView.builder(
              //         scrollDirection: Axis.horizontal,
              //         itemCount: 2,
              //         itemBuilder: (context, index) => GestureDetector(
              //           onTap: () {
              //             Get.toNamed("/fractionalrealestateproperty2");
              //           },
              //           child: Container(
              //             margin: EdgeInsets.all(10),
              //             width: Get.width * 0.85,
              //             decoration: BoxDecoration(
              //                 color: Color(0xFFFFFFFF),
              //                 borderRadius: BorderRadius.circular(15),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     color: Colors.black.withOpacity(0.06),
              //                     blurRadius: 10,
              //                     spreadRadius: 2,
              //                   )
              //                 ]),
              //             child: Padding(
              //               padding: EdgeInsets.only(
              //                   top: 0.0, left: 0, right: 0, bottom: 6),
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Image.asset(
              //                     'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
              //                     fit: BoxFit.cover,
              //                     width: double.infinity,
              //                   ),
              //                   SizedBox(
              //                     height: 10,
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 5.0),
              //                     child: Container(
              //                       decoration: BoxDecoration(
              //                           color: Color(0xFFCFEFFF),
              //                           borderRadius: BorderRadius.circular(5),
              //                           boxShadow: [
              //                             BoxShadow(
              //                               color:
              //                                   Colors.black.withOpacity(0.06),
              //                               blurRadius: 10,
              //                               spreadRadius: 2,
              //                             )
              //                           ]),
              //                       child: Padding(
              //                         padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
              //                         child: Text(
              //                           'Fractional Real Estate',
              //                           style: blackStyle12(),
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10.0),
              //                     child: Text(
              //                       'Vaishnavi Tech Park Opportunity',
              //                       style: blackStyle16(),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 8,
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10.0),
              //                     child: Row(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.start,
              //                       mainAxisAlignment: MainAxisAlignment.start,
              //                       children: [
              //                         Flexible(
              //                           child: Icon(
              //                             Icons.location_on_outlined,
              //                             size: 18.sm,
              //                             color: Color(0xFF707070),
              //                           ),
              //                         ),
              //                         // SizedBox(
              //                         //   width: 4.w,
              //                         // ),
              //                         Flexible(
              //                           flex: 4,
              //                           child: Text(
              //                             'Outer Ring Road Sarjapur, Bangalore',
              //                             style: blackStyle12().copyWith(
              //                               color: Color(0xFF707070),
              //                             ),
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 8.h,
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       // child: PageView.builder(
              //       //   padEnds: false,
              //       //   controller: recommendedcontroller,
              //       //   itemCount: 2,
              //       //   itemBuilder: (
              //       //     BuildContext context,
              //       //     int index1,
              //       //   ) {
              //       //     bool isMyPageIndex = selectIndex == index1;
              //       //     if (index1 == 0) {
              //       //       return GestureDetector(
              //       //         onTap: () {
              //       //           Get.toNamed("/fractionalrealestateproperty2");
              //       //         },
              //       //         child: Card(
              //       //           elevation: 2,
              //       //           color: Color(0xFFFFFFFF),
              //       //           shape: RoundedRectangleBorder(
              //       //             borderRadius: BorderRadius.circular(15),
              //       //           ),
              //       //           child: Padding(
              //       //             padding: EdgeInsets.only(
              //       //                 top: 14.0, left: 15, right: 15, bottom: 6),
              //       //             child: Column(
              //       //               mainAxisAlignment: MainAxisAlignment.center,
              //       //               crossAxisAlignment: CrossAxisAlignment.start,
              //       //               children: [
              //       //                 Image.asset(
              //       //                   'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
              //       //                 ),
              //       //                 SizedBox(
              //       //                   height: 3.h,
              //       //                 ),
              //       //                 Card(
              //       //                   color: Color(0xFFCFEFFF),
              //       //                   shape: RoundedRectangleBorder(
              //       //                     borderRadius: BorderRadius.circular(5),
              //       //                   ),
              //       //                   child: Padding(
              //       //                     padding:
              //       //                         EdgeInsets.fromLTRB(6, 3, 6, 3),
              //       //                     child: Text(
              //       //                       'Fractional Real Estate',
              //       //                       style: blackStyle12(),
              //       //                     ),
              //       //                   ),
              //       //                 ),
              //       //                 SizedBox(
              //       //                   height: 5.h,
              //       //                 ),
              //       //                 Flexible(
              //       //                   child: Text(
              //       //                     'Vaishnavi Tech Park Opportunity',
              //       //                     style: blackStyle16(),
              //       //                   ),
              //       //                 ),
              //       //                 SizedBox(
              //       //                   height: 5.h,
              //       //                 ),
              //       //                 Row(
              //       //                   crossAxisAlignment:
              //       //                       CrossAxisAlignment.start,
              //       //                   mainAxisAlignment:
              //       //                       MainAxisAlignment.start,
              //       //                   children: [
              //       //                     Flexible(
              //       //                       child: Icon(
              //       //                         Icons.location_on_outlined,
              //       //                         size: 18.sm,
              //       //                         color: Color(0xFF707070),
              //       //                       ),
              //       //                     ),
              //       //                     // SizedBox(
              //       //                     //   width: 4.w,
              //       //                     // ),
              //       //                     Flexible(
              //       //                       flex: 4,
              //       //                       child: Text(
              //       //                         'Outer Ring Road Sarjapur, Bangalore',
              //       //                         style: blackStyle12().copyWith(
              //       //                           color: Color(0xFF707070),
              //       //                         ),
              //       //                       ),
              //       //                     ),
              //       //                   ],
              //       //                 ),
              //       //                 SizedBox(
              //       //                   height: 8.h,
              //       //                 ),
              //       //               ],
              //       //             ),
              //       //           ),
              //       //         ),
              //       //       );
              //       //     } //2nd plan
              //       //     return GestureDetector(
              //       //       onTap: () {
              //       //         Get.toNamed("/fractionalrealestateproperty2");
              //       //       },
              //       //       child: Card(
              //       //         elevation: 2,
              //       //         color: Color(0xFFFFFFFF),
              //       //         shape: RoundedRectangleBorder(
              //       //           borderRadius: BorderRadius.circular(15),
              //       //         ),
              //       //         child: Padding(
              //       //           padding: EdgeInsets.only(
              //       //               top: 14.0, left: 15, right: 15, bottom: 6),
              //       //           child: Column(
              //       //             mainAxisAlignment: MainAxisAlignment.center,
              //       //             crossAxisAlignment: CrossAxisAlignment.start,
              //       //             children: [
              //       //               Image.asset(
              //       //                 'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
              //       //               ),
              //       //               SizedBox(
              //       //                 height: 3.h,
              //       //               ),
              //       //               Card(
              //       //                 color: Color(0xFFCFEFFF),
              //       //                 shape: RoundedRectangleBorder(
              //       //                   borderRadius: BorderRadius.circular(5),
              //       //                 ),
              //       //                 child: Padding(
              //       //                   padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
              //       //                   child: Text(
              //       //                     'Fractional Real Estate',
              //       //                     style: blackStyle12(),
              //       //                   ),
              //       //                 ),
              //       //               ),
              //       //               SizedBox(
              //       //                 height: 5.h,
              //       //               ),
              //       //               Flexible(
              //       //                 child: Text(
              //       //                   'Vaishnavi Tech Park Opportunity',
              //       //                   style: blackStyle16(),
              //       //                 ),
              //       //               ),
              //       //               SizedBox(
              //       //                 height: 5.h,
              //       //               ),
              //       //               Row(
              //       //                 crossAxisAlignment:
              //       //                     CrossAxisAlignment.start,
              //       //                 mainAxisAlignment: MainAxisAlignment.start,
              //       //                 children: [
              //       //                   Flexible(
              //       //                     child: Icon(
              //       //                       Icons.location_on_outlined,
              //       //                       size: 18.sm,
              //       //                       color: Color(0xFF707070),
              //       //                     ),
              //       //                   ),
              //       //                   // SizedBox(
              //       //                   //   width: 4.w,
              //       //                   // ),
              //       //                   Flexible(
              //       //                     flex: 4,
              //       //                     child: Text(
              //       //                       'Outer Ring Road Sarjapur, Bangalore',
              //       //                       style: blackStyle12().copyWith(
              //       //                         color: Color(0xFF707070),
              //       //                       ),
              //       //                     ),
              //       //                   ),
              //       //                 ],
              //       //               ),
              //       //               SizedBox(
              //       //                 height: 8.h,
              //       //               ),
              //       //             ],
              //       //           ),
              //       //         ),
              //       //       ),
              //       //     );
              //       //   },
              //       // ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20.h,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       color: Color(0xFFCFEFFF),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.06),
              //           blurRadius: 10,
              //           spreadRadius: 2,
              //         ),
              //       ]),
              //   // shape: RoundedRectangleBorder(
              //   //   side: BorderSide(
              //   //     width: 0.5,
              //   //     color: Color(0xFFCFCFCF).withOpacity(1),
              //   //   ),
              //   //   borderRadius: BorderRadius.circular(15),
              //   // ),
              //   child: Padding(
              //     padding: EdgeInsets.only(
              //         top: 11.0, bottom: 11, right: 15, left: 20),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Our Success Stories",
              //               style: TextStyle(
              //                   fontSize: 17.sm, fontFamily: 'Poppins'),
              //             ),
              //             SizedBox(
              //               height: 6.h,
              //             ),
              //             GestureDetector(
              //               onTap: () {
              //                 Get.toNamed('/success');
              //               },
              //               child: Text(
              //                 "Know More",
              //                 style: TextStyle(
              //                   fontFamily: 'Poppins',
              //                   fontSize: 14.sm,
              //                   color: Color(0xFF1B8DC9),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //         SvgPicture.asset('assets/images/success.svg')
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20.h,
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       children: [
              //         SizedBox(
              //           width: 3.w,
              //         ),
              //         titleText("Trending news"),
              //       ],
              //     ),
              //     SizedBox(
              //       height: 8.h,
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Get.toNamed('/insightsinner');
              //       },
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: Color(0xFFFFFFFF),
              //             borderRadius: BorderRadius.circular(15),
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.black.withOpacity(0.06),
              //                 blurRadius: 10,
              //                 spreadRadius: 2,
              //               ),
              //             ]),
              //         child: Padding(
              //           padding: const EdgeInsets.only(
              //               top: 14.0, left: 10, right: 15, bottom: 10),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Expanded(
              //                 flex: 2,
              //                 child: ClipRRect(
              //                   borderRadius: BorderRadius.circular(10),
              //                   child: Image.asset(
              //                     "assets/images/na_april_69.jpg",
              //                     height: 70,
              //                     width: 90,
              //                   ),
              //                 ),
              //               ),
              //               const Expanded(
              //                 flex: 0,
              //                 child: SizedBox(
              //                   width: 20,
              //                 ),
              //               ),
              //               Expanded(
              //                 flex: 5,
              //                 child: Column(
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       "Retail banks wake up to digital",
              //                       style: blackStyle14(),
              //                     ),
              //                     Row(
              //                       children: [
              //                         Icon(
              //                           Icons.calendar_today_outlined,
              //                           size: 14,
              //                         ),
              //                         SizedBox(
              //                           width: 5,
              //                         ),
              //                         Text(
              //                           "October 17 , 2022",
              //                           style: blackStyle12(),
              //                         ),
              //                       ],
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),

              //     SizedBox(
              //       height: 10.h,
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Get.toNamed('/insightsinner');
              //       },
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: Color(0xFFFFFFFF),
              //             borderRadius: BorderRadius.circular(15),
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.black.withOpacity(0.06),
              //                 blurRadius: 10,
              //                 spreadRadius: 2,
              //               ),
              //             ]),
              //         child: Padding(
              //           padding: const EdgeInsets.only(
              //               top: 14.0, left: 10, right: 15, bottom: 10),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Expanded(
              //                 flex: 2,
              //                 child: ClipRRect(
              //                   borderRadius: BorderRadius.circular(10),
              //                   child: Image.asset(
              //                     "assets/images/na_april_69.jpg",
              //                     height: 70,
              //                     width: 90,
              //                   ),
              //                 ),
              //               ),
              //               const Expanded(
              //                 flex: 0,
              //                 child: SizedBox(
              //                   width: 20,
              //                 ),
              //               ),
              //               Expanded(
              //                 flex: 5,
              //                 child: Column(
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       "Retail banks wake up to digital",
              //                       style: blackStyle14(),
              //                     ),
              //                     Row(
              //                       children: [
              //                         Icon(
              //                           Icons.calendar_today_outlined,
              //                           size: 14,
              //                         ),
              //                         SizedBox(
              //                           width: 5,
              //                         ),
              //                         Text(
              //                           "October 17 , 2022",
              //                           style: blackStyle12(),
              //                         ),
              //                       ],
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 20.h,
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tileCard() {
    return GestureDetector(
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
          padding:
              const EdgeInsets.only(top: 14.0, left: 10, right: 15, bottom: 10),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }

  Widget twoText(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [text20Black(text1), text14Grey272424(text2)],
    );
  }

  Widget topPickCard(
      {required String text1,
      required String imagePath,
      required String title,
      required String add}) {
    return Container(
        width: 241.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.h),
            border: Border.all(width: 1.h, color: AppColors.greyCFCFCF)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text14Black(text1),

              // Spacer(),

              sizedBoxHeight(5.h),

              Container(
                width: double.infinity,
                height: 100.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.fill)),
              ),

              // Spacer(),
              sizedBoxHeight(10.h),

              text14Black(title),

              // Spacer(),
              sizedBoxHeight(5.h),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: SvgPicture.asset(
                      "assets/logos/location.svg",
                      height: 14.h,
                      width: 10.w,
                    ),
                  ),
                  sizedBoxWidth(5.w),
                  Expanded(child: text13Grey707070(add))
                ],
              )

              // text14Grey272424(text)
            ],
          ),
        ));
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
