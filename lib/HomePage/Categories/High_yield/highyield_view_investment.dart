import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/HomePage/Categories/High_yield/model/highyield_prods_model.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class HighYieldViewInvestment extends StatefulWidget {
  HighYieldProds highYieldProds;
  HighYieldViewInvestment({super.key, required this.highYieldProds});

  @override
  State<HighYieldViewInvestment> createState() =>
      _HighYieldViewInvestmentState();
}

class _HighYieldViewInvestmentState extends State<HighYieldViewInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                Get.toNamed("/login");
              }
            },
            text: 'Invest now'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxWidth(5.w),
                  SvgPicture.asset(
                    "assets/images/property.svg",
                    width: 80.w,
                    height: 54.h,
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Flexible(
                    child: Text(
                      widget.highYieldProds.securityName,
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              sizedBoxHeight(24.h),
              Text(
                'Security Type',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.securityType,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'ISIN',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.isin,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Issuer Company',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.issuerCompany,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Issue size',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.issueSize,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Issue Type',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.issueType,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Listing details',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.listingDetails,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Rating category',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.ratingCategory,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Minimum Investment',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.minInvestment,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Coupon Rate',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.couponRate,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Yield to Maturity',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.yieldInMaturity,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Interest payment frequency',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.InterestPayment,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Allotment Date',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.AllotmentDate,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Maturity Date',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 25.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Text(
                widget.highYieldProds.MaturityDate,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
            ],
          ),
        ),
      )),
    );
  }

  void investNow() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/images/thankyouinvestment.svg"),
              Text(
                "Thank You For Showing Your Interest",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff0F0C0C),
                    fontSize: 30.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              Text(
                "A FreeU Advisory Team will get back to you soon.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff272424),
                    fontSize: 20.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              CustomNextButton(
                  ontap: () {
                    Get.back();
                    Get.back();
                  },
                  text: 'View more products')
            ],
          ),
        );
      },
    );
  }
}
