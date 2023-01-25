import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/SideMenu/NavDrawer.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class PeerLendingAsset2 extends StatefulWidget {
  const PeerLendingAsset2({super.key});

  @override
  State<PeerLendingAsset2> createState() => _PeerLendingAsset2State();
}

class _PeerLendingAsset2State extends State<PeerLendingAsset2> {
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
      backgroundColor: Color(0xFFFFFBF0),
      appBar: CustomSignupAppBar(
        titleTxt: "Peer - Peer lending assets",
        showLeading: true,
        bottomtext: false,
      ),
      bottomNavigationBar:
          //Transform.translate(
          // offset: Offset(0.0, -10),
          // child:
          // ClipRRect(
          //   borderRadius: BorderRadius.all(Radius.circular(30.r)),
          //  child:
          BottomNavigationBar(
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
        currentIndex: 1,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFFF78104),
        backgroundColor: Colors.white,
        onTap: (index) {
          print(index);
          _selectedTab(index);
        },
        type: BottomNavigationBarType.fixed,
      ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/TCS_SIPCOT_Building.png",
                      height: 216.h,
                      width: 358.w,
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 150,
                    child: SizedBox(
                      height: 150.h,
                      width: 328,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "1 Crore",
                                    style: TextStyle(
                                        fontSize: 18.sm, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Purchase Price",
                                    style: TextStyle(
                                        fontSize: 16.sm, fontFamily: 'Poppins'),
                                  ),
                                  Container(
                                    width: 130.w,
                                    child: Divider(
                                      color: Color(0xFF153D6D),
                                      thickness: 2,
                                    ),
                                  ),
                                  Text(
                                    "₹50,000",
                                    style: TextStyle(
                                        fontSize: 18.sm, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Minimum investment",
                                    style: TextStyle(
                                        fontSize: 16.sm, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 18.sm, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Months Tenure",
                                    style: TextStyle(
                                        fontSize: 16.sm, fontFamily: 'Poppins'),
                                  ),
                                  Container(
                                    width: 130.w,
                                    child: Divider(
                                      color: Color(0xFF153D6D),
                                      thickness: 2,
                                    ),
                                  ),
                                  Text(
                                    "₹67 cr",
                                    style: TextStyle(
                                        fontSize: 18.sm, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Assets",
                                    style: TextStyle(
                                        fontSize: 16.sm, fontFamily: 'Poppins'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Making India Atmanirbhar",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                ),
                                Text(
                                  "Gurgaon - Haryana",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sm,
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
                                SizedBox(
                                  height: 75.h,
                                  width: 92.w,
                                  child: Card(
                                    child: Image.asset(
                                        "assets/images/TCS_SIPCOT_Building.png"),
                                  ),
                                ),
                                SizedBox(
                                  height: 75.h,
                                  width: 92.w,
                                  child: Card(
                                    child: Image.asset(
                                        "assets/images/TCS_SIPCOT_Building.png"),
                                  ),
                                ),
                                SizedBox(
                                  height: 75.h,
                                  width: 92.w,
                                  child: Card(
                                    child: Image.asset(
                                        "assets/images/TCS_SIPCOT_Building.png"),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Accordion(
                      paddingListBottom: 0,
                      paddingListTop: 0,
                      paddingListHorizontal: 0,
                      disableScrolling: true,

                      maxOpenSections: 1,
                      scaleWhenAnimating: true,
                      openAndCloseAnimation: true,
                      // headerPadding:
                      //     const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                      sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                      sectionClosingHapticFeedback: SectionHapticFeedback.light,
                      children: [
                        AccordionSection(
                          scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                          leftIcon: SvgPicture.asset(
                            "assets/images/overview.svg",
                          ),
                          isOpen: true,
                          headerBackgroundColor: Color(0xFFFFFFFF),
                          headerBackgroundColorOpened: Color(0xFFFFFFFF),
                          contentBackgroundColor: Color(0xFFFFFFFF),
                          contentBorderColor: Color(0xFFFFFFFF),
                          contentBorderRadius: 0,
                          headerBorderRadius: 0,
                          rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                          header: Text(
                            'Why Faircent Double?',
                            style: TextStyle(
                                color: Color(0xFF143C6D),
                                fontFamily: "Poppins",
                                fontSize: 18.sm),
                          ),
                          content: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Analytics Based Collection",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Flat Returns instead of reducing",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Various plans available to manage liquidity",
                                      softWrap: true,
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "No Lender Processing Fee",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Portfolio management fee linked to performance",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Minimum Effort required from lenders",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          contentHorizontalPadding: 20,
                          // onOpenSection: () => print('onOpenSection ...'),
                          // onCloseSection: () => print('onCloseSection ...'),
                        ),
                        AccordionSection(
                          scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                          leftIcon: SvgPicture.asset(
                            "assets/images/home.svg",
                          ),
                          isOpen: true,
                          headerBackgroundColor: Color(0xFFFFFFFF),
                          headerBackgroundColorOpened: Color(0xFFFFFFFF),
                          contentBackgroundColor: Color(0xFFFFFFFF),
                          contentBorderColor: Color(0xFFFFFFFF),
                          contentBorderRadius: 0,
                          headerBorderRadius: 0,
                          rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                          header: Text(
                            'Tenant',
                            style: TextStyle(
                                color: Color(0xFF143C6D),
                                fontFamily: "Poppins",
                                fontSize: 18.sm),
                          ),
                          content: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Analytics Based Collection",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Flat Returns instead of reducing",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Various plans available to manage liquidity",
                                      softWrap: true,
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "No Lender Processing Fee",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Portfolio management fee linked to performance",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Minimum Effort required from lenders",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          contentHorizontalPadding: 20,
                          // onOpenSection: () => print('onOpenSection ...'),
                          // onCloseSection: () => print('onCloseSection ...'),
                        ),
                        AccordionSection(
                          scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                          leftIcon: SvgPicture.asset(
                            "assets/images/pricetag.svg",
                          ),
                          isOpen: true,
                          headerBackgroundColor: Color(0xFFFFFFFF),
                          headerBackgroundColorOpened: Color(0xFFFFFFFF),
                          contentBackgroundColor: Color(0xFFFFFFFF),
                          contentBorderColor: Color(0xFFFFFFFF),
                          contentBorderRadius: 0,
                          headerBorderRadius: 0,
                          rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                          header: Text(
                            'Pricing',
                            style: TextStyle(
                                color: Color(0xFF143C6D),
                                fontFamily: "Poppins",
                                fontSize: 18.sm),
                          ),
                          content: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Analytics Based Collection",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Flat Returns instead of reducing",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Various plans available to manage liquidity",
                                      softWrap: true,
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "No Lender Processing Fee",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Portfolio management fee linked to performance",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Minimum Effort required from lenders",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          contentHorizontalPadding: 20,
                          // onOpenSection: () => print('onOpenSection ...'),
                          // onCloseSection: () => print('onCloseSection ...'),
                        ),
                        AccordionSection(
                          scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                          leftIcon: SvgPicture.asset(
                            "assets/images/location.svg",
                          ),
                          isOpen: true,
                          headerBackgroundColor: Color(0xFFFFFFFF),
                          headerBackgroundColorOpened: Color(0xFFFFFFFF),
                          contentBackgroundColor: Color(0xFFFFFFFF),
                          contentBorderColor: Color(0xFFFFFFFF),
                          contentBorderRadius: 0,
                          headerBorderRadius: 0,
                          rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                          header: Text(
                            'Location',
                            style: TextStyle(
                                color: Color(0xFF143C6D),
                                fontFamily: "Poppins",
                                fontSize: 18.sm),
                          ),
                          content: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Analytics Based Collection",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Flat Returns instead of reducing",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Various plans available to manage liquidity",
                                      softWrap: true,
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "No Lender Processing Fee",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Portfolio management fee linked to performance",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Minimum Effort required from lenders",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          contentHorizontalPadding: 20,
                          // onOpenSection: () => print('onOpenSection ...'),
                          // onCloseSection: () => print('onCloseSection ...'),
                        ),
                        AccordionSection(
                          scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
                          leftIcon: SvgPicture.asset(
                            "assets/images/floorplan.svg",
                          ),
                          isOpen: true,
                          headerBackgroundColor: Color(0xFFFFFFFF),
                          headerBackgroundColorOpened: Color(0xFFFFFFFF),
                          contentBackgroundColor: Color(0xFFFFFFFF),
                          contentBorderColor: Color(0xFFFFFFFF),
                          contentBorderRadius: 0,
                          headerBorderRadius: 0,
                          rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                          header: Text(
                            'Floor Plan',
                            style: TextStyle(
                                color: Color(0xFF143C6D),
                                fontFamily: "Poppins",
                                fontSize: 18.sm),
                          ),
                          content: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Analytics Based Collection",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Flat Returns instead of reducing",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 16.sm),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Various plans available to manage liquidity",
                                      softWrap: true,
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "No Lender Processing Fee",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Portfolio management fee linked to performance",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/bulletpoint.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Minimum Effort required from lenders",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16.sm),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          contentHorizontalPadding: 20,
                          // onOpenSection: () => print('onOpenSection ...'),
                          // onCloseSection: () => print('onCloseSection ...'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
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
                        "Invest Now",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black,
                            fontSize: 14.sm),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          builder: (context) {
                            return Stack(clipBehavior: Clip.none, children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: Text(
                                        "Thank You For Showing Your Interest",
                                        style: TextStyle(
                                            color: Color(0xFF444444),
                                            fontFamily: "Poppins",
                                            fontSize: 20.sm,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: 310,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        color: Color(0xFFF9F9F9),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.0,
                                              right: 30,
                                              top: 12,
                                              bottom: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    "Category",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF444444),
                                                        fontFamily: "Poppins",
                                                        fontSize: 16.sm,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Image.asset(
                                                      "assets/images/facent.png")
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    "Product",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF444444),
                                                        fontFamily: "Poppins",
                                                        fontSize: 16.sm,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    "Making India\nAtmanirbhar",
                                                    style: TextStyle(
                                                      color: Color(0xFF444444),
                                                      fontFamily: "Poppins",
                                                      fontSize: 14.sm,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: 310,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        color: Color(0xFFF9F9F9),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.0,
                                              right: 12,
                                              top: 12,
                                              bottom: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                  "assets/images/freeulogoblue.png"),
                                              Text(
                                                "A FreeU Advisory Team will\nget back to you soon via call\nor email",
                                                style: TextStyle(
                                                  color: Color(0xFF444444),
                                                  fontFamily: "Poppins",
                                                  fontSize: 14.sm,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25.h,
                                    ),
                                    SizedBox(
                                      width: 250.w,
                                      height: 50.h,
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
                                          "Show more products",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              color: Colors.black,
                                              fontSize: 18.sm),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -60,
                                left: 165,
                                child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(
                                    Icons.cancel_sharp,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                ),
                              ),
                            ]);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
