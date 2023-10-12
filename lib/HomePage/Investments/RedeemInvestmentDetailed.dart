import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Investments/product_action.dart';
import 'package:freeu/ViewModel/Investment/Investment.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class RedeemInvestmentDetailed extends StatefulWidget {
  const RedeemInvestmentDetailed({super.key});

  @override
  State<RedeemInvestmentDetailed> createState() =>
      _RedeemInvestmentDetailedState();
}

class _RedeemInvestmentDetailedState extends State<RedeemInvestmentDetailed> {
  int selectIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

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
                  "Redeem investment",
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
                          "Amount",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.sp,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Action",
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
                      itemCount: redeemsummary!
                          .data!.reedemedInvestment!.productDetails!.length,
                      itemBuilder: (context, index) {
                        return productContainer(
                            redeemsummary!.data!.reedemedInvestment!
                                .productDetails![index].productName,
                            redeemsummary!.data!.reedemedInvestment!
                                .productDetails![index].amount,
                            redeemsummary!.data!.reedemedInvestment!
                                .productDetails![index].categories,
                            redeemsummary!.data!.reedemedInvestment!
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
                            redeemsummary!.data!.reedemedInvestment!
                                    .totalInvestment ??
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
                    Text(
                      txt2,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: GestureDetector(
                          onTap: () {
                            Get.to(
                              ProductAction(
                                pageIndex: 0,
                                categories: "", // TODO: add categories name
                                routeId: "",
                              ),
                            );
                          },
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            size: 30.h,
                            color: Colors.black.withOpacity(0.8),
                          )),
                    ),
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
