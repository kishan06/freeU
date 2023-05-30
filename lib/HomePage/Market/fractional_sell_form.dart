import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class FracionalSellForm extends StatelessWidget {
  const FracionalSellForm({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Fractional Real Estate',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 25.sp),
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
                        "Property details",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      sizedBoxHeight(17.h),
                      txt20Black('Property Name'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Property Name",
                          validatorText: "Property Name"),
                      sizedBoxHeight(20.h),
                      txt20Black('Property Address'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Property Address",
                          validatorText: "Property Address"),
                      sizedBoxHeight(20.h),
                      txt20Black('Property Grade'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: 'Property Grade',
                          validatorText: 'Property Grade'),
                      sizedBoxHeight(20.h),
                      txt20Black('Asset Type'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "(Example - Warehouse, Corporate Office)",
                          validatorText:
                              "(Example - Warehouse, Corporate Office)"),
                      sizedBoxHeight(20.h),
                      txt20Black('Annual Rental Yield Earned'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: 'Annual Rental Yield Earned',
                          validatorText: 'Annual Rental Yield Earned'),
                      sizedBoxHeight(20.h),
                      txt20Black('Rental Escalation'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: 'Rental Escalation',
                          validatorText: 'Rental Escalation'),
                      sizedBoxHeight(20.h),
                      txt20Black('Fractional Real estate Platform'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: '(Example - Strata, Prop Share, MYRE)',
                          validatorText:
                              '(Example - Strata, Prop Share, MYRE)'),
                      sizedBoxHeight(20.h),
                      txt20Black('Date of investment'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: 'Date of investment',
                          validatorText: 'Date of investment'),
                      sizedBoxHeight(20.h),
                      txt20Black('Original Amount Invested'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: 'Original Amount Invested',
                          validatorText: 'Original Amount Invested'),
                      sizedBoxHeight(20.h),
                      txt20Black('Current Market Value of the Property'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: 'Current Market Value of the Property',
                          validatorText:
                              'Current Market Value of the Property'),
                      sizedBoxHeight(20.h),
                      txt20Black('Expected Selling Price'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: 'Expected Selling Price',
                          validatorText: 'Expected Selling Price'),
                      sizedBoxHeight(20.h),
                      CustomNextButton(
                        text: "Submit",
                        ontap: () {
                          Get.back();
                        },
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
