import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Investments/Listinvestmentform/listinvestsellerform.dart';
import 'package:freeu/HomePage/Investments/product_action.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/ViewModel/Investment/Investment.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class CurrentInvestment extends StatefulWidget {
  const CurrentInvestment({super.key});

  @override
  State<CurrentInvestment> createState() => _CurrentInvestmentState();
}

class _CurrentInvestmentState extends State<CurrentInvestment> {
  int selectIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  PageController indicatorcontroller = PageController(
    viewportFraction: 0.95,
  );
  PageController categoriescontroller = PageController(
    viewportFraction: 0.55,
  );
  PageController investmentcontroller = PageController(
    viewportFraction: 0.9,
  );
  PageController pickcontroller = PageController(
    viewportFraction: 0.75,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Color(0xffffffff),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Current investment",
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
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(),
                        SizedBox(),
                        SizedBox(),
                        Text(
                          "Action",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.sp,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "List Market",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: currentsummary!
                          .data!.currentInvestment!.productDetails!.length,
                      itemBuilder: (context, index) {
                        return productContainer(
                            currentsummary!.data!.currentInvestment!
                                .productDetails![index].productName,
                            currentsummary!.data!.currentInvestment!
                                .productDetails![index].amount,
                            currentsummary!.data!.currentInvestment!
                                .productDetails![index].categories,
                            currentsummary!.data!.currentInvestment!
                                .productDetails![index].routeId);
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(15.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          const Color(0xFF006796),
                          const Color(0xFF00344B),
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x48B9B9BE),
                            blurRadius: 20.0,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Investment',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                          Text(
                            currentsummary!
                                    .data!.currentInvestment!.totalInvestment ??
                                "",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(20.h)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productContainer(
    txt1,
    txt2,
    categories,
    routeId,
  ) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Color(0x48B9B9BE),
                blurRadius: 20.0,
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/images/investmentmyre (2).svg"),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: Text(
                        txt1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    // Text(
                    //   txt2,
                    //   style: TextStyle(fontSize: 18.sp),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: GestureDetector(
                          onTap: () {
                            Get.to(
                              ProductAction(
                                // TODO: add categories name
                                pageIndex: 0,
                                categories: categories,
                                routeId: routeId,
                              ),
                            );
                          },
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            size: 30.h,
                            color: Colors.black.withOpacity(0.8),
                          )),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 5.w, bottom: 0.h),
                        child: SizedBox(
                          height: 35.h,
                          width: 120.w,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                shadowColor: Color.fromARGB(255, 220, 220, 226),
                                backgroundColor: AppColors.blue143C6D,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                              onPressed: () {
                                Get.to(() => InvestmentpageSellinvest(
                                      slug: routeId,
                                    ));
                              },
                              child: Text(
                                "List investment",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 11.sp,
                                ),
                              )),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              )
            ],
          ),
        ),
        sizedBoxHeight(12.h),
      ],
    );
  }
}
