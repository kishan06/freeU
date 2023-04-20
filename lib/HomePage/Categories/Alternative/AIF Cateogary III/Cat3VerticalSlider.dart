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
      "des": 'As per SEBI Regulations, Hedge Fund means an AIF which employs diverse or complex trading strategies and invests in securities having diverse risks or complex products including listed and unlisted derivatives.'
          '\n\nHedge Funds are investments which collects capital from institutional and accredited investors, and invests them in domestic and international markets in order to generate high returns that are not corelated with market index returns. Naturally, hedge funds use risky investment strategies, and use a high minimum investment, charging a much higher rate compared to traditional investment funds. ',
      "IRR": "~ 15-20 % p.a.",
      "SIH": "More than 4 Years",
      "color": AppColors.blue004E84,
      "ontap": '/hedgeviewmore'
    },
    {
      "title": "02. Private Investment in Public Equity Fund ",
      "des":
          'PIPE funds are privately sourced funds from investors, usually reserved for public equity investments – which refers to the practice of private investors means buying shares of publicly traded stock at a price below the current price available to the public. Such sales are not executed through the stock exchanges. ',
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
                // var = ver
                return PrvateEquity(
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
