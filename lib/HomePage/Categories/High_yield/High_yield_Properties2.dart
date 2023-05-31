import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class HighYieldProperties2 extends StatefulWidget {
  const HighYieldProperties2({super.key});

  @override
  State<HighYieldProperties2> createState() => _HighYieldProperties2State();
}

class _HighYieldProperties2State extends State<HighYieldProperties2> {
  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
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
                  Container(
                    child: SvgPicture.asset(
                      "assets/images/property.svg",
                      width: 80.w,
                      height: 54.h,
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Flexible(
                    child: Text(
                      "Navi Mumbai Office Opportunity II",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              sizedBoxHeight(24.h),
              Text(
                'Property details',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 28.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              sizedBoxHeight(15),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26),
                    child: SvgPicture.asset(
                      "assets/images/fractional.svg",
                      width: 14.w,
                      height: 14.w,
                    ),
                  ),
                  sizedBoxWidth(14.w),
                  Text(
                    'The opportunity is to purchase the \nlevel 3, C-wing in Tower-I.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: const Color(0xff0F0C0C),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(20.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26),
                    child: SvgPicture.asset(
                      "assets/images/fractional.svg",
                      width: 14.w,
                      height: 14.w,
                    ),
                  ),
                  sizedBoxWidth(14.w),
                  Expanded(
                    child: Text(
                      'The asset is located in Seawoods, an upscale part of Navi Mumbai.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff0F0C0C),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(20.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: SvgPicture.asset(
                      "assets/images/fractional.svg",
                      width: 14.w,
                      height: 14.w,
                    ),
                  ),
                  sizedBoxWidth(14.w),
                  Expanded(
                    child: Text(
                      'The property is well connected to the rest of the Mumbai Metropolitan Region by road, rail, and water services.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff0F0C0C),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(20.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: SvgPicture.asset(
                      "assets/images/fractional.svg",
                      width: 14.w,
                      height: 14.w,
                    ),
                  ),
                  sizedBoxWidth(14.w),
                  Expanded(
                    child: Text(
                      'With the upcoming Navi Mumbai airport, metro, and trans-harbour sea link, the area is bound to see greater value appreciation.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff0F0C0C),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(28.h),
              Text(
                'Property Grade',
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
                'A',
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Asset type',
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
                'Corporate Office',
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Tenant details',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: const Color(0xff3A4856),
                ),
              ),
              Divider(
                height: 28.h,
                thickness: 1.h,
                color: Colors.grey.shade400,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 16.sp, color: const Color(0xff616161)),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(10.h),
                  Text(
                    'The tenant is a leading Gas Pipeline Operator and sponsored by Brookfield Asset Management.',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                  ),
                  sizedBoxHeight(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Lease Term',
                          style: TextStyle(
                              fontSize: 16.sp, color: const Color(0xff616161)),
                        ),
                      ),
                      Text(
                        'Lock in',
                        style: TextStyle(
                            fontSize: 16.sp, color: const Color(0xff616161)),
                      ),
                    ],
                  ),
                  sizedBoxHeight(10.h),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          '7 Year',
                          style: TextStyle(
                              fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                        ),
                      ),
                      Text(
                        '6 Year',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                      ),
                    ],
                  ),
                  sizedBoxHeight(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Rent',
                          style: TextStyle(
                              fontSize: 16.sp, color: const Color(0xff616161)),
                        ),
                      ),
                      Text(
                        'Security deposit',
                        style: TextStyle(
                            fontSize: 16.sp, color: const Color(0xff616161)),
                      ),
                    ],
                  ),
                  sizedBoxHeight(10.h),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          '3 Months',
                          style: TextStyle(
                              fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                        ),
                      ),
                      Text(
                        'N/A',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff0F0C0C)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(28.h),
                  Text(
                    'Deal Size (in Crore)',
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
                    '53,30,00,000',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
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
                    '25,00,000',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Coupon Rate on CCD',
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
                    '8.1% Additional 1% return in Year 1 for pre-booking',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Rental Escalation',
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
                    '15% every 3 Years',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Capital Appreciation',
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
                    '2.0x Target Multiple',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Expected IRR',
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
                    '12.70%',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'CAGR',
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
                    '6.00%',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Minimum Investor LockIn',
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
                    '1 Year',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Annual Management Fee',
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
                    '1% of Net Purchase Price',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Performance Fee',
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
                    '20%',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Hurdle rate',
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
                    '30%',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(45.h),
                  Text(
                    'View Navi Mumbai Office Opportunity II document',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: const Color(0xff1B8DC9)),
                  ),
                  sizedBoxHeight(10.h),
                ],
              ),
              sizedBoxHeight(65.h)
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
