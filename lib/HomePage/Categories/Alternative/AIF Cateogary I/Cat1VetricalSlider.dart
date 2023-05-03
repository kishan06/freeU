import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/PrivateEquity.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:get/get.dart';

class Cat1VerticalSlider extends StatefulWidget {
  const Cat1VerticalSlider({super.key});

  @override
  State<Cat1VerticalSlider> createState() => _Cat1VerticalSliderState();
}

class _Cat1VerticalSliderState extends State<Cat1VerticalSlider> {
  List verticalSliderData = [
    {
      "title": "01. Venture Capital Fund",
      "des": 'ventureDes'.tr,
      "IRR": "~ 15-24 % p.a.",
      "SIH": "More than 7 Years".tr,
      "color": AppColors.blue004E84,
      "ontap": '/ventureviewmore',
      "ViewMoreProduct": '/AngelFundMoreProduct',
    },
    {
      "title": "02. Infrastructure Fund".tr,
      "des": "InfrastrutureDes",
      "IRR": "~ 13-20 % p.a.",
      "SIH": "More than 6 Years".tr,
      "color": AppColors.pink873762,
      "ontap": '/infrastructureviewmore',
      "ViewMoreProduct": '/AngelFundMoreProduct',
    },
    {
      "title": "03. Angel Fund".tr,
      "des": 'AngelDes',
      "IRR": "~18-24% p.a.",
      "SIH": "More than 6 Years".tr,
      "color": AppColors.blue002A5B,
      "ontap": '/angelfundviewmore',
      "ViewMoreProduct": '/AngelFundMoreProduct',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          PageView.builder(
              itemCount: verticalSliderData.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                // var = ver
                return PrvateEquity(
                  viewMoreProdcut: verticalSliderData[index]['ViewMoreProduct'],
                  swipeup: index == 2 ? true : false,
                  minInvestment: index == 2 ? '25 lakh' : null,
                  title: verticalSliderData[index]["title"],
                  des: verticalSliderData[index]["des"],
                  irr: verticalSliderData[index]["IRR"],
                  sih: verticalSliderData[index]["SIH"],
                  color: verticalSliderData[index]["color"],
                  ontapNamed: verticalSliderData[index]['ontap'],
                );
              }),
          Positioned(
            top: 6.h,
            left: 4.w,
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
              iconSize: 26.w,
              color: const Color(0XFFFFFFFF),
            ),
          ),
        ],
      ),
    ));
  }
}
