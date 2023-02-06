import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class FractionalRealEstateProperty1 extends StatefulWidget {
  const FractionalRealEstateProperty1({super.key});

  @override
  State<FractionalRealEstateProperty1> createState() =>
      _FractionalRealEstateProperty1State();
}

class _FractionalRealEstateProperty1State
    extends State<FractionalRealEstateProperty1> {
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
      backgroundColor: Color(0xFFFFFBF0),
      appBar: CustomSignupAppBar(
        titleTxt: "Fractional Real Estate properties",
        showLeading: true,
        bottomtext: false,
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
          padding: EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xFF153D6D),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Stack(children: [
                        Image.asset("assets/images/myre.png"),
                        Positioned(
                            right: 2,
                            bottom: 2,
                            child: SizedBox(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 17.sm,
                                      ),
                                      Text(
                                        "Outer Ring Road Sarjapur, Bangalore",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 13.sm,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      ]),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Vaishnavi Tech Park Opportunity",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18.sm,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Target IRR",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "16.2 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Average Rental Yield",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "9 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Asset value",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 35,40,00,000",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Return Target",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 27,15,00,000",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 140.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xFFFFB600),
                            //  color: Color(0xFFFFB600),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Get.toNamed('/fractionalrealestateproperty2');
                          },
                          child: Text(
                            "View Details",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.black,
                                fontSize: 14.sm),
                          ),
                        ),
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
                  side: BorderSide(color: Color(0xFF153D6D)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Stack(children: [
                        Image.asset("assets/images/strata.png"),
                        Positioned(
                            right: 2,
                            bottom: 2,
                            child: SizedBox(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 17.sm,
                                      ),
                                      Text(
                                        "Outer Ring Road Sarjapur, Bangalore",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.sm,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      ]),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Chennai Office Opportunity",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20.sm,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Target IRR",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "12.4 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Average Rental Yield",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "12.4 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Asset value",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 27,15,00,000",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Return Target",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 27,15,00,000",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 140.w,
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
                            Get.toNamed('/fractionalrealestateproperty2');
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFF153D6D)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Stack(children: [
                        Image.asset("assets/images/propertyshare.png"),
                        Positioned(
                            right: 2,
                            bottom: 2,
                            child: SizedBox(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          size: 17.sm),
                                      Text(
                                        "Yelahanka, Bangalore",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.sm,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      ]),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Embassy Business Hub",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20.sm,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Target IRR",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "12.4 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Average Rental Yield",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "12.4 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Asset value",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 27,15,00,000",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Return Target",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 27,15,00,000",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 140.w,
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
                            Get.toNamed('/fractionalrealestateproperty2');
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFF153D6D)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Stack(children: [
                        Image.asset("assets/images/hbits.png"),
                        Positioned(
                          right: 2,
                          bottom: 2,
                          child: SizedBox(
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.location_on_outlined,
                                        size: 17.sm),
                                    Text(
                                      "Andheri, Mumbai",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 13.sm,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "TIMES SQUARE ANDHERI OPPORTUNITY",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20.sm,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Target IRR",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "13.1 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Average Rental Yield",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "10.35 %",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Asset value",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 30.52 Crore",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Return Target",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          ),
                          Text(
                            "₹ 27,15,00,000",
                            style: TextStyle(
                              color: Color(0XFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 140.w,
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
                            Get.toNamed('/fractionalrealestateproperty2');
                          },
                        ),
                      )
                    ],
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
