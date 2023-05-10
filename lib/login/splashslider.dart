import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/login/contentModel.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashslider extends StatefulWidget {
  const Splashslider({Key? key}) : super(key: key);

  @override
  State<Splashslider> createState() => _SplashsliderState();
}

class _SplashsliderState extends State<Splashslider> {
  int currentIndex = 0;
  late PageController _controller;
  DateTime timebackPressed = DateTime.now();
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timebackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timebackPressed = DateTime.now();

        if (isExitWarning) {
          final message = "Press back again to exit";
          Fluttertoast.showToast(
            msg: message,
            fontSize: 18,
          );

          return false;
        } else {
          Fluttertoast.cancel();

          SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        // backgroundColor: Color(0xffF5F8FA),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 37.h,
              ),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: 4,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return page1();
                    } else if (i == 1) {
                      return page2();
                    } else if (i == 2) {
                      return page3();
                    } else {
                      return page4();
                    }
                    // return Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Expanded(
                    //       flex: 8,
                    //       child: SvgPicture.asset(
                    //         contents[i].image,
                    //         height: 250.h,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 20.h,
                    //     ),
                    //     Expanded(
                    //       flex: 1,
                    //       child: Text(
                    //         contents[i].title,
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           fontSize: 24.sm,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       flex: 2,
                    //       child: Text(
                    //         contents[i].content,
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           fontSize: 15.sm,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // );
                  },
                ),
              ),
              // const Spacer(),
              // SizedBox(
              //   height: 15.h,
              // ),
              SizedBox(
                width: 330.w,
                child: CustomNextButton(
                  text: "Next",
                  ontap: () {
                    _controller.animateToPage(currentIndex + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                    if (currentIndex == 3) {
                      Get.toNamed('/EntryPoint', arguments: 0);
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return WillPopScope(
                              onWillPop: () async => false, child: disclamer());
                        },
                      );
                    }
                    setState(() {});
                  },
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  currentIndex < 3
                      ? GestureDetector(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: const Color(0xFF6B6B6B),
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/EntryPoint', arguments: 0);
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return WillPopScope(
                                    onWillPop: () async => false,
                                    child: disclamer());
                              },
                            );
                          },
                        )
                      : Text(
                          "",
                          style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 16.sp,
                            fontFamily: "Poppins",
                          ),
                        )
                ],
              ),
              SizedBox(
                height: 32.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  AlertDialog disclamer() {
    var agreeCheckBox = false.obs;
    return AlertDialog(
      content: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Investing Beyond the Norm: Understanding the Risks of Alternative Asset Classes\n\n',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Alternative assets are a type of investment that can offer potentially higher returns compared to traditional investments such as stocks, bonds, and mutual funds. However, these investments also carry a higher level of risk due to their less regulated nature and lack of liquidity. It is important to note that past performance is not indicative of future results, and there is no guarantee of profits or protection against losses.'
                            '\n\nInvestors are informed to carefully read the risk disclosures before making any investment decisions. Investors are also informed that Blue Feather’s (FreeU) Risk Disclosure policy may not contain all possible risks that can arise from investment objectives, investment strategies and asset allocations. Hence, the risks in the disclosure are just estimates, and can differ from what actually occurs.In the light of the risks involved, investors should undertake transactions only if they understand the nature of the relationship into which they are entering, and the extent of their exposure to risk. No consideration should be made without thoroughly understanding and reviewing the risks involved. If you are unsure, you must seek professional advice on the same.'
                            "\n\nInvestors who are considering investing in alternative assets should have a high-risk tolerance and be prepared to accept potential losses. It is recommended that investors carefully review all available information regarding an investment before making a decision to invest. This includes reviewing the offering documents, the investment manager's track record, and any associated risks. Investors are advised to carefully review the disclosure papers, agreements, investment documents, and other related credentials carefully and consult their legal, tax and financial advisors, if they want, to determine any possible legal, tax and financial or any other consequences of investing before making any final investment decisions."
                            '\n\nInvestors who choose to invest in alternative assets should be aware of the following risks:',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                        ),
                      ),
                      boldtxt("\n\n>  Market Risk: "),
                      lightTxt(
                        'The value of alternative assets can be affected by various factors, including changes in interest rates, geopolitical events, and economic conditions. These factors can result in price volatility and may cause the value of the investment to decrease significantly.',
                      ),
                      boldtxt('\n>  Liquidity Risk: '),
                      lightTxt(
                        'Alternative assets can be illiquid, meaning they cannot be easily sold or converted to cash. As a result, investors may not be able to sell their investment when they need to or may have to sell it at a loss.',
                      ),
                      boldtxt('\n>	Credit Risk: '),
                      lightTxt(
                        'Alternative assets are often issued by smaller or less established companies, which may have a higher risk of defaulting on their obligations. This can result in a total loss of the investment.',
                      ),
                      boldtxt('\n>  Operational Risk: '),
                      lightTxt(
                        'Alternative assets may be managed by investment managers with limited experience, which can result in poor investment decisions or mismanagement of funds.',
                      ),
                      boldtxt('\n>	Regulatory Risk: '),
                      lightTxt(
                        'Alternative assets are often subject to less regulation than traditional investments, which can lead to higher risks for investors.',
                      ),
                      boldtxt('\n>	Concentration Risk: '),
                      lightTxt(
                        'Some alternative assets may be highly concentrated in a single sector or asset class, which can increase the risk of losses if that sector or asset class experiences a downturn.',
                      ),
                      boldtxt('\n>	Complexity Risk: '),
                      lightTxt(
                        "Some alternative assets may be highly complex, with unique features or structures that are difficult to understand. This can increase the risk of misunderstandings or misinterpretations of the investment's features or risks.",
                      ),
                      boldtxt('\n>	Counterparty Risk: '),
                      lightTxt(
                        'Some alternative assets may involve counterparties or third-party service providers that are subject to their own risks, such as bankruptcy, fraud, or operational failures. This can result in losses to the investor.',
                      ),
                      boldtxt('\n>	Tax and Legal Risks: '),
                      lightTxt(
                        'Alternative assets may be subject to unique tax or legal requirements, which can be complex and subject to change. This can result in unexpected tax liabilities or legal risks.',
                      ),
                      lightTxt(
                        '\n\nApart from the risks mentioned above, other risks or uncertainties include, but are not limited to, exposure to market risks, general economic and political conditions in other countries, the monetary and interest policies of India, inflation, unanticipated turbulence in interest rates, foreign exchange rates, equity prices, the performance of the financial markets in India and globally, changes in domestic and foreign laws, regulations and taxes and changes in competition in the industry.  While risk cannot be totally eliminated, it can be mitigated through a well-designed investment strategy.'
                        '\n\nPlease note that this policy is not exhaustive and does not cover all the risks associated with alternative assets. Investors should consult with a qualified financial advisor before making any investment decisions. The goal is to ensure that investors understand the potential risks associated with their investment and can make informed decisions about whether the investment is appropriate for their needs and risk tolerance. Any product information displayed in this application must not be construed as investment advice.'
                        '\n\nBy investing in alternative assets, ',
                      ),
                      boldtxt(
                        'investors acknowledge and accept the risks associated with these investments. The investment application is not responsible for any losses incurred as a result of investing in alternative assets.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            sizedBoxHeight(20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Checkbox(
                    value: agreeCheckBox.value,
                    onChanged: (value) {
                      agreeCheckBox.value = !agreeCheckBox.value;
                    },
                  ),
                ),
                Flexible(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text:
                            'I accept the terms and condition and I have read the privacy policy',
                        style: TextStyle(
                          // decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          fontSize: 12.sp,
                          color: Colors.black,
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(20.h),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: Obx(
                () => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shadowColor: const Color.fromARGB(255, 220, 220, 226),
                    backgroundColor: agreeCheckBox.value
                        ? AppColors.blue143C6D
                        : Colors.blue[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                  ),
                  onPressed: () async {
                    if (agreeCheckBox.value == true) {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setBool('OnBoardDone', true);
                      Get.back();
                    }
                  },
                  child: Text(
                    "continue",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
            sizedBoxHeight(20.h),
          ],
        ),
      ),
    );
  }

  TextSpan boldtxt(String txt) {
    return TextSpan(
      text: txt,
      style: TextStyle(
        fontSize: 12.sp,
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
      ),
    );
  }

  TextSpan lightTxt(String txt) {
    return TextSpan(
      text: txt,
      style: TextStyle(
        fontSize: 12.sp,
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget page1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM("What is FreeU ?"),

          sizedBoxHeight(15.h),

          text18Grey(
              "FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering the best risk adjusted returns to our investors."),

          sizedBoxHeight(37.h),

          Container(
            width: 180.h,
            height: 180.h,
            child: Image.asset(
              "assets/logos/bar-graph.png",
              // width: 180.h,
              // height: 180.h,
              fit: BoxFit.fill,
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 153.h,
              height: 153.h,
              child: Image.asset(
                "assets/logos/economic-growth.png",
                // width: 153.h,
                // height: 153.h,
                fit: BoxFit.fill,
              ),
            ),
          )

          // Text("dsf")
          // Text("FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering thebest risk adjusted returns to our investors.",
          //   style: TextStyle(
          //     fontSize: 20.sp,
          //     color: AppColors.grey616161,
          //     // fontWeight: FontWeight.w500
          //   ),
          // )
        ],
      ),
    );
  }

  Widget page2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM("What are \nAlternative Assets?"),

          sizedBoxHeight(15.h),

          text18Grey(
              "As the name suggests, Alternative investments are financial investments that cannot be categorized as a traditional, or conventional investment."),

          sizedBoxHeight(53.h),

          Center(
            child: Container(
              width: 250.h,
              height: 250.h,
              child: Image.asset(
                "assets/logos/allocation.png",
                // width: 250.h,
                // height: 250.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text("dsf")
          // Text("FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering thebest risk adjusted returns to our investors.",
          //   style: TextStyle(
          //     fontSize: 20.sp,
          //     color: AppColors.grey616161,
          //     // fontWeight: FontWeight.w500
          //   ),
          // )
        ],
      ),
    );
  }

  Widget page3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM(
              "Difference between Alternative & \nTraditional Investments"),

          sizedBoxHeight(15.h),

          text18Grey(
              "Traditional investments are investments that can be bought, sold, and traded on a public market"),

          // sizedBoxHeight(30.h),
          const Spacer(),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120.h,
                height: 120.h,
                child: Image.asset(
                  "assets/logos/money-bag.png",
                  // width: 120.h,
                  // height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),

              text30BlackM("vs"),

              SizedBox(
                height: 120.h,
                width: 120.h,
              )

              // Image.asset("assets/logos/economic-growth.png",
              //   width: 120.h,
              //   height: 120.h,
              // ),
            ],
          ),

          // Center(child: text30BlackM("vs")),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 130.h,
              height: 130.h,
              child: Image.asset(
                "assets/logos/real-estate.png",
                // width: 130.h,
                // height: 130.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // sizedBoxHeight(15.h),
          const Spacer(),

          text18Grey(
              "Alternative investments, on the other hand, are not publicly traded."),

          const Spacer(),
        ],
      ),
    );
  }

  Widget page4() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text30BlackM("Why FreeU ?"),

          sizedBoxHeight(15.h),

          text18Grey(
              "Freeu is one-stop shop for Alternate Investments. We want you to learn, compare, and choose before you invest. Luckily, we have curated the best of the best’s options for you"),

          sizedBoxHeight(50.h),

          Center(
            child: Container(
              width: 250.h,
              height: 250.h,
              child: Image.asset(
                "assets/logos/return-on-investment (1).png",
                // width: 250.h,
                // height: 250.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text("dsf")
          // Text("FreeU is an online platform that handpicks the best financial instruments available in Alternate Investments space, offering thebest risk adjusted returns to our investors.",
          //   style: TextStyle(
          //     fontSize: 20.sp,
          //     color: AppColors.grey616161,
          //     // fontWeight: FontWeight.w500
          //   ),
          // )
        ],
      ),
    );
  }
}
