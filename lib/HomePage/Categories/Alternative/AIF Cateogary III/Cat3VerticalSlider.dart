import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/PrivateEquity.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:get/get.dart';

class Cat3VerticalSlider extends StatefulWidget {
  const Cat3VerticalSlider({super.key});

  @override
  State<Cat3VerticalSlider> createState() => _Cat3VerticalSliderState();
}

class _Cat3VerticalSliderState extends State<Cat3VerticalSlider> {
  List verticalSliderData = [
    {
      "title": "01. Hedge Funds",
      "des":
          "Hedge Fund AIF employs diverse or complex trading strategies and invests in securities having diverse risks or complex products including listed and unlisted derivatives.",
      "IRR": "~ 15-20 % p.a.",
      "SIH": "More than 4 Years",
      "color": AppColors.blue004E84,
      "ontap": '/hedgeviewmore'
    },
    {
      "title": "02. Private Investment in Public Equity Fund ",
      "des":
          "PIPE fund buys shares of publicly traded companies at a discounted price. These shares of a publicly listed company are purchased through private placement mode and are not executed through the stock exchanges.",
      "IRR": "~ 12-18 % p.a.",
      "SIH": "More than 4 Years",
      "color": AppColors.pink873762,
      "ontap": '/privatepublicequityviewmore'
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
                return PrvateEquity(
                  viewMoreProdcut: index == 0
                      ? '/hedgeviewproducts'
                      : '/privateinvestmentproducts',
                  swipeup: index == 1 ? true : false,
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
