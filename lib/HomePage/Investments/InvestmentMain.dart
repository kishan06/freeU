import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/SideMenu/NavDrawer.dart';
import 'package:freeu/common/AppBarWithNotification.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class InvestmentMain extends StatefulWidget {
  const InvestmentMain({super.key});

  @override
  State<InvestmentMain> createState() => _InvestmentMainState();
}

class _InvestmentMainState extends State<InvestmentMain> {
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
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityFirst())));
          }
          break;

        case 2:
          {
            Get.toNamed('/investmentmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityQuestion())));
          }
          break;
        case 3:
          {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => Login())));
          }
          break;
        case 4:
          {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => SignUp())));
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
      //  backgroundColor: Color(0xFFFFFBF0),
      appBar: CustomAppBarWithNotification(
          titleTxt: "Your Investments", actions: true, bottomtext: false),
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
        currentIndex: 2,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFFF78104),
        backgroundColor: Colors.white,
        onTap: (index) {
          print(index);
          _selectedTab(index);
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.h,
              ),
              SvgPicture.asset(
                "assets/images/graph.svg",
                height: 195.h,
                width: 370.w,
              ),
              SizedBox(
                height: 15.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Current Investment",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/currentinvestment');
                            },
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "Product",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 0,
                            child: Text(
                              "Action",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy\nBusiness Hub",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 0,
                            child: SizedBox(
                              height: 22.h,
                              width: 55.w,
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
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.black,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {
                                  Get.toNamed('/fractionalrealestateproperty2');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 0,
                            child: SizedBox(
                              height: 22.h,
                              width: 55.w,
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
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.black,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {
                                  Get.toNamed('/fractionalrealestateproperty2');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Embassy\nBusiness Hub",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Text(
                              "+₹25,000",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 0,
                            child: SizedBox(
                              height: 22.h,
                              width: 55.w,
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
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.black,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {
                                  Get.toNamed('/fractionalrealestateproperty2');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Previously Invested Products",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18.sm,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 60.w,
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: 340.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    "Product",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    "Profit & Loss",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    "Tenure",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 0,
                                  child: Text(
                                    "Action",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.sm,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: 340.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Text(
                                    "Embassy\nBusiness Hub",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    "+₹25,000",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    "3-6 months",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 0,
                                  child: SizedBox(
                                    height: 25.h,
                                    width: 70.w,
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
                                        "Download",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                            fontSize: 9.sm),
                                      ),
                                      onPressed: () {
                                        // Get.toNamed(
                                        //     '/fractionalrealestateproperty2');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: 340.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Text(
                                    "Embassy Business Hub",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    "+₹25,000",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    "3-6 months",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 0,
                                  child: SizedBox(
                                    height: 25.h,
                                    width: 70.w,
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
                                        "Download",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                            fontSize: 9.sm),
                                      ),
                                      onPressed: () {
                                        // Get.toNamed(
                                        //     '/fractionalrealestateproperty2');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: 340.w,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Text(
                                    "Embassy\nBusiness Hub",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    "+₹25,000",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    "3-6 months",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 0,
                                  child: SizedBox(
                                    height: 25.h,
                                    width: 70.w,
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
                                        "Download",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                            fontSize: 9.sm),
                                      ),
                                      onPressed: () {
                                        // Get.toNamed(
                                        //     '/fractionalrealestateproperty2');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
