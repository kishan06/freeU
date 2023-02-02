import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/AppBarWithNotification.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    viewportFraction: 0.95,
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
      backgroundColor: Color(0xFFFEFEFE),
      appBar: AppBar(
        title: Text(
          'Welcome',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
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
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFEEBBD),
              ),
              height: 20,
              width: 50,
              child: SvgPicture.asset(
                'assets/images/home-svgrepo-com.svg',
                height: 20,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/home-svgrepo-com.svg',
              height: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/category-alt-svgrepo-com.svg',
              height: 20,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/money-dollar-coin-svgrepo-com.svg',
              height: 20,
            ),
            label: 'Investments',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/chat-left-3-svgrepo-com (2).svg',
              height: 20,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              height: 20,
              width: 50,
              color: Color(0xFFFEEBBD),
              child: SvgPicture.asset(
                'assets/images/profile.svg',
                height: 20,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              height: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: (index) {
          print(index);
          _selectedTab(index);
        },
        type: BottomNavigationBarType.fixed,
      ),
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
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xFFAFD2FC),
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
                                              fontSize: 15.sm,
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
                                                      BorderRadius.circular(30),
                                                ),
                                              ),
                                              onPressed: () {},
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
                                  top: 10.0, left: 8, right: 0, bottom: 5),
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
                                            fontSize: 15.sm,
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
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                            onPressed: () {},
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
                                        height: 113,
                                        width: 205,
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
              SizedBox(
                height: 217.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      color: Color(0xFFCFCFCF).withOpacity(1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, top: 15, bottom: 8, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              "Your Invesments",
                              style: TextStyle(
                                  fontSize: 17.sm, fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height: 149.h,
                          child: PageView.builder(
                            padEnds: false,
                            controller: investmentcontroller,
                            itemCount: 2,
                            itemBuilder: (
                              BuildContext context,
                              int index1,
                            ) {
                              bool isMyPageIndex = selectIndex == index1;
                              if (index1 == 0) {
                                return Card(
                                  elevation: 2,
                                  color: Color(0xFFFC8574),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 20,
                                        right: 20,
                                        bottom: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Chennai Office Opportunity',
                                          style: TextStyle(
                                              fontSize: 16.sm,
                                              fontFamily: 'Poppins'),
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 17,
                                            ),
                                            SizedBox(
                                              width: 8.w,
                                            ),
                                            Text(
                                              'Perungudi, Chennai',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 14.sm,
                                                  fontFamily: 'Poppins'),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "₹ 25,00,000",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.sm,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Invested",
                                                  style: TextStyle(
                                                      fontSize: 14.sm,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "₹ 20,000",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.sm,
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Current",
                                                  style: TextStyle(
                                                      fontSize: 14.sm,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "+ 12 %",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.sm,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF197219)),
                                                ),
                                                Text(
                                                  "P & L",
                                                  style: TextStyle(
                                                      fontSize: 14.sm,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              } //2nd plan
                              return Card(
                                elevation: 2,
                                color: Color(0xFFFFE39C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 20.0,
                                      left: 20,
                                      right: 20,
                                      bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chennai Office Opportunity',
                                        style: TextStyle(
                                            fontSize: 16.sm,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        height: 6.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 17,
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            'Perungudi, Chennai',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14.sm,
                                                fontFamily: 'Poppins'),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "₹ 25,00,000",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sm,
                                                    color: Color(0xFF153D6D)),
                                              ),
                                              Text(
                                                "Invested",
                                                style: TextStyle(
                                                    fontSize: 14.sm,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "₹ 20,000",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sm,
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF153D6D)),
                                              ),
                                              Text(
                                                "Current",
                                                style: TextStyle(
                                                    fontSize: 14.sm,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "- 5.4 %",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sm,
                                                    fontFamily: 'Poppins',
                                                    color: Colors.red),
                                              ),
                                              Text(
                                                "P & L",
                                                style: TextStyle(
                                                    fontSize: 14.sm,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
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
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.5,
                    color: Color(0xFFCFCFCF).withOpacity(1),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, top: 15, bottom: 15, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Recommended",
                            style: TextStyle(
                                fontSize: 17.sm, ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/62b056e889c1b-property-image.png",
                                height: 151,
                                width: 155,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Fractional Real Estate",
                                style: TextStyle(
                                    fontSize: 12.sm, fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Vaishnavi Tech Park\nOpportunity",
                                style: TextStyle(
                                    fontSize: 14.sm,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    'Outer Ring Road\nSarjapur, Bangalore',
                                    style: TextStyle(
                                        fontSize: 12.sm, ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              SizedBox(
                                height: 30.h,
                                width: 120.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Color(0xFFFFB600),
                                    //  color: Color(0xFFFFB600),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.black,
                                        fontSize: 14.sm),
                                  ),
                                  onPressed: () {
                                    Get.toNamed('/fractionalrealestateproperty1');
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 170.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      color: Color(0xFFCFCFCF).withOpacity(1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 12.0, top: 12, bottom: 12, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 17.sm, fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height: 100.h,
                          child: PageView.builder(
                            padEnds: false,
                            controller: categoriescontroller,
                            itemCount: 2,
                            itemBuilder: (
                              BuildContext context,
                              int index1,
                            ) {
                              bool isMyPageIndex = selectIndex == index1;
                              if (index1 == 0) {
                                return SizedBox(
                                  height: 80.h,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.toNamed(
                                          '/fractionalrealestateproperty1');
                                    },
                                    child: Card(
                                      elevation: 2,
                                      color: Color(0xFFDFEDFF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 5.0,
                                              left: 10,
                                              right: 10,
                                              bottom: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/categoryresidential.png",
                                                height: 50,
                                                width: 50,
                                              ),
                                              SizedBox(
                                                width: 13.w,
                                              ),
                                              Text(
                                                'Fractional\nReal Estate',
                                                style: TextStyle(
                                                    fontSize: 16.sm,
                                                    fontFamily: 'Poppins'),
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                );
                              } //2nd plan
                              return SizedBox(
                                width: 65.w,
                                child: GestureDetector(
                                  onTap: () {
                                    Get.toNamed('/peerlendingasset1');
                                  },
                                  child: Card(
                                    elevation: 2,
                                    color: Color(0xFFDFEDFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.0,
                                            left: 10,
                                            right: 10,
                                            bottom: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                              'Peer- Peer\nlending',
                                              style: TextStyle(
                                                  fontSize: 16.sm,
                                                  fontFamily: 'Poppins'),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 328.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      color: Color(0xFFCFCFCF).withOpacity(1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 12.0, top: 15, bottom: 14, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              "Top Pick",
                              style: TextStyle(
                                  fontSize: 17.sm, fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height: 255.h,
                          child: PageView.builder(
                            padEnds: false,
                            controller: pickcontroller,
                            itemCount: 2,
                            itemBuilder: (
                              BuildContext context,
                              int index1,
                            ) {
                              bool isMyPageIndex = selectIndex == index1;
                              if (index1 == 0) {
                                return Card(
                                  elevation: 2,
                                  color: Color(0xFFFFFAEE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 4.0, left: 5, right: 5, bottom: 4),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/Group 13531.png',
                                          height: 70,
                                          width: 70,
                                        ),
                                        SizedBox(
                                          height: 9.h,
                                        ),
                                        Text(
                                          'Fractional Real Estate',
                                          style: TextStyle(
                                              fontSize: 14.sm,
                                              fontFamily: 'Poppins'),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        Text(
                                          'Vaishnavi Tech Park\nOpportunity',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.sm,
                                              fontFamily: 'Poppins'),
                                        ),
                                        SizedBox(
                                          height: 7.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.location_on_outlined),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Outer Ring Road Sarjapur, Bangalore',
                                                overflow: TextOverflow.visible,
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 13.sm,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                          width: 120.w,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor:
                                                  Color(0xFFFFB600),
                                              //  color: Color(0xFFFFB600),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                            child: Text(
                                              "View Details",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  color: Colors.black,
                                                  fontSize: 14.sm),
                                            ),
                                            onPressed: () {},
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              } //2nd plan
                              return Card(
                                elevation: 2,
                                color: Color(0xFFFFFAEE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 4.0, left: 5, right: 5, bottom: 4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/Group 13531.png',
                                        height: 70,
                                        width: 70,
                                      ),
                                      SizedBox(
                                        height: 9.h,
                                      ),
                                      Text(
                                        'Fractional Real Estate',
                                        style: TextStyle(
                                            fontSize: 14.sm,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'Vaishnavi Tech Park\nOpportunity',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sm,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Outer Ring Road Sarjapur, Bangalore',
                                              overflow: TextOverflow.visible,
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 13.sm,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                        width: 120.w,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Color(0xFFFFB600),
                                            //  color: Color(0xFFFFB600),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          child: Text(
                                            "View Details",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                color: Colors.black,
                                                fontSize: 14.sm),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
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
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.5,
                    color: Color(0xFFCFCFCF).withOpacity(1),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
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
                                  color: Color(0xFFFFB600)),
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
                height: 325.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      color: Color(0xFFCFCFCF).withOpacity(1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, top: 10, bottom: 5, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Blogs",
                          style:
                              TextStyle(fontSize: 17.sm, fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height: 268.h,
                          child: PageView.builder(
                            padEnds: false,
                            controller: pickcontroller,
                            itemCount: 2,
                            itemBuilder: (
                              BuildContext context,
                              int index1,
                            ) {
                              bool isMyPageIndex = selectIndex == index1;
                              if (index1 == 0) {
                                return Card(
                                  elevation: 2,
                                  color: Color(0xFFF0F7FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 5.0,
                                        left: 15,
                                        right: 15,
                                        bottom: 5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/12643932_5031659.png',
                                        ),
                                        SizedBox(
                                          height: 9.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Retail banks wake up\nto digital',
                                              style: TextStyle(
                                                  fontSize: 16.sm,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 9.h,
                                        // ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.calendar_today_outlined,
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              "October 17 , 2022",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.sm),
                                            ),
                                            Spacer(),
                                            SizedBox(
                                              height: 40.h,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    backgroundColor:
                                                        Color(0xFFFFB600)),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              } //2nd plan
                              return Card(
                                elevation: 2,
                                color: Color(0xFFF0F7FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 5.0, left: 15, right: 15, bottom: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/12643932_5031659.png',
                                      ),
                                      SizedBox(
                                        height: 9.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Retail banks wake up\nto digital',
                                            style: TextStyle(
                                                fontSize: 16.sm,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ],
                                      ),
                                      // SizedBox(
                                      //   height: 9.h,
                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.calendar_today_outlined,
                                            size: 12,
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Text(
                                            "October 17 , 2022",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.sm),
                                          ),
                                          Spacer(),
                                          SizedBox(
                                            height: 40.h,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Icon(
                                                Icons.arrow_forward,
                                                size: 20,
                                                color: Colors.black,
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Color(0xFFFFB600)),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
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
        ),
      ),
    );
  }
}
