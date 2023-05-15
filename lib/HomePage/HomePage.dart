import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/AlternativeInvestment.dart';
import 'package:freeu/HomePage/Categories/CleanGreen/CleanGreenMain.dart';
import 'package:freeu/HomePage/Categories/High_yield/High_yieldpage.dart';
import 'package:freeu/HomePage/Categories/InvoiceDiscounting/InvoiceDiscountingMain.dart';
import 'package:freeu/HomePage/Categories/Lease_based_Categories/Lease_based.dart';
import 'package:freeu/HomePage/Categories/PeerLendingAssets/PeerMain.dart';
import 'package:freeu/HomePage/Categories/SecuredDebt/SecuredDebtMain.dart';
import 'package:freeu/HomePage/Categories/Venture%20debt/VentureDebtMain.dart';
import 'package:freeu/HomePage/Categories/revenue_based_financing/revenue_based_main.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/SideMenu/InsightsInner.dart';
import 'package:freeu/SideMenu/insights.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/categoryCard.dart';
import 'package:freeu/common/page_animation.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'Categories/Alternative/AIF_main.dart';
import 'Categories/Alternative/Fractionalpage.dart';
import '../controllers/entry_point_controller.dart';

class HomePage extends StatefulWidget {
  // EntryPoint enttyPoint = EntryPoint();
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List KnowledgeData = [
    {
      "imagePath": "assets/images/homepage.png",
    },
    {
      "imagePath": "assets/images/homepagenight.png",
    },
    {
      "imagePath": "assets/images/homepage.png",
    },
  ];

  List topPickData = [
    {
      // /
      "text1": "Fractional Real Estate",
      "imageUrl": "assets/images/rahul-bhogal-Ub9LkIWxyec-unsplash.png",
      "title": "Vaishnavi Tech Park\nOpportunity",
      "add": "Outer Ring Road Sarjapur,\nBangalore",
    },
    {
      "text1": "Alternative investment funds",
      "imageUrl": "assets/images/toppicks.png",
      "title": "Tata Consultancy\nServices",
      "add": "Banyan Park,\nMumbai",
    },
    {
      "text1": "Fractional Real Estate",
      "imageUrl": "assets/images/rahul-bhogal-Ub9LkIWxyec-unsplash.png",
      "title": "Vaishnavi Tech Park\nOpportunity",
      "add": "Outer Ring Road Sarjapur,\nBangalore",
    },
    {
      "text1": "Alternative investment funds",
      "imageUrl": "assets/images/toppicks.png",
      "title": "Tata Consultancy\nServices",
      "add": "Banyan Park,\nMumbai",
    },
  ];

