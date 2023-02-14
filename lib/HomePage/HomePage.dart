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
    viewportFraction: 0.75,
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
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Color(0xFFCFEFFF),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "Your Investments",
                        style:
                            TextStyle(fontSize: 17.sm, fontFamily: 'Poppins'),
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
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
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                          "₹ 25,00,000",
                                          style: blackStyle14().copyWith(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 2,
                                        child: Text(
                                          "Invested",
                                          style: blackStyle12(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      height: 200,
                                      width: 200,
                                      child: DougnutChart()),
                                ),
                                SizedBox(
                                  width: 10.w,
                                )
                              ],
                            ),
                          );
                        } //2nd plan
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
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
                                width: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                        "₹ 25,00,000",
                                        style: blackStyle14().copyWith(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Text(
                                        "Invested",
                                        style: blackStyle12(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: DougnutChart()),
                              ),
                              SizedBox(
                                width: 10.w,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 6.0, top: 12, bottom: 12, right: 6),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed('/fractionalrealestateproperty1');
                              },
                              child: Card(
                                elevation: 2,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 5.0,
                                        left: 10,
                                        right: 10,
                                        bottom: 5),
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
                          Flexible(
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed('/peerlendingasset1');
                              },
                              child: Card(
                                elevation: 2,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 5.0,
                                        left: 10,
                                        right: 10,
                                        bottom: 5),
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
                                          'Peer- Peer lending',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16.sm,
                                              fontFamily: 'Poppins'),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          )
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
                      Text(
                        "Top Pick",
                        style:
                            TextStyle(fontSize: 17.sm, fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 285.h,
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
                            color: Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 14.0, left: 15, right: 15, bottom: 6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fractional Real Estate',
                                    style: blackStyle14()
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Image.asset(
                                    'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    'Vaishnavi Tech Park Opportunity',
                                    style: blackStyle15(),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Row(
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
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                ],
                              ),
                            ),
                          );
                        } //2nd plan
                        return Card(
                          elevation: 2,
                          color: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14.0, left: 15, right: 15, bottom: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fractional Real Estate',
                                  style: blackStyle14()
                                      .copyWith(fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Image.asset(
                                  'assets/images/harry-shelton-pPxhM0CRzl4-unsplash.png',
                                ),
                                SizedBox(
                                  height: 9.h,
                                ),
                                Text(
                                  'Vaishnavi Tech Park Opportunity',
                                  style: blackStyle15(),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                SizedBox(
                                  height: 8.h,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
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
                      Text(
                        "Recommended",
                        style:
                            TextStyle(fontSize: 17.sm, fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 300.h,
                    child: PageView.builder(
                      padEnds: false,
                      controller: recommendedcontroller,
                      itemCount: 2,
                      itemBuilder: (
                        BuildContext context,
                        int index1,
                      ) {
                        bool isMyPageIndex = selectIndex == index1;
                        if (index1 == 0) {
                          return Card(
                            elevation: 2,
                            color: Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 14.0, left: 15, right: 15, bottom: 6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Card(
                                    color: Color.fromRGBO(27, 141, 201, 0.3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                                      child: Text(
                                        'Fractional Real Estate',
                                        style: blackStyle12(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Vaishnavi Tech Park Opportunity',
                                      style: blackStyle16(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
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
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                ],
                              ),
                            ),
                          );
                        } //2nd plan
                        return Card(
                          elevation: 2,
                          color: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14.0, left: 15, right: 15, bottom: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/anthony-esau-N2zk9yXjmLA-unsplash.png',
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Card(
                                  color: Color.fromARGB(255, 134, 207, 247),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                                    child: Text(
                                      'Fractional Real Estate',
                                      style: blackStyle12(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Flexible(
                                  child: Text(
                                    'Vaishnavi Tech Park Opportunity',
                                    style: blackStyle16(),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                SizedBox(
                                  height: 8.h,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
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
                  Card(
                    elevation: 2,
                    color: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 14.0, left: 10, right: 15, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 71.h,
                            width: 80.w,
                            child: Image.asset("assets/images/na_april_69.jpg"),
                          ),
                          Column(
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
                  SizedBox(
                    height: 6.h,
                  ),
                  Card(
                    elevation: 2,
                    color: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 14.0, left: 10, right: 15, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 71.h,
                            width: 80.w,
                            child: Image.asset("assets/images/na_april_69.jpg"),
                          ),
                          Column(
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

class DougnutChart extends StatelessWidget {
  const DougnutChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 20),
      ChartData('Steve', 20),
    ];
    return SfCircularChart(
      centerY: '55',
      centerX: '50',
      palette: <Color>[
        Color.fromARGB(255, 113, 201, 248),
        Color(0xFF1B8DC9),
      ],
      series: <CircularSeries>[
        // Render pie chart
        DoughnutSeries<ChartData, String>(
          dataSource: chartData,
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          innerRadius: '40%',
        )
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
