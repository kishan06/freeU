import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class SecuritizedProperties2 extends StatefulWidget {
  const SecuritizedProperties2({super.key});

  @override
  State<SecuritizedProperties2> createState() => _SecuritizedProperties2State();
}

class _SecuritizedProperties2State extends State<SecuritizedProperties2> {
  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),

      // AppBar(
      //   backgroundColor: const Color(0xFFFFFFFF),
      //   elevation: 0,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back,
      //     ),
      //     iconSize: 26.h,
      //     color: Colors.black,
      //   ),
      // ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                Get.toNamed("/login");
              }
              // Get.toNamed("/login");
              //investNow();
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
                    // decoration: BoxDecoration(
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.grey.withOpacity(0.1),
                    //       //spreadRadius: 2.w,
                    //       //blurRadius: 2.h,
                    //     ),
                    //   ],
                    // ),
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
                      "Securitized Debt Instrument",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              sizedBoxHeight(24.h),
              Text(
                'Product Name',
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
              sizedBoxHeight(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SvgPicture.asset(
                  //   "assets/images/fractional.svg",
                  //   width: 14.w,
                  //   height: 14.w,
                  // ),
                  // sizedBoxWidth(14.w),
                  Text(
                    "Lease X",
                    //'The opportunity is to purchase the \nlevel 3, C-wing in Tower-I.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: const Color(0xff0F0C0C),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(28.h),
              Text(
                'Total Deal Size',
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
                '12.74 CR',
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
                '1,00,000',
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff272424)),
              ),
              sizedBoxHeight(28.h),
              Text(
                'Credit Rating',
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
              Text(
                'A',
                style: TextStyle(
                  //fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: const Color(0xff272424),
                ),
              ),
              sizedBoxHeight(5.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(28.h),
                  Text(
                    'Deal Tenure',
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
                    '36 Months',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Target IRR',
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
                    '11.2%',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Target Multiple',
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
                    "1.17x",
                    //'8.1% Additional 1% return in Year 1 for pre-booking',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Payout Frequency',
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
                    'Quaterly (Int+ Principal)',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Principal Returned In',
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
                    '31 Months',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Average Annual Payback',
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
                    '39%',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Security Enhancement',
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
                    'Hypothecation of Leased ATM Assets',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  sizedBoxHeight(28.h),
                  Text(
                    'Listing Details',
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
                    'Listed on NSE',
                    style: TextStyle(
                        fontSize: 18.sp, color: const Color(0xff272424)),
                  ),
                  //sizedBoxHeight(28.h),
                  // Text(
                  //   'Annual Management Fee',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w500,
                  //     fontSize: 20.sp,
                  //     color: const Color(0xff3A4856),
                  //   ),
                  // ),
                  // Divider(
                  //   height: 25.h,
                  //   thickness: 1.h,
                  //   color: Colors.grey.shade400,
                  // ),
                  // Text(
                  //   '1% of Net Purchase Price',
                  //   style: TextStyle(
                  //       fontSize: 18.sp, color: const Color(0xff272424)),
                  // ),
                  // sizedBoxHeight(28.h),
                  // Text(
                  //   'Performance Fee',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w500,
                  //     fontSize: 20.sp,
                  //     color: const Color(0xff3A4856),
                  //   ),
                  // ),
                  // Divider(
                  //   height: 25.h,
                  //   thickness: 1.h,
                  //   color: Colors.grey.shade400,
                  // ),
                  // Text(
                  //   '20%',
                  //   style: TextStyle(
                  //       fontSize: 18.sp, color: const Color(0xff272424)),
                  // ),
                  // sizedBoxHeight(28.h),
                  // Text(
                  //   'Hurdle rate',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w500,
                  //     fontSize: 20.sp,
                  //     color: const Color(0xff3A4856),
                  //   ),
                  // ),
                  // Divider(
                  //   height: 25.h,
                  //   thickness: 1.h,
                  //   color: Colors.grey.shade400,
                  // ),
                  // Text(
                  //   '30%',
                  //   style: TextStyle(
                  //       fontSize: 18.sp, color: const Color(0xff272424)),
                  // ),
                  //sizedBoxHeight(45.h),
                  // Text(
                  //   'View Securitized Debt Instrument',
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 15.sp,
                  //       color: const Color(0xff1B8DC9)),
                  // ),
                  //sizedBoxHeight(10.h),
                ],
              ),
              sizedBoxHeight(15.h)
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
                    // Get.toNamed("/fractionalpropertiespage");
                  },
                  text: 'View more products')
            ],
          ),
        );
      },
    );
  }

  // void investNow() {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(30),
  //         topRight: Radius.circular(30),
  //       ),
  //     ),
  //     builder: (context) {
  //       return Container(
  //         margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             SvgPicture.asset("assets/images/thankyouinvestment.svg"),
  //             Text(
  //               "Thank You For Showing Your Interest",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                   color: const Color(0xff0F0C0C),
  //                   fontSize: 30.sp,
  //                   fontFamily: "Poppins"),
  //             ),
  //             sizedBoxHeight(30.h),
  //             Text(
  //               "A FreeU Advisory Team will get back to you soon.",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                   color: const Color(0xff272424),
  //                   fontSize: 20.sp,
  //                   fontFamily: "Poppins"),
  //             ),
  //             sizedBoxHeight(30.h),
  //             CustomNextButton(ontap: () {}, text: 'View more products')
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
