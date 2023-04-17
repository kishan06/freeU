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
      "title": "01. Venture Capital Fund (VCF)",
      "des": 'VCF is an AIF which invests primarily in unlisted securities of start-ups, emerging or early-stage venture capital undertakings mainly involved in new products, new services, technology or intellectual property right based activities or a new business model and shall include an angel fund.'
          '\n\nVenture Capital Funds or VCFs make investments in start-ups that have lucrative growth potential, but lack funds to set up in the initial phase or during expansion. These startups face a lot of difficulty in securing funds through traditional capital markets. Therefore, VCFs provide a wholesome solution to their financial difficulties. Venture capital fund provides early-stage financing along with additional skills and resources to a startup during the pre-start stage. It provides overall resources to a startup so that it can develop the technological innovation from scratch.'
          '\n\nVCFs are regulated by the SEBI. There is a high-risk involved in funding new projects, or startups. But with VCFs, investors are usually willing to take the risk, because the high-growth potential of these projects usually results in high returns on investments. ',
      "IRR": "~ 15-24 % p.a.",
      "SIH": "More than 7 Years",
      "color": AppColors.blue004E84,
      "ontap": '/ventureviewmore',
    },
    {
      "title": "02. Infrastructure Fund",
      "des": "As per SEBI Regulations, “Infrastructure fund” means an AIF which invests primarily in unlisted securities or partnership interest or listed debt or securitized debt instruments of investee companies or special purpose vehicles engaged in or formed for the purpose of operating, developing, or holding infrastructure projects;"
          '\n\nInfrastructure fund, a category 1 Alternative Investment Fund (AIF), raises capital by pooling investments from private players and primarily invest in companies that develop infrastructure projects. Infrastructure funds invest in the development of public infrastructure like roads, airport, renewable energy, water, railways, transmissions, and municipal solid waste. The Indian Government has incentives and concessions in order to encourage infrastructure funds, since they help positively impact the Indian economy. ',
      "IRR": "~ 13-20 % p.a.",
      "SIH": "More than 6 Years",
      "color": AppColors.pink873762,
      "ontap": '/infrastructureviewmore'
    },
    {
      "title": "03. Angel Fund",
      "des": "Angel funds are a type of venture capital fund that focuses on providing the much-needed capital to high-growth potential startups during their early development stages, when traditional sources of financing may not be available. Angel funds play an important role in strengthening the startup ecosystem by supporting them and helping them to develop into successful businesses."
          '\n\nAn ‘Angel Investor’ is usually a high-net worth individual who provides funds for start-ups or entrepreneurs in exchange for ownership equity in the company. It can either be a one-time investment, or consistent financial support through the struggling years of the start-up. For many small companies, without financial backing, angel investing is the only primary source of investment that works. In addition to providing funding, angel funds also offer startups valuable resources such as management mentoring, guidance, and industry contacts that can help them grow and succeed.',
      "IRR": "~18-24% p.a.",
      "SIH": "More than 6 Years",
      "color": AppColors.blue002A5B,
      "ontap": '/angelfundviewmore'
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
