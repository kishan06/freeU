import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/HighyieldCorporatebonds/highyieldmain.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/InvegradeCorpbond/invegrademain.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/SovereignBonds/Sovereignbondsmain.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';

class BondsAssetsmain extends StatefulWidget {
  const BondsAssetsmain({super.key});

  @override
  State<BondsAssetsmain> createState() => _BondsAssetsmainState();
}

class _BondsAssetsmainState extends State<BondsAssetsmain> {
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
                    "Bonds Assets",
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
                      height: 37.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: OpenContainerWrappers(
                        closeBuild: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xff002555),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x48B9B9BE),
                                blurRadius: 5.0,
                                spreadRadius: 0,
                              ),
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
                                  "assets/images/categoryearning.png",
                                  width: 180,
                                  height: 180,
                                ),
                                SizedBox(height: 21.h),
                                Text(
                                  "Government Bonds - Sovereign",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 25.sp,
                                      color: const Color(0XFFFFFFFF),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 27.h,
                                )
                              ],
                            ),
                          ),
                        ),
                        openBuild: const SovereignBondsmain(),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: OpenContainerWrappers(
                        closeBuild: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xffB23C7E),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x48B9B9BE),
                                blurRadius: 5.0,
                                spreadRadius: 0,
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
                                  "assets/images/categorydebt (1).png",
                                  width: 180,
                                  height: 180,
                                ),
                                SizedBox(height: 21.h),
                                Text(
                                  "Corporate Bonds - Investment Grade",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 25.sp,
                                      color: const Color(0XFFFFFFFF),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 27.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        openBuild: const InvestmentGradeMain(),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: OpenContainerWrappers(
                        closeBuild: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xff008A5B),
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
                                  "assets/images/categoryreturninvestment.png",
                                  width: 180,
                                  height: 180,
                                ),
                                SizedBox(height: 21.h),
                                Text(
                                  "Corporate Bonds - High yield",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 25.sp,
                                      color: const Color(0XFFFFFFFF),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 27.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        openBuild: const Highyieldbondsmain(),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
