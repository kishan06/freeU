import 'dart:async';
import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Globalcategoriesmain.dart';
import 'package:freeu/HomePage/Categories/GlobalRealAssets/mainglobalrealassts.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/mainindianrealassets.dart';
import 'package:freeu/Models/Insights/BlogsModel.dart';
import 'package:freeu/ViewModel/Blogs/BlogsApis.dart';
import 'package:freeu/ViewModel/Profile/Getprofile.dart';
import 'package:freeu/ViewModel/TopPicks/TopPicks.dart';
import 'package:freeu/common/Categories%20Common%20Files/coming_soon.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/SideMenu/InsightsInner.dart';
import 'package:freeu/SideMenu/Insights.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Categories%20Common%20Files/categoryCard.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../controllers/entry_point_controller.dart';
import 'Categories/CategoriesMain.dart';
import 'package:async/src/future_group.dart';

class HomePage extends StatefulWidget {
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
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat1.png",
      "title": "Indian Financial Assets",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat2.png",
      "title": "Indian Real \nAssets",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/ww.png",
      "title": "Global Financial Assets",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/gra.png",
      "title": "Global Real \nAssets",
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
  FutureGroup futureGroup = FutureGroup();
  StreamController<BlogsModel> BlogsControllerDummy = StreamController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      int index = (scrollController.offset / 170.w).round();
      categoryIndex.value = index;
    });
    var updata = {"search": null, "tag_id": null};

    futureGroup.add(BlogApis()
        .BlogSearchAndFilter(updata, streamController: BlogsControllerDummy));

    futureGroup.add(TopPicksApi().TopPicksAPI());

    controllerEntryPoint.logedIn!
        ? futureGroup.add(GetProfile().GetProfileAPI())
        : null;

    futureGroup.close();
    Future.delayed(Duration(seconds: 2), () {
      requestPermissions();
    });
  }

  void requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();

    if (statuses[Permission.storage] == PermissionStatus.granted) {
      // Permissions granted, proceed with your operations
    } else {
      // Permissions denied, handle accordingly
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text('Permission denied. Unable to download image.'),
      //   ),
      // );

      await Flushbar(
        message: "Permission denied. Unable to download image.",
        duration: Duration(seconds: 3),
      ).show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            sizedBoxWidth(55.w),
            Text(
              'Welcome',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
            const Spacer(),
            // OpenContainerWrappers(
            //   closeBuild: IconButton(
            //     onPressed: null,
            //     icon: SizedBox(
            //       width: 20.w,
            //       height: 25.h,
            //       child:
            InkWell(
              onTap: () {
                Get.toNamed("/notificationpage");
              },
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: 
                SvgPicture.asset(
                  'assets/images/notification-bell-svgrepo-com.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            //     ),
            //   ),
            //   openBuild: const NotificationPage(),
            // ),
          ],
        ),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: FutureBuilder(
        future: futureGroup.future,
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
          return _buildBody();
        },
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
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
                            image:
                                AssetImage("assets/newImages/Group 51336.png"),
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
                    children: List.generate(toppick!.data!.length, (index) {
                      return topPickCard(
                          text1: toppick?.data?[index].categoryName ?? "",
                          imagePath: toppick?.data?[index].propertyImage ??
                              toppick?.data?[index].companyLogo ??
                              toppick?.data?[index].fileName ??
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/310px-Placeholder_view_vector.svg.png",
                          title: toppick?.data?[index].productName ?? "",
                          add: "Banyan Park,Mumbai");
                    }),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            // twoText("Categories", "View more", onTap: () {
            //   Get.toNamed("/EntryPoint",
            //       arguments: 1, preventDuplicates: false);
            // }),
            // sizedBoxHeight(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                catContainer(0),
                catContainer(1),
              ],
            ),
            sizedBoxHeight(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                catContainer(2),
                catContainer(3),
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
                return tileCard(blogs!.data![index].blogImage!, index);
              },
              separatorBuilder: (_, index) {
                return sizedBoxHeight(10.h);
              },
              itemCount: blogs != null && blogs?.data != null
                  ? min(blogs!.data!.length, 3)
                  : 0,
            ),
            sizedBoxHeight(20.h)
          ],
        ),
      ),
    );
  }

  Widget tileCard(String path, int index) {
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
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 70.h,
                    width: 90.w,
                    child: Image.network(
                      path,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: SizedBox(
                    width: 10.w,
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        blogs?.data?[index].blogTitle ?? "",
                        style: blackStyle14(),
                        maxLines: 3, // Adjust the number of lines as needed
                        overflow: TextOverflow.ellipsis,
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
                            blogs?.data?[index].date ?? "",
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
          openBuild: InsightsInner(
            postDate: blogs?.data?[index].date,
            postDescription: blogs!.data![index].blogDescription,
            postTitle: blogs!.data![index].blogTitle,
            image: blogs!.data![index].blogImage!.trim(),
            minsToRead: blogs!.data![index].minutesToRead,
          )),
    );
  }

  Widget catContainer(index) {
    return SizedBox(
      height: 137.h,
      width: MediaQuery.of(context).size.width / 2 - 32,
      child: InkWell(
        child: categoryCard(
          color1: categoryData[index]["colorL"],
          color2: categoryData[index]["colorD"],
          bgImage: categoryData[index]["bgImage"],
          image: categoryData[index]["imageUrl"],
          text: categoryData[index]["title"],
        ),
        onTap: () {
          index == 0
              ? Get.to(() => CategoriesMain())
              : index == 1
                  ? Get.to(() => Indianrealassetsmain())
                  : index == 2
                      ? Get.to(() => Globalcategoriesmain())
                      : index == 3
                          ? Get.to(() => Globalrealassetsmain())
                          : ComingSoon();
        },
      ),
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
          // height: 238.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5.w,
              color: Color(0xffcfcfcf),
            ),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15.h),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
                ),

                sizedBoxHeight(10.h),

                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imagePath), fit: BoxFit.fill)),
                  ),
                ),

                // Spacer(),
                sizedBoxHeight(10.h),

                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                ),

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
                ),

                SizedBox(
                  height: 10.h,
                )
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
}
