import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/VentureCapitalService.dart';
import 'package:lottie/lottie.dart';

import 'venture_view_detail.dart';

class VentureViewMoreProduct extends StatefulWidget {
  const VentureViewMoreProduct({super.key});

  @override
  State<VentureViewMoreProduct> createState() => _VentureViewMoreProductState();
}

class _VentureViewMoreProductState extends State<VentureViewMoreProduct> {
  late Future myfuture;
  @override
  void initState() {
    myfuture = VentureCapital().VentureCapitalAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: const CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        body: FutureBuilder(
          future: myfuture,
          builder: (ctx, snapshot) {
            if (snapshot.data == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Center(child: CircularProgressIndicator())],
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18.spMin),
                  ),
                );
              }
            }
            return _buildBody(
              context,
            );
          },
        ));
  }

  Widget _buildBody(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Venture Capital Fund",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.h,
                  ),
                  ButtonsTabBar(
                    buttonMargin: EdgeInsets.zero,
                    contentPadding: EdgeInsets.only(left: 27.w, right: 27.w),
                    radius: 4,
                    backgroundColor: const Color(0xFF143C6D),
                    unselectedBorderColor: const Color(0xFFFFFFFF),
                    borderWidth: 2,
                    borderColor: const Color(0xFFFFFFFF),
                    unselectedBackgroundColor: const Color(0xFFFFFFFF),
                    unselectedLabelStyle:
                        const TextStyle(color: Color(0xFF0F0C0C)),
                    labelStyle: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    tabs: const [
                      Tab(
                        text: "Open",
                      ),
                      Tab(
                        text: "Fully funded",
                      ),
                      Tab(
                        text: "Resale",
                      ),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        FirstTab(),
                        SecondTab(),
                        ThirdTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        const Text("No Data Found")
      ],
    );
  }
}

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ventureCapitalObj!.data!.isEmpty
        ? _buildNoDataBody(context)
        : ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x48B9B9BE),
                              blurRadius: 10.0,
                              spreadRadius: 3.0,
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
                              Container(
                                width: 250.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                    // color: AppColors.black,
                                    image: 
                                      ventureCapitalObj?.data?[index].alternativeInvestmentFund?.companies != null &&
                                    
                                    ventureCapitalObj
                                                ?.data?[index]
                                                .alternativeInvestmentFund
                                                ?.companies
                                                ?.companyLogo !=
                                            null
                                        ? DecorationImage(
                                            image: NetworkImage(
                                              ventureCapitalObj!
                                                  .data![index]
                                                  .alternativeInvestmentFund!
                                                  .companies!
                                                  .companyLogo!,
                                            ),
                                          )
                                        : DecorationImage(
                                            image: 
                                            NetworkImage(
                                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/310px-Placeholder_view_vector.svg.png")
                                            // AssetImage(
                                            //     "assets/images/alternative (6).png")
                                                )),
                              ),
                              sizedBoxHeight(20.h),
                              Row(
                                children: [
                                  // Image.asset(
                                  //   "assets/images/alternative (6).png",
                                  //   width: 68,
                                  //   height: 38,
                                  // ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Flexible(
                                    child: Text(
                                      ventureCapitalObj!
                                              .data![index]
                                              .alternativeInvestmentFund!
                                              .fundName ??
                                          "",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          color: Color(0XFF000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                color: Color(0XFF6D6D6D29),
                              ),
                              SizedBox(height: 17.5.h),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/investment (1).png",
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Targeted IRR :",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontFamily: 'Poppins',
                                      color: const Color(0XFF000000),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    ventureCapitalObj!
                                            .data![index]
                                            .alternativeInvestmentFund!
                                            .targetIrr ??
                                        "NA",
                                    // "",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: 'Poppins',
                                        color: const Color(0XFF000000),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 31.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/back-in-time (1).png",
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  SizedBox(
                                    width: 115.w,
                                    child: Text(
                                      "Commitment period",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: 'Poppins',
                                        color: const Color(0XFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    " :",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontFamily: 'Poppins',
                                      color: const Color(0XFF000000),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    // "5 Years",
                                    ventureCapitalObj!
                                            .data![index]
                                            .alternativeInvestmentFund!
                                            .commitmentPeriod ??
                                        "NA",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: 'Poppins',
                                        color: const Color(0XFF000000),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 31.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/transfer.png",
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  SizedBox(
                                    width: 115.w,
                                    child: Text(
                                      "Capital Commitment ",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: 'Poppins',
                                        color: const Color(0XFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    " :",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontFamily: 'Poppins',
                                      color: const Color(0XFF000000),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    // ventureCapitalObj!
                                    //         .data![index]
                                    //         .alternativeInvestmentFund!
                                    //         .ca ??
                                    //     "NA",
                                    "1 Crore",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: 'Poppins',
                                        color: const Color(0XFF000000),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              OpenContainerWrappers(
                                openBuild: VentureViewDetails(
                                    slug: ventureCapitalObj!.data![index]
                                        .alternativeInvestmentFund!.slug!),
                                closeBuild: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.blue002A5B,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  width: double.infinity,
                                  height: 50.h,
                                  child: Center(
                                      child: Text(
                                    'View Details',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18.sp,
                                    ),
                                  )),
                                ),
                              ),
                              sizedBoxHeight(20.h)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30.h,
                  // ),
                  // sizedBoxHeight(10.h),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: ventureCapitalObj!.data!.length,
          );
  }

  Widget _buildNoDataBody(context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        const Text("No Data Found")
      ],
    );
  }
}

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        const Text("No Data Found")
      ],
    );
  }
}
