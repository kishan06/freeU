import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class PeerLendingAsset1 extends StatefulWidget {
  const PeerLendingAsset1({super.key});

  @override
  State<PeerLendingAsset1> createState() => _PeerLendingAsset1State();
}

class _PeerLendingAsset1State extends State<PeerLendingAsset1> {
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
      backgroundColor: Color(0xFFF5F8FA),
      appBar: CustomSignupAppBar(
        titleTxt: "Peer - Peer lending assets",
        showLeading: true,
        bottomtext: false,
      ),
      bottomNavigationBar:
          CreateBottomBar(stateBottomNav, "bottombar", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/peerlendingasset2");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assets/images/faircent.png"),
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
                                          "Gurgaon - Haryana",
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
                              "Making India Atmanirbhar",
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
                              "24 Months",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16.sm,
                              ),
                            ),
                            Text(
                              "Fair 0-20%",
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
                              "Purpose: Education\nMonthly Income",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16.sm,
                              ),
                            ),
                            Text(
                              "₹1,06,000",
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
                              "₹ 1,50,000",
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
                              "₹ 2,606",
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/peerlendingasset2');
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assets/images/lenden.png"),
                          Positioned(
                              right: 2,
                              bottom: 2,
                              child: SizedBox(
                                child: Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "Prabhadevi, Mumbai",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
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
                              "24 Months",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16.sm,
                              ),
                            ),
                            Text(
                              "Fair 0-20%",
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
                              "Purpose: Education\nMonthly Income",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16.sm,
                              ),
                            ),
                            Text(
                              "₹1,06,000",
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
                              "₹ 1,50,000",
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
                              "₹ 2,606",
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/peerlendingasset2');
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assets/images/liquiloas.png"),
                          Positioned(
                              right: 2,
                              bottom: 2,
                              child: SizedBox(
                                child: Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "Banyan Park, Mumbai",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
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
                              "Tata Consultancy Services",
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
                              "24 Months",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16.sm,
                              ),
                            ),
                            Text(
                              "Fair 21-40%",
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
                              "Purpose: Education\nMonthly Income",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16.sm,
                              ),
                            ),
                            Text(
                              "₹1,00,000",
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
                              "₹ 2,13,670",
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
                              "₹ 2,604",
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