  List categoryData = [
    // /
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat1.png",
      "title": "Alternative Investment Funds",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat2.png",
      "title": "Fractional Real Estate",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat3.png",
      "title": "Peer- Peer lending",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat4.png",
      "title": "Invoice Discounting",
    },
    {
      "colorL": AppColors.brownL_973926,
      "colorD": AppColors.brownD_4C1D13,
      "bgImage": "assets/newImages/bgBrown.svg",
      "imageUrl": "assets/newImages/cat5.png",
      "title": "Revenue based Financing",
    },
    {
      "colorL": AppColors.pinkL_E6088B,
      "colorD": AppColors.pinkD_730446,
      "bgImage": "assets/newImages/bgPink.svg",
      "imageUrl": "assets/newImages/cat6.png",
      "title": "Lease based Financing",
    },
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat7.png",
      "title": "Clean and Green Assets",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat8.png",
      "title": "Venture Debt",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat9.png",
      "title": "Secured Debt",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat10.png",
      "title": "High Yield Finance",
    },
  ];

  List content = [
    {
      "text":
          "We do not just provide you options. We want you to learn about the ones best suited to your needs.",
      "colorL": AppColors.blue143C6D,
    },
    {
      "text": "Know. Learn. Invest.",
      "colorL": AppColors.redL_BE0F02,
    },
    {
      "text": "Create your customized investment world.",
      "colorL": AppColors.greenD_044A1B,
    },
    {
      "text": "Easy to use online platform for Alternative investments",
      "colorL": AppColors.purpleD_242744,
    },
    {
      "text": "One platform, multiple options. Simplified for you.",
      "colorL": AppColors.brownD_4C1D13,
    },
  ];

  final controllerEntryPoint = Get.put(EntryPointController());
  var sliderPage = 0.obs;
  final CarouselController carouselController = CarouselController();
  final RxInt categoryIndex = 0.obs;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      int index = (scrollController.offset / 170.w).round();
      categoryIndex.value = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            sizedBoxWidth(45.w),
            sizedBoxWidth(5.w),
            Text(
              'Welcome',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
            const Spacer(),
            OpenContainerWrappers(
              closeBuild: IconButton(
                onPressed: null,
                icon: SizedBox(
                  width: 18.w,
                  height: 25.h,
                  child: SvgPicture.asset(
                    'assets/images/notification-bell-svgrepo-com.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              openBuild: const NotificationPage(),
            ),
          ],
        ),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              CarouselSlider.builder(
                carouselController: CarouselController(),
                itemCount: 5,
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Container(
                      height: 159.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.blue143C6D,
                          borderRadius: BorderRadius.circular(15.h),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/newImages/Group 51336.png"),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 20.h),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              "assets/newImages/quotes-svgrepo-com.svg",
                              width: 24.w,
                              height: 15.h,
                            ),
                            const Spacer(),
                            text16White(content[index]['text'],
                                textAlign: TextAlign.center),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                    autoPlay: true,
                    height: 159.h,
                    autoPlayAnimationDuration: const Duration(seconds: 3),
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        sliderPage.value = index;
                      });
                    }),
              ),
              sizedBoxHeight(12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => GestureDetector(
                    onTap: () => carouselController.animateToPage(index),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.blue143C6D,
                          borderRadius: BorderRadius.circular(25.r)),
                      width: 12.w,
                      height: sliderPage.value == index ? 3.h : 2.h,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                    ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text20Black("Top Picks"),
                      InkWell(
                          onTap: () {
                            Get.toNamed("/EntryPoint",
                                arguments: 1, preventDuplicates: false);
                          },
                          child: text14Grey272424("View more"))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(topPickData.length, (index) {
                        return topPickCard(
                          text1: topPickData[index]["text1"],
                          imagePath: topPickData[index]["imageUrl"],
                          title: topPickData[index]["title"],
                          add: topPickData[index]["add"],
                        );
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              twoText("Categories", "View more", onTap: () {
                Get.toNamed("/EntryPoint",
                    arguments: 1, preventDuplicates: false);
              }),
              sizedBoxHeight(10.h),
              Column(
                children: [
                  SizedBox(
                    height: 133.h,
                    child: ListView.separated(
                        controller: scrollController,
                        separatorBuilder: (_, index) {
                          return index == 9
                              ? const SizedBox()
                              : sizedBoxWidth(20.w);
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryData.length,
                        itemBuilder: (context, index) {
                          return OpenContainerWrappers(
                            closeBuild: categoryCard(
                              color1: categoryData[index]["colorL"],
                              color2: categoryData[index]["colorD"],
                              bgImage: categoryData[index]["bgImage"],
                              image: categoryData[index]["imageUrl"],
                              text: categoryData[index]["title"],
                            ),
                            openBuild: navigate(index),
                          );
                        }),
                  ),
                  sizedBoxHeight(12.h),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        categoryData.length,
                        (index) => Container(
                          decoration: BoxDecoration(
                              color: AppColors.blue143C6D,
                              borderRadius: BorderRadius.circular(100.r)),
                          width: categoryIndex.value == index ? 8.h : 4.h,
                          height: categoryIndex.value == index ? 8.h : 4.h,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(15.h),
              OpenContainerWrappers(
                closeBuild: twoText(
                  "Knowledge center",
                  "View more",
                ),
                openBuild: const Insights(),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return tileCard(KnowledgeData[index]["imagePath"]);
                  },
                  separatorBuilder: (_, index) {
                    return sizedBoxHeight(10.h);
                  },
                  itemCount: KnowledgeData.length),
              sizedBoxHeight(20.h)
            ],
          ),
        ),
      ),
    );
  }

  Widget navigate(int index) {
    switch (index) {
      case 0:
        {
          return AIFMain();
        }

        break;
      case 1:
        {
          return FractionalRealestate();
        }

        break;

      case 2:
        {
          return PeerMain();
        }

        break;

      case 3:
        {
          return InvoiceDiscountingMain();
        }

        break;

      case 4:
        {
          return RevenueBasedMain();
        }

        break;

      case 5:
        {
          return LeaseBased();
        }

        break;

      case 6:
        {
          return CleanGreenMain();
        }

        break;
      case 7:
        {
          return VentureDebtMain();
        }

        break;

      case 8:
        {
          return SecureDebtMain();
        }

        break;

      case 9:
        {
          return HighYieldFinance();
        }

        break;

      default:
        {
          // Null;
          return FractionalRealestate();
        }
    }
    // return Page;
  }

  Widget tileCard(String path) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ]),
      child: OpenContainerWrappers(
          closeBuild: Padding(
            padding: EdgeInsets.only(
                top: 14.h, left: 10.w, right: 15.w, bottom: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 70.h,
                    width: 90.w,
                    child: Image.asset(
                      path,
                      // height: 70.h,
                      // width: 90.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 0,
                  child: SizedBox(
                    width: 20,
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  child: Column(
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
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "October 17 , 2022",
                            style: blackStyle12(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          openBuild: InsightsInner()),
    );
  }

  Widget twoText(String text1, String text2, {void Function()? onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text20Black(text1),
        InkWell(onTap: onTap, child: text14Grey272424(text2))
      ],
    );
  }

  Widget topPickCard(
      {required String text1,
      required String imagePath,
      required String title,
      required String add}) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Container(
          width: 241.w,
          // color: AppColors.white,
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15.h),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ]
              // border: Border.all(width: 1.h, color: AppColors.greyCFCFCF)
              ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
                ),

                sizedBoxHeight(10.h),

                Container(
                  width: double.infinity,
                  height: 100.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.fill)),
                ),

                // Spacer(),
                sizedBoxHeight(10.h),

                text14Black(title),

                // Spacer(),
                sizedBoxHeight(5.h),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: SvgPicture.asset(
                        "assets/logos/location.svg",
                        height: 14.h,
                        width: 10.w,
                      ),
                    ),
                    sizedBoxWidth(5.w),
                    Expanded(child: text13Grey707070(add))
                  ],
                )

                // text14Grey272424(text)
              ],
            ),
          )),
    );
  }

  titleText(String title) {
    return Text(
      // "Your Investments",
      title,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        color: Color(0xFF1B8DC9),
        fontWeight: FontWeight.w500,
      ),
    );
  }

  // Future<bool> _backbuttonpressed(BuildContext context) async {
  //   bool exitapp = await showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Padding(
  //         padding:  EdgeInsets.all(15.w),
  //         child: AlertDialog(
  //            shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
  //         insetPadding: const EdgeInsets.symmetric(vertical: 10),
  //           title:Text(
  //           "Exit App",
  //           style: TextStyle(
  //               fontFamily: 'Studio Pro',
  //               fontWeight: FontWeight.bold,
  //               fontSize: 18.sp,
  //               color: const Color(0xff3B3F43)),
  //         ),
  //           content: SizedBox(
  //           width: MediaQuery.of(context).size.width,
  //           child: Text(
  //             "Are you sure you want to Exit App?",
  //             style: TextStyle(
  //                 fontFamily: 'Roboto',
  //                 fontSize: 16.sp,
  //                 color: const Color(0xff54595F)),
  //           ),
  //         ),
  //           actions: [
  //            InkWell(
  //             onTap: () {
  //               Get.back();
  //             },
  //             child: Text(
  //               "No",
  //               style: TextStyle(
  //                   fontFamily: "Roboto",
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 16.sp,
  //                   color: const Color(0xff000000)),
  //             ),
  //           ),
  //           sizedBoxWidth(15.sp),
  //           InkWell(
  //             onTap: () {
  //               SystemNavigator.pop();
  //             },
  //             child: Text(
  //               "Yes",
  //               style: TextStyle(
  //                   fontFamily: "Roboto",
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 16.sp,
  //                   color: const Color(0xffB90101)),
  //             ),
  //           ),
  //           sizedBoxWidth(15.sp),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  //   return exitapp ?? false;
  // }
}

class DougnutChart extends StatelessWidget {
  const DougnutChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 20),
      ChartData('Steve', 20),
    ];
    return SfCircularChart(centerY: '55', centerX: '50', palette: <Color>[
      Color.fromARGB(255, 113, 201, 248),
      Color(0xFF1B8DC9),
    ], annotations: <CircularChartAnnotation>[
      CircularChartAnnotation(
        widget: Container(
          child: PhysicalModel(
            child: Container(),
            shape: BoxShape.circle,
            elevation: 10,
            shadowColor: Colors.black,
            color: const Color.fromRGBO(230, 230, 230, 1),
          ),
        ),
      ),
      CircularChartAnnotation(
        widget: Container(
          child: const Text(
            '50%',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    ], series: <CircularSeries>[
      DoughnutSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          // Radius of doughnut
          radius: '100%')
    ]);
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

void dataLabel(DataLabelRenderArgs args) {
  args.text = '50';
}
