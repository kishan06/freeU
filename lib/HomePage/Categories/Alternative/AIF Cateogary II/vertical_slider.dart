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
      "des":
          'Private Equity Funds is a collective investment scheme used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership.',
          //'Private Equity Funds is a collective investment scheme used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership.',
      // 'As per SEBI Regulations, “Private equity fund” means an Alternative Investment Fund which invests primarily in equity or equity linked instruments or partnership interests of investee companies according to the stated objective of the fund.'
      //     '\n\nPE funds mostly invests in equity/equity-linked instruments or partnership interests of unlisted companies with potential for giving high returns, as these companies find it difficult to secure capital through equity and debt instruments.  In this manner PE funds can take part in ownership of the company',
      "IRR": "~ 15-24 % p.a.",
      "SIH": "More than 8 Years",
      "color": AppColors.blue004E84,
      "ontap": '/privateequityfund',
      "viewMoreProdcut": '/privateequityfunddeals',
      // "ontapViewPro":""
    },
    {
      "title": "02. Debt Fund",
      "des":
          'Debt Funds invest in debt instruments of a preferably high-growth potential company (both listed or unlisted), investing the funds in different company bonds, debentures, and other money market instruments. This is a relatively stable investment avenue, where risks are lower.',
          //"Debt Funds invest in debt instruments of a preferably high-growth potential company (both listed or unlisted), investing the funds in different company bonds, debentures, and other money market instruments. This is a relatively stable investment avenue, where risks are lower.",
      //"As the name suggests, Debt Funds invest in debt instruments of a company (both listed or unlisted). Therefore, if you are an investor, your money will be used in different company bonds, debentures, and other money market instruments. This is a relatively stable investment avenue, where risks are lower. But there are ways in which it can be a high risk because, essentially companies with a low credit score have high yield debt securities. This is the reason Debt Funds investors are mainly interested in companies that have a high growth potential, but without adequate capital. As per SEBI regulations, since AIF is mainly privately pooled investments, Debt Fund investments cannot be used for giving out loans.",
      "IRR": "~ 12-16 % p.a.",
      "SIH": "More than 4 Years",
      "color": AppColors.pink873762,
      "ontap": '/debtfundviewmore',
      "viewMoreProdcut": '/DebtFundProd',
      // "ontapViewPro":""
    },
    {
      "title": "03. Fund for Distressed Asset",
      "des":
          'Distressed Asset investing is the method of buying from financially troubled companies that are in default, or close to it, in the hope of profiting when the company turns around.',
          //"Distressed Asset investing is the method of buying from financially troubled companies that are in default, or close to it, in the hope of profiting when the company turns around.",
      // "Funds for distressed assets are category II Alternative Investment Funds (AIFs), which invest in stressed assets of various companies, with the investment philosophy that not all NPAs are bad assets and a turnaround in these will provide a good return. The key to the success of a distressed asset fund lies in buying good underlying assets at reasonable valuations, which have the potential for a turnaround.",
      "IRR": "~ 15-24% p.a.",
      "SIH": "More than 6 Years",
      "color": AppColors.blue002A5B,
      "ontap": '/funddistressedassetsviewmore',
      "viewMoreProdcut": '/privateequityfunddeals',
    },
    {
      "title": "04. Private Real Estate Fund",
      "des":
          'Real Estate AIF under category II helps various real estate properties across India, mainly from High-Net-Worth investors intending to grow and spread their capital through non-traditional investment routes. AIF managers for Real Estate are constantly on the lookout for lucrative stand-alone, real estate investment opportunities that help in portfolio diversification.',
          //"Real Estate AIF under category II helps various real estate properties across India, mainly from High-Net-Worth investors intending to grow and spread their capital through non-traditional investment routes. AIF managers for Real Estate are constantly on the lookout for lucrative stand-alone, real estate investment opportunities that help in portfolio diversification.",
      // "Real Estate AIF has seen big growth in India in the last few years, mainly from High-Net-Worth investors intending to grow their capital through non-traditional investment routes. AIF managers for Real Estate are constantly on the lookout for lucrative stand-alone, real estate investment opportunities that help in portfolio diversification. Through AIF Real Estate, investors can spread their investments over a wide range of real estate properties. ",
      "IRR": "~15-24% p.a.",
      "SIH": "More than 6 Years",
      // "MI":"1 Crore",
      "color": AppColors.green008A5B,
      "ontap": '/realestateaifviewmore',
      "viewMoreProdcut": '/realestateviewmoreproducts',
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
                  viewMoreProdcut: verticalSliderData[index]['viewMoreProdcut'],
                  //'/privateequityfunddeals',
                  swipeup: index == 3 ? true : false,
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
