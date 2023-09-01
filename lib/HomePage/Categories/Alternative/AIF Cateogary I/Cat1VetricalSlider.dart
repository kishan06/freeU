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
      "des": 'VCF is an AIF that invests primarily in unlisted securities of start-ups, emerging or early-stage venture capital undertakings mainly involved in new products, new services, technology, and intellectual property right-based activities,- with long-term growth potential.',
      "IRR": "~ 15-24 % p.a.",
      "SIH": "More than 7 Years",
      "color": AppColors.blue004E84,
      "ontap": '/ventureviewmore',
      "ViewMoreProduct": '/VentureViewMoreProduct',
    },
    {
      "title": "02. Infrastructure Fund",
      "des": "Infrastructure fund raises capital by pooling investments from private players and primarily invests in companies that develop infrastructure projects. Infrastructure funds invest in the development of public infrastructure like roads, airports, renewable energy, water, railways, transmissions, and municipal solid waste.",
      "IRR": "~ 13-20 % p.a.",
      "SIH": "More than 6 Years",
      "color": AppColors.pink873762,
      "ontap": '/infrastructureviewmore',
      "ViewMoreProduct": '/comingsoon',
    },
    {
      "title": "03. Angel Fund",
      "des": "Angel funds are a type of venture capital fund that focuses on providing the much-needed capital to high-growth potential startups during their early development stages, when traditional sources of financing may not be available. Angel funds play an important role in strengthening the startup ecosystem by supporting them and mentoring them to develop into successful businesses.",
      "IRR": "~18-24% p.a.",
      "SIH": "More than 6 Years",
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
