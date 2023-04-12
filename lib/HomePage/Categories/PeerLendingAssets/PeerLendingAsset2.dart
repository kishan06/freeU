import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/customNextButton.dart';
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
      // bottomNavigationBar:
      //     //Transform.translate(
      //     // offset: Offset(0.0, -10),
      //     // child:
      //     // ClipRRect(
      //     //   borderRadius: BorderRadius.all(Radius.circular(30.r)),
      //     //  child:
      //     CreateBottomBar(stateBottomNav, "bottombar", context),
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
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  'assets/images/real_estate.jpg',
                  fit: BoxFit.cover,
                  width: 400,
                  height: 210,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFD5F0FD),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 10,
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
                                    fontSize: 16.sm, fontFamily: 'Poppins'),
                              ),
                              Text(
                                "Purchase Price",
                                style: TextStyle(
                                    fontSize: 14.sm, fontFamily: 'Poppins'),
                              ),
                              Container(
                                width: 130.w,
                                child: Divider(
                                  color: Color(0xFF153D6D),
                                  thickness: 1,
                                ),
                              ),
                              Text(
                                "₹50,000",
                                style: TextStyle(
                                    fontSize: 16.sm, fontFamily: 'Poppins'),
                              ),
                              Text(
                                "Minimum investment",
                                style: TextStyle(
                                    fontSize: 14.sm, fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 16.sm, fontFamily: 'Poppins'),
                              ),
                              Text(
                                "Months Tenure",
                                style: TextStyle(
                                    fontSize: 14.sm, fontFamily: 'Poppins'),
                              ),
                              Container(
                                width: 130.w,
                                child: Divider(
                                  color: Color(0xFF153D6D),
                                  thickness: 1,
                                ),
                              ),
                              Text(
                                "₹67 cr",
                                style: TextStyle(
                                    fontSize: 16.sm, fontFamily: 'Poppins'),
                              ),
                              Text(
                                "Assets",
                                style: TextStyle(
                                    fontSize: 14.sm, fontFamily: 'Poppins'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFD5F0FD),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Vaishnavi Tech Park Opportunity",
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
                                "Outer Ring Road Sarjapur, Bangalore",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sm,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image.asset(
                                          'assets/images/real_estate.jpg',
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.cover))),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image.asset(
                                        'assets/images/real_estate.jpg',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image.asset(
                                          'assets/images/real_estate.jpg',
                                          width: 50,
                                          height: 80,
                                          fit: BoxFit.cover))),
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
                        leftIcon: SvgPicture.asset('assets/images/13474.svg'),
                        isOpen: true,
                        headerBackgroundColor: Color(0xFFffffff),
                        headerBackgroundColorOpened: Color(0xFFffffff),
                        contentBackgroundColor: Color(0xFFffffff),
                        contentBorderColor: Color(0xFFffffff),
                        contentBorderRadius: 10,
                        headerBorderRadius: 10,
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
                            Text(
                              "Unique opportunity to participate in the “Hub & Spoke” trend",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sm,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            common_ctn(
                              text: "Analytics Based Collection",
                            ),
                            common_ctn(
                              text: "Flat Returns instead of reducing",
                            ),
                            common_ctn(
                              text:
                                  "Various plans available to manage\nliquidity",
                            ),
                            common_ctn(
                              text: "No Lender Processing Fee",
                            ),
                            common_ctn(
                              text:
                                  'Portfolio management fee linked\nto performance',
                            ),
                            common_ctn(
                              text: "Minimum Effort required from\nlenders",
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
                        contentBorderRadius: 10,
                        headerBorderRadius: 10,
                        rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                        header: Text(
                          'Borrowers Attributes',
                          style: TextStyle(
                              color: Color(0xFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 18.sm),
                        ),
                        content: Column(
                          children: [
                            common_ctn(
                              text: "Analytics Based Collection",
                            ),
                            common_ctn(
                              text: "Flat Returns instead of reducing",
                            ),
                            common_ctn(
                              text:
                                  "Various plans available to manage\nliquidity",
                            ),
                            common_ctn(
                              text: "No Lender Processing Fee",
                            ),
                            common_ctn(
                              text:
                                  'Portfolio management fee linked\nto performance',
                            ),
                            common_ctn(
                              text: "Minimum Effort required from\nlenders",
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
                        contentBorderRadius: 10,
                        headerBorderRadius: 10,
                        rightIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                        header: Text(
                          'Portfolio Performation',
                          style: TextStyle(
                              color: Color(0xFF143C6D),
                              fontFamily: "Poppins",
                              fontSize: 18.sm),
                        ),
                        content: Column(
                          children: [
                            common_ctn(
                              text: "Analytics Based Collection",
                            ),
                            common_ctn(
                              text: "Flat Returns instead of reducing",
                            ),
                            common_ctn(
                              text:
                                  "Various plans available to manage\nliquidity",
                            ),
                            common_ctn(
                              text: "No Lender Processing Fee",
                            ),
                            common_ctn(
                              text:
                                  'Portfolio management fee linked\nto performance',
                            ),
                            common_ctn(
                              text: "Minimum Effort required from\nlenders",
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
                        contentBorderRadius: 10,
                        headerBorderRadius: 10,
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
                            common_ctn(
                              text: "Analytics Based Collection",
                            ),
                            common_ctn(
                              text: "Flat Returns instead of reducing",
                            ),
                            common_ctn(
                              text:
                                  "Various plans available to manage\nliquidity",
                            ),
                            common_ctn(
                              text: "No Lender Processing Fee",
                            ),
                            common_ctn(
                              text:
                                  'Portfolio management fee linked\nto performance',
                            ),
                            common_ctn(
                              text: "Minimum Effort required from\nlenders",
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
                        contentBorderRadius: 10,
                        headerBorderRadius: 10,
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
                            common_ctn(
                              text: "Analytics Based Collection",
                            ),
                            common_ctn(
                              text: "Flat Returns instead of reducing",
                            ),
                            common_ctn(
                              text:
                                  "Various plans available to manage\nliquidity",
                            ),
                            common_ctn(
                              text: "No Lender Processing Fee",
                            ),
                            common_ctn(
                              text:
                                  'Portfolio management fee linked\nto performance',
                            ),
                            common_ctn(
                              text: "Minimum Effort required from\nlenders",
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
              SizedBox(
                height: 10,
              ),
              CustomNextButton(
                  ontap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
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
                                        fontSize: 18.sm,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 330,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF9F9F9),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.06),
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                          ),
                                        ]),
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
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Category",
                                                style: TextStyle(
                                                    color: Color(0xFF444444),
                                                    fontFamily: "Poppins",
                                                    fontSize: 14.sm,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Image.asset(
                                                  "assets/images/myrelogo.png")
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Product",
                                                style: TextStyle(
                                                    color: Color(0xFF444444),
                                                    fontFamily: "Poppins",
                                                    fontSize: 14.sm,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "Vaishnavi Tech\nPark Opportunity",
                                                style: TextStyle(
                                                  color: Color(0xFF444444),
                                                  fontFamily: "Poppins",
                                                  fontSize: 12.sm,
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
                                  width: 330,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF9F9F9),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.06),
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                          ),
                                        ]),
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
                                            "A FreeU Advisory Team\nwill get back to you\nsoon via call or email",
                                            style: TextStyle(
                                              color: Color(0xFF444444),
                                              fontFamily: "Poppins",
                                              fontSize: 12.sm,
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
                                      backgroundColor: Color(0xFF1B8DC9),
                                      //  color: Color(0xFFFFB600),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      "Show more products",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.white,
                                          fontSize: 18.sm),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]);
                      },
                    );
                  },
                  text: 'Invest Now'),
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

class common_ctn extends StatelessWidget {
  const common_ctn({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SvgPicture.asset(
            "assets/images/bullet point.svg",
            width: 13.w,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          text,
          style: TextStyle(fontFamily: "Poppins", fontSize: 16.sm),
        )
      ],
    );
  }
}
