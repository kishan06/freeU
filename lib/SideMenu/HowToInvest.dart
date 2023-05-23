import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';

class HowToInvest extends StatefulWidget {
  const HowToInvest({super.key});

  @override
  State<HowToInvest> createState() => _HowToInvestState();
}

class _HowToInvestState extends State<HowToInvest> {
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "How to invest",
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/profileinvest.png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Step 1: Browse the Product Categories",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Simply browse through the information provided for various alternative assets such as Alternative Investment Funds, Fractional Real Estate, and more, to find the asset that best fits your investment profile.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/assetinvest.png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Step 2: Evaluate the Investment Deals",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Evaluate the deals open for investment under your chosen product category. We provide detailed information on each investment option, including the expected return, minimum investment amount, and tenure.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/investmentinvest (2).png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Step 3: Show Interest",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                """Once you've identified an investment option that you're interested in, simply click the "Show Interest" button to alert our team.""",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              // offset: Offset(10, 10, 10, 10),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/backinvest.png",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Step 4: Investment Process",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Our team will then reach out to you and help you navigate the investment process from start to finish. That's it! With FreeU investing in alternatives is now easy.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 61.h,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // );
  }
}
