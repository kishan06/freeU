import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/HomePage/Categories/cat_main_screen.dart';
import 'package:freeu/common/Other%20Commons/CustomTextDropDown.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

import 'AIF_sell_form.dart';
import 'fractional_sell_form.dart';
import 'other_sell_form.dart';

class MarketSeeMyInvestment extends StatefulWidget {
  const MarketSeeMyInvestment({super.key});

  @override
  State<MarketSeeMyInvestment> createState() => _MarketSeeMyInvestmentState();
}

class _MarketSeeMyInvestmentState extends State<MarketSeeMyInvestment> {
  int currentIndex = 0;
  String? datecontroller;
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var agreeCheckBox = false.obs;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sell Your Investment",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 25.sp),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Center(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBoxHeight(25.h),
                      Text(
                        "Personal details",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Text(
                        "Enter your full name",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(
                          hintText: "Full Name *",
                          validatorText: "Full Name *"),
                      sizedBoxHeight(20.h),
                      Text(
                        "Enter your phone number",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(
                          hintText: "Phone Number *",
                          validatorText: "Phone Number *"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Enter your email address",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(
                          hintText: "Email Id *", validatorText: "Email Id *"),
                      SizedBox(height: 20.h),
                      Text(
                        "Enter your city",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                          item: const ["1", "2", "3"],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      SizedBox(height: 20.h),
                      Text(
                        "Enter your country",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                          item: const ["1", "2", "3"],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      SizedBox(height: 20.h),
                      Text(
                        "Enter your postal code",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(
                          hintText: "Postal code",
                          validatorText: "Postal code"),
                      sizedBoxHeight(20.h),
                      Text(
                        "Select product categories",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      sizedBoxHeight(6.h),
                      DropdownMenu(
                          onSelected: (value) {
                            value == '1'
                                ? Get.to(AIFSellForm())
                                : value == '2'
                                    ? Get.to(FracionalSellForm())
                                    : Get.to(OtherSellForm());
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry(
                                value: '1',
                                label: 'Alternative investment fund         '),
                            DropdownMenuEntry(
                                value: '2', label: 'Fractional Real Estate'),
                            DropdownMenuEntry(
                                value: '3', label: 'Other Products'),
                          ]),
                      SizedBox(height: 20.h),
                      Text(
                        'Need help ?',
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.w500),
                      ),
                      sizedBoxHeight(15.h),
                      Text(
                        'If you are experiencing any difficulties filling out the required information, we are here to help. Please reach out to us at',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'info@freeu.in',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff1B8DC9)),
                      ),
                      sizedBoxHeight(40.h),
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
                                      'I, the undersigned, declare that I am the rightful owner of the Alternative asset product mentioned above and have the legal right to sell them to the buyer. I confirm that the information provided in this form is true and accurate to the best of my knowledge. I also agree to transfer the ownership  to the buyer upon receipt of the agreed-upon payment.',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      CustomNextButton(
                        text: "Submit",
                        ontap: (() {
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
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 24),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/thankyouinvestment.svg"),
                                    Text(
                                      "Thankyou for \nthe details.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: const Color(0xff0F0C0C),
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins"),
                                    ),
                                    sizedBoxHeight(30.h),
                                    Text(
                                      'FreeU team will review the same and get in touch with you shortly',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: const Color(0xff272424),
                                          fontSize: 16.sp,
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
                        }),
                      ),
                      sizedBoxHeight(60.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
