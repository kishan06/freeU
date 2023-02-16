import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/AppBarWithNotification.dart';
import 'package:freeu/common/bottombar.dart';
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
            Get.toNamed('/chatpage');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => Login())));
          }
          break;
        case 4:
          {
            Get.toNamed('/myprofile');
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
      backgroundColor: Color(0xFFF5F8FA),
      key: _key,
      drawer: NavDrawer(),
      //  backgroundColor: Color(0xFFFFFBF0),
      appBar: AppBar(
        title: Text(
          'Investment',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 19,
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
          CreateBottomBar(stateBottomNav, "Bottombarinvestment", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Stack(children: [
                SvgPicture.asset(
                  "assets/images/graph.svg",
                  height: 195.h,
                  width: 370.w,
                ),
                Positioned(
                  top: 20,
                  left: 25,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFBF0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹3,43,50,000",
                            style: TextStyle(
                                fontFamily: "Poppins", fontSize: 16.sm),
                          ),
                          Text(
                            '+12.8%',
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: "Poppins",
                                fontSize: 16.sm),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 15.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 11, right: 11, top: 15, bottom: 15),
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
                                fontSize: 16.sm,
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
                            flex: 4,
                            child: Text(
                              "Product",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              "Action",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
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
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {},
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
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {},
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
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontSize: 14.sm),
                                ),
                                onPressed: () {},
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
                      EdgeInsets.only(left: 11, right: 11, top: 15, bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Previously Invested Products",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/previouslyinvestedproducts');
                            },
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
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
                            flex: 4,
                            child: Text(
                              "Product",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              "Action",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
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
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.file_download_outlined,
                                  color: Colors.white,
                                ),
                                // Text(
                                //   "Sell",
                                //   style: TextStyle(
                                //       fontFamily: "Poppins",
                                //       color: Colors.white,
                                //       fontSize: 14.sm),
                                // ),
                                onPressed: () {},
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
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.file_download_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
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
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.file_download_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
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
                      EdgeInsets.only(left: 11, right: 11, top: 15, bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Suggested Invested Products",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sm,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/suggestedinvestedproducts');
                            },
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
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
                            flex: 4,
                            child: Text(
                              "Product",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Text(
                              "Profit & Loss",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              "Action",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
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
                              "Embassy Business Hub",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                                // Text(
                                //   "Sell",
                                //   style: TextStyle(
                                //       fontFamily: "Poppins",
                                //       color: Colors.white,
                                //       fontSize: 14.sm),
                                // ),
                                onPressed: () {},
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
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
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
                                fontWeight: FontWeight.w300,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                fontSize: 14.sm,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: SizedBox(
                              height: 35.h,
                              width: 70.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(0xFF1B8DC9),
                                  //  color: Color(0xFFFFB600),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
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
                height: 15.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
