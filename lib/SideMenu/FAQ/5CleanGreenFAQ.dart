import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class CleanGreenFAQ extends StatefulWidget {
  const CleanGreenFAQ({super.key});

  @override
  State<CleanGreenFAQ> createState() => _CleanGreenFAQState();
}

class _CleanGreenFAQState extends State<CleanGreenFAQ> {
  bool notCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.sp,
                      color: const Color(0xff000000),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Clean and Green Assets",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: notCollapsed
                            ? null
                            : Border.all(color: const Color(0xffCCCCCC)),
                        color: notCollapsed
                            ? const Color(0xff143C6D)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: ExpansionTile(
                      childrenPadding: EdgeInsets.all(15.h),
                      initiallyExpanded: notCollapsed,
                      onExpansionChanged: (value) {
                        setState(() {
                          notCollapsed = value;
                        });
                      },
                      trailing: Icon(
                        notCollapsed
                            ? Icons.remove_circle_outline_rounded
                            : Icons.add_circle_outline_rounded,
                        size: 18.sp,
                        color: notCollapsed ? Colors.white : Colors.black,
                      ),
                      title: Text(
                        'What is green asset investing?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.sp,
                            color: notCollapsed ? Colors.white : Colors.black),
                      ),
                      children: <Widget>[
                        Text(
                          "Green asset investing is a socially responsible investment strategy that targets companies with a positive environmental impact, such as renewable energy, environmental technology, and natural resource conservation. While profit is not the primary focus, studies suggest that green investing can be more profitable than traditional assets.",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What are examples of clean and green assets?',
                      contentString:
                          'Clean and green assets include renewable energy infrastructure like wind turbines, solar panels, and hydroelectric power plants, energy-efficient buildings such as LEED-certified buildings and green roofs, electric vehicles, waste reduction, and recycling facilities.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'What are the risks associated with investing in clean and green assets?',
                      contentString:
                          'Investing in clean and green assets carries risks, particularly for investors unfamiliar with the technology or regulatory environment. Potential risks include changes in government policy or incentives, energy price fluctuations, and the possibility of technology becoming obsolete.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'Benefits of investing in clean and green assets',
                      contentString:
                          'Investing in clean and green assets is crucial as it reduces the adverse environmental impact of human activities, including energy production and consumption. These assets also mitigate climate change effects by reducing greenhouse gas emissions and promoting the use of renewable energy sources. It also provides financial benefits through reduced operating costs, government incentives, and energy production revenue.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'How can investors participate in the clean and green asset market?',
                      contentString:
                          'Investors can participate in the clean and green asset market in several ways, including investing in publicly traded companies that specialize in clean energy or sustainable infrastructure, investing in mutual funds or exchange-traded funds (ETFs) that focus on clean and green assets, or investing directly in clean energy projects through private equity or debt financing.'),
                  sizedBoxHeight(15.h),
                  FaqBox(
                      titleString:
                          'How is the clean and green asset market growing?',
                      contentString:
                          'The clean and green asset market is growing rapidly, driven by increasing demand for renewable energy, energy-efficient infrastructure, and sustainable buildings. In addition, many governments around the world are providing incentives for clean and green asset development, further driving growth in the market.'),
                  sizedBoxHeight(15.h),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class FaqBox extends StatefulWidget {
  final String titleString;
  final String contentString;
  FaqBox({super.key, required this.titleString, required this.contentString});

  @override
  State<FaqBox> createState() => _FaqBoxState();
}

class _FaqBoxState extends State<FaqBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              isExpanded ? null : Border.all(color: const Color(0xffCCCCCC)),
          color: isExpanded ? const Color(0xff143C6D) : Colors.white,
          borderRadius: BorderRadius.circular(10.r)),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(15.h),
        initiallyExpanded: isExpanded,
        onExpansionChanged: (bool expanding) {
          setState(() {
            isExpanded = expanding;
          });
        },
        trailing: Icon(
          isExpanded
              ? Icons.remove_circle_outline_rounded
              : Icons.add_circle_outline_rounded,
          size: 18.sp,
          color: isExpanded ? Colors.white : Colors.black,
        ),
        title: Text(
          widget.titleString,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20.sp,
              color: isExpanded ? Colors.white : Colors.black),
        ),
        children: <Widget>[
          Text(
            widget.contentString,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
