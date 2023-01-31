import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/AppBarWithNotification.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CategoriesMain extends StatefulWidget {
  const CategoriesMain({super.key});

  @override
  State<CategoriesMain> createState() => _CategoriesMainState();
}

class _CategoriesMainState extends State<CategoriesMain> {
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
          {}
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
      backgroundColor: Color(0xFFFFFBF0),
      appBar: AppBar(
        title: Text(
          'Categories',
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
        selectedLabelStyle: TextStyle(color: Color(0xFFF78104)),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home-svgrepo-com.svg',
              height: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFEEBBD),
              ),
              height: 20,
              width: 50,
              child: SvgPicture.asset(
                'assets/images/category-alt-svgrepo-com.svg',
                height: 20,
              ),
            ),
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
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              height: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: 1,
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
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 166.h,
                    width: 174.w,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/fractionalrealestateproperty1');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                "assets/images/categoryresidential.png"),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Fractional Real\nEstate',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18.sm, fontFamily: 'Poppins'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 166.h,
                    width: 174.w,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/peerlendingasset1');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/blockchain.png"),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Peer - Peer\nlending',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18.sm, fontFamily: 'Poppins'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
