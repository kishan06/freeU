import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

import 'featured_investment.dart';
import 'market_see_investment.dart';

class MarketTab extends StatefulWidget {
  const MarketTab({super.key});

  @override
  State<MarketTab> createState() => _MarketTabState();
}

class _MarketTabState extends State<MarketTab> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List featuredInvestments = [
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
              'Market Place',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
            const Spacer(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(15.h),
              Text(
                'Find the right investment',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              sizedBoxHeight(15.h),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                softWrap: true,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
              ),
              sizedBoxHeight(15.h),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle:
                      TextStyle(color: Colors.grey.shade600, fontSize: 16.sp),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black87,
                    size: 25.sp,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10.h),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
              sizedBoxHeight(15.h),
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xFF006796),
                      const Color(0xFF00344B),
                    ]),
                    // color: AppColors.blueL_006796,
                    borderRadius: BorderRadius.circular(15.h),
                    image: const DecorationImage(
                      alignment: Alignment.centerRight,
                      image: AssetImage("assets/images/marketContainer.png"),
                    )),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sell your investment with us',
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      ),
                      const Spacer(),
                      text16White(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                          textAlign: TextAlign.left),
                      const Spacer(),
                      OpenContainerWrappers(
                          closeBuild: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.r)),
                            height: 35.h,
                            width: 210.w,
                            child: Center(
                              child: Text(
                                'Sell my investments',
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ),
                          ),
                          openBuild: const MarketSeeMyInvestment()),
                    ],
                  ),
                ),
              ),
              sizedBoxHeight(20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text20Black("Featured Investments"),
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
                      children: List.generate(
                        3,
                        (index) {
                          return OpenContainerWrappers(
                            closeBuild: topPickCard(
                              text1: featuredInvestments[index]["text1"],
                              imagePath: featuredInvestments[index]["imageUrl"],
                              title: featuredInvestments[index]["title"],
                              add: featuredInvestments[index]["add"],
                            ),
                            openBuild: FeaturedInvestment(
                              pageIndex: index,
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              sizedBoxHeight(20.h),
            ],
          ),
        ),
      ),
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
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5.w,
            color: Color(0xffcfcfcf),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.h),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.04),
          //     blurRadius: 10,
          //     spreadRadius: 2,
          //   )
          // ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
              sizedBoxHeight(10.h),
              Container(
                width: double.infinity,
                height: 100.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              sizedBoxHeight(10.h),
              text14Black(title),
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
            ],
          ),
        ),
      ),
    );
  }
}
