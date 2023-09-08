import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Globalcategoriesmain.dart';
import 'package:freeu/HomePage/Categories/GlobalRealAssets/mainglobalrealassts.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/mainindianrealassets.dart';
import 'package:freeu/HomePage/Categories/cat_filter.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Categories%20Common%20Files/coming_soon.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class CatMainScreen extends StatefulWidget {
  const CatMainScreen({super.key});

  @override
  State<CatMainScreen> createState() => _CatMainScreenState();
}

class _CatMainScreenState extends State<CatMainScreen> {
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
      "title": "Indian Real Assets",
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
      "title": "Global Real Assets",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            sizedBoxWidth(50.w),
            Text(
              'Categories',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
            const Spacer(),
            filter(),
            OpenContainerWrappers(
              closeBuild: IconButton(
                onPressed: null,
                icon: SizedBox(
                  width: 20.w,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            catContainer(0),
            sizedBoxHeight(15.h),
            catContainer(1),
            sizedBoxHeight(15.h),
            catContainer(2),
            sizedBoxHeight(15.h),
            catContainer(3),
          ],
        ),
      ),
    );
  }

  Widget catContainer(index) {
    return SizedBox(
      height: 150.h,
      width: double.infinity,
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
              //  Get.toNamed("/EntryPoint",
              //     arguments: 1, preventDuplicates: false)
              : index == 1
                  ? Get.to(() => Indianrealassetsmain())
                  : index == 2
                      ? Get.to(() => Globalcategoriesmain())
                      : index == 3 ?
                      Get.to(() => Globalrealassetsmain())
                       :
                      ComingSoon()
          ;
        },
      ),
    );
  }

  Widget filter() {
    return InkWell(
      onTap: () {
        Get.to(() => CatFilter());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          text14Black('Filter'),
          sizedBoxWidth(5.w),
          RotationTransition(
            turns: AlwaysStoppedAnimation(270 / 360),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.grey272424,
              size: 12.sp,
            ),
          )
        ],
      ),
    );
  }

  Widget categoryCard(
      {required Color color1,
      required Color color2,
      required String bgImage,
      required String image,
      required String text}) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2]),
            borderRadius: BorderRadius.circular(10.h),
          ),
        ),
        Positioned(
          right: 0,
          child: SvgPicture.asset(
            bgImage,
            width: 65.w,
            height: 150.h,
          ),
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  image,
                  height: 45.h,
                  width: 45.h,
                ),
                text20White(text)
              ],
            ),
          ),
        )
      ],
    );
  }
}
