import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/PrivateEquity.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:get/get.dart';

class VerticalSlider extends StatefulWidget {
  const VerticalSlider({super.key});

  @override
  State<VerticalSlider> createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {
  List verticalSliderData = [
    {
      "title": "01. Private Equity Fund",
      "des": 'As per SEBI Regulations, “Private equity fund” means an Alternative Investment Fund which invests primarily in equity or equity linked instruments or partnership interests of investee companies according to the stated objective of the fund.'
          '\n\nPE funds mostly invests in equity/equity-linked instruments or partnership interests of unlisted companies with potential for giving high returns, as these companies find it difficult to secure capital through equity and debt instruments.  In this manner PE funds can take part in ownership of the company',
      "IRR": "~ 15-24 % p.a.",
      "SIH": "More than 8 Years",
      // "MI":"1 Crore",
      "color": AppColors.blue004E84,
      "ontap": '/privateequityfund'
    },
    {
      "title": "02. Debt Fund",
      "des":
          "As the name suggests, Debt Funds invest in debt instruments of a company (both listed or unlisted). Therefore, if you are an investor, your money will be used in different company bonds, debentures, and other money market instruments. This is a relatively stable investment avenue, where risks are lower. But there are ways in which it can be a high risk because, essentially companies with a low credit score have high yield debt securities. This is the reason Debt Funds investors are mainly interested in companies that have a high growth potential, but without adequate capital. As per SEBI regulations, since AIF is mainly privately pooled investments, Debt Fund investments cannot be used for giving out loans.",
      "IRR": "~ 12-16 % p.a.",
      "SIH": "More than 4 Years",
      // "MI":"1 Crore",
      "color": AppColors.pink873762,
      "ontap": '/debtfundviewmore'
    },
    {
      "title": "03. Fund for Distressed Assets",
      "des":
          "Funds for distressed assets are category II Alternative Investment Funds (AIFs), which invest in stressed assets of various companies, with the investment philosophy that not all NPAs are bad assets and a turnaround in these will provide a good return. The key to the success of a distressed asset fund lies in buying good underlying assets at reasonable valuations, which have the potential for a turnaround.",
      "IRR": "~15-24% p.a.",
      "SIH": "More than 6 Years",
      // "MI":"1 Crore",
      "color": AppColors.blue002A5B,
      "ontap": '/funddistressedassetsviewmore'
    },
    {
      "title": "04. Real Estate AIF",
      "des":
          "Real Estate AIF has seen big growth in India in the last few years, mainly from High-Net-Worth investors intending to grow their capital through non-traditional investment routes. AIF managers for Real Estate are constantly on the lookout for lucrative stand-alone, real estate investment opportunities that help in portfolio diversification. Through AIF Real Estate, investors can spread their investments over a wide range of real estate properties. ",
      "IRR": "~15-24% p.a.",
      "SIH": "More than 6 Years",
      // "MI":"1 Crore",
      "color": AppColors.green008A5B,
      "ontap": '/realestateaifviewmore'
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