import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int selectIndex = 0;
  final int _selectedIndex = 0;
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
    viewportFraction: 0.75,
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
        backgroundColor: Color(0xFFF5F8FA),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Text(
          "Welcome",
          style: blackStyle20(),
        ),
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
                        ),
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
                                              )),
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
                                            )),
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
                            dotColor: Color(0xFF153D6D).withOpacity(0.4)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fill in your complete details\nto start investing',
                            style: blackStyle14(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Complete Your KYC',
                            style: TextStyle(
                                fontSize: 18.sm,
                                color: Color(0xFF1B8DC9),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('/kyc1');
                                },
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                    fontSize: 15.sm,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_right_alt_outlined,
                                size: 20,
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                              'assets/images/complete-ok-accept-good-tick-svgrepo-com.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Image.asset('assets/images/img3 (1).png'),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'No Investments',
                          style: TextStyle(
                            fontSize: 18.sm,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Start Investing With FreeU',
                          style: TextStyle(
                            fontSize: 14.sm,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                            child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF1B8DC9),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 10),
                                  child: Text(
                                    'Invest Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15.sm,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                )),
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: ((context) =>
                              //             Insights_inner())));
                            })
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 4.0, top: 12, bottom: 12, right: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 17.sm, fontFamily: 'Poppins'),
                    ),
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
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 0,
                              child: SizedBox(
                                width: 10,
                              )),
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
                                    )),
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
                height: 10.h,
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
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 11.0, bottom: 11, right: 15, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Our Success Stories",
                              style: TextStyle(
                                  fontSize: 17.sm, fontFamily: 'Poppins')),
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
                          )
                        ],
                      ),
                      SvgPicture.asset('assets/images/success.svg')
                    ],
                  ),
                ),
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
                      Text(
                        "Trending news",
                        style:
                            TextStyle(fontSize: 17.sm, fontFamily: 'Poppins'),
                      ),
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
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // height: 70.h,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/na_april_69.jpg",
                                  fit: BoxFit.fitHeight,
                                  height: 70,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Retail banks wake up to digital",
                                  style: blackStyle14(),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/insightsinner');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // height: 70.h,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/na_april_69.jpg",
                                  fit: BoxFit.fitHeight,
                                  height: 70,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Retail banks wake up to digital",
                                  style: blackStyle14(),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
}
