import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/CustomTextDropDown.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class OtherSellForm extends StatelessWidget {
  const OtherSellForm({super.key});

  @override
  Widget build(BuildContext context) {
    final residentialstatustexteditingcontroller = TextEditingController();
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
                  'Other Products',
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
                      txt20Black('Product Category'),
                      sizedBoxHeight(6.h),
                      CustomTextDropdown(
                          item: const [
                            'Lease Based financing',
                            'Revenue Based financing',
                            'Venture Debt',
                            'High Yield Fixed Income',
                            'Structured Debt Instrument',
                            'Others'
                          ],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      sizedBoxHeight(20.h),
                      txt20Black('Security Name'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Security Name",
                          validatorText: "Security Name"),
                      sizedBoxHeight(20.h),
                      txt20Black('Instrument Type'),
                      sizedBoxHeight(6.h),
                      CustomTextDropdown(
                          item: const [
                            'Non-Convertible debentures',
                            'Convertible debenture',
                            'Market Linked Debenture',
                            'Commercial Paper',
                            'Secured Bonds',
                            'Unsecured Bonds',
                            'Others'
                          ],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      sizedBoxHeight(20.h),
                      txt20Black('Instrument Issuer'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Instrument Issuer",
                          validatorText: "Instrument Issuer"),
                      sizedBoxHeight(20.h),
                      txt20Black('ISIN'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "ISIN", validatorText: "ISIN"),
                      sizedBoxHeight(20.h),
                      txt20Black('Credit Rating'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Credit Rating",
                          validatorText: "Credit Rating"),
                      sizedBoxHeight(20.h),
                      txt20Black('Listed'),
                      sizedBoxHeight(6.h),
                      CustomTextDropdown(
                          item: const ['Yes', 'No'],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      SizedBox(height: 20.h),
                      txt20Black('Date of Original Investment'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Date of Original Investment",
                          validatorText: "Date of Original Investment"),
                      sizedBoxHeight(20.h),
                      txt20Black('Amount Invested'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Amount Invested",
                          validatorText: "Amount Invested"),
                      sizedBoxHeight(20.h),
                      txt20Black('No of units held'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "No of units held",
                          validatorText: "No of units held"),
                      sizedBoxHeight(20.h),
                      txt20Black('Payout Frequency'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Payout Frequency",
                          validatorText: "Payout Frequency"),
                      sizedBoxHeight(20.h),
                      txt20Black('Face Value per unit'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Face Value per unit",
                          validatorText: "Face Value per unit"),
                      sizedBoxHeight(20.h),
                      txt20Black('Coupon Rate (%)'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Coupon Rate (%)",
                          validatorText: "Coupon Rate (%)"),
                      sizedBoxHeight(20.h),
                      txt20Black('Principal Repaid (if any)'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Principal Repaid (if any)",
                          validatorText: "Principal Repaid (if any)"),
                      sizedBoxHeight(20.h),
                      txt20Black('Maturity Date'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Maturity Date",
                          validatorText: "Maturity Date"),
                      sizedBoxHeight(20.h),
                      txt20Black('No. of Units offered for sale'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "No. of Units offered for sale",
                          validatorText: "No. of Units offered for sale"),
                      sizedBoxHeight(20.h),
                      txt20Black('Expected Sale Price per unit'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Expected Sale Price per unit",
                          validatorText: "Expected Sale Price per unit"),
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
