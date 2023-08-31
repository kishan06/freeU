import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/FractionalRealEstateProperty/PropertiesInvestment.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/FractionalProperties.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Fractionalproperties extends StatefulWidget {
  const Fractionalproperties({super.key});

  @override
  State<Fractionalproperties> createState() => _FractionalpropertiesState();
}

class _FractionalpropertiesState extends State<Fractionalproperties> {
  late Future myfuture;
  @override
  void initState() {
    myfuture = FractionalRealEstate().FractionalRealEstateAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1FAFF),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1FAFF),
          elevation: 0,
          titleSpacing: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
            ),
            iconSize: 26,
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
          future: myfuture,
          builder: (ctx, snapshot) {
            if (snapshot.data == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Center(child: CircularProgressIndicator())],
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18.spMin),
                  ),
                );
              }
            }
            return _buildBody(
              context,
            );
          },
        ));
  }

  Widget _buildBody(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Fractional Real Estate",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Expanded(
          child: DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                ButtonsTabBar(
                  buttonMargin: EdgeInsets.zero,
                  contentPadding: EdgeInsets.only(left: 27, right: 27),
                  radius: 4,
                  backgroundColor: Color(0xFF143C6D),
                  unselectedBorderColor: Color(0xFFFFFFFF),
                  //borderWidth: 1,
                  borderColor: Color(0xFFFFFFFF),
                  unselectedBackgroundColor: Color(0xFFFFFFFF),
                  unselectedLabelStyle: TextStyle(color: Color(0xFF0F0C0C)),
                  labelStyle: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  tabs: [
                    Tab(
                      text: "Open",
                    ),
                    Tab(
                      text: "Fully funded",
                    ),
                    Tab(
                      text: "Resale",
                    ),
                  ],
                ),
                //sizedBoxHeight(15.h),
                Expanded(
                  child: TabBarView(
                    children: [
                      FirstTab(),
                      SecondTab(),
                      ThirdTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        const Text("No Data Found")
      ],
    );
  }
}

class SecondTab extends StatefulWidget {
  const SecondTab({super.key});

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  List contents = [
    {
      "title": "Navi Mumbai Office \nOpportunity II",
      "taxirr": "12.50%",
      "minimum": "₹ 95,000",
      // "View investment Route": PropertiesInvestment(
      //   pageIndex: 0,
      // )
    },
    {
      "title": "Prestige Tech Platina, \nBangalore",
      "taxirr": "12.25%",
      "minimum": "₹ 95,000",
      // "View investment Route": PropertiesInvestment(
      //   pageIndex: 1,
      // )
    },
    {
      "title": "Bangalore Warehousing Opportunity I",
      "taxirr": "",
      "minimum": "₹ 95,000",
      // "View investment Route": PropertiesInvestment(
      //   pageIndex: 2,
      // )
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return sizedBoxHeight(15.h);
        },
        itemCount: fractionalRealEstateObj!.data!.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x48B9B9BE),
                      blurRadius: 20.0,
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                  child: Column(
                    children: [
                      Image.asset(
                        // image,
                        "assets/images/fractional.png",
                        width: 358,
                        height: 162,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                fractionalRealEstateObj!
                                        .data?[index]
                                        .fractionalRealEstate!
                                        .propertyNameAndLocation! ??
                                    "", // contents[index]["title"],
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Poppins',
                                    color: Color(0XFF000000),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Image.asset(
                              // image1,
                              "assets/images/place.png",
                              width: 50.w,
                              height: 50.h,
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 179),
                                  child: Text(
                                    //text1,
                                    "Location:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Color(0XFF000000),
                                      fontFamily: 'Poppins',
                                      //fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Text(
                                  //subtext1,
                                  "Seawoods, Navi Mumbai",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Image.asset(
                              //image2,
                              "assets/images/investmentproperties (1).png",
                              width: 50.w,
                              height: 50.w,
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  // text2,
                                  "Pre-tax IRR:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    //fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  // subtext2,
                                  contents[index]["taxirr"],
                                  //"12.7%",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/propertiestransfer.png",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Minimum investment amount",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  //subtext3,
                                  fractionalRealEstateObj!
                                          .data?[index]
                                          .fractionalRealEstate!
                                          .minimumInvestment ??
                                      contents[index]["minimum"],
                                  //" 1 Crore",
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Color(0XFF000000),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
                        child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 220, 220, 226),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.blue143C6D,
                          ),
                          child: OpenContainerWrappers(
                            openBuild: PropertiesInvestment(
                              slug: fractionalRealEstateObj!.data?[index]
                                      .fractionalRealEstate!.slug ??
                                  "",
                            ),
                            //                Navigator.push(
                            // context,
                            // MaterialPageRoute(
                            //     builder: (context) => PropertiesInvestment(
                            //           slug: fractionalRealEstateObj!
                            //                             .data?[index]
                            //                             .fractionalRealEstate!
                            //                             .slug ?? "",
                            //         ))),

                            // contents[index]['View investment Route'],
                            //  PropertiesInvestment(),
                            closeBuild: Container(
                              width: double.infinity,
                              height: 50.h,
                              child: Center(
                                  child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18.sp,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        const Text("No Data Found")
      ],
    );
  }
}
