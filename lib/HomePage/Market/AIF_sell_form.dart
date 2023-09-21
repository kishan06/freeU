import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/CustomTextDropDown.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class AIFSellForm extends StatelessWidget {
  const AIFSellForm({super.key});

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
                  'Alternative investment fund',
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
                      txt20Black('Name of the AIF Fund'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Name of the AIF Fund",
                          validatorText: "Name of the AIF Fund"),
                      sizedBoxHeight(20.h),
                      txt20Black('Fund Category'),
                      sizedBoxHeight(6.h),
                      CustomTextDropdown(
                          item: const [
                            'Category I',
                            'Category II',
                            'Category III'
                          ],
                        //  controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      sizedBoxHeight(20.h),
                      txt20Black('Fund Structure '),
                      sizedBoxHeight(6.h),
                      CustomTextDropdown(
                          item: const ['Open', 'Closed'],
                     //     controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      sizedBoxHeight(20.h),
                      txt20Black('Type of Fund'),
                      sizedBoxHeight(6.h),
                      CustomTextDropdown(
                          item: const [
                            'Angel Fund',
                            'Venture Capital Fund',
                            'Infrastructure Fund',
                            'Real Estate Fund',
                            'Private Equity Fund',
                            'Distressed Asset Fund',
                            'Debt Fund',
                            'Hedge Fund',
                            'PIPE Fund',
                            'Others'
                          ],
                        //  controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      SizedBox(height: 20.h),
                      txt20Black('Fund Strategy'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Fund Strategy",
                          validatorText: "Fund Strategy"),
                      sizedBoxHeight(20.h),
                      txt20Black('Fund Manager Name'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Fund Manager Name",
                          validatorText: "Fund Manager Name"),
                      sizedBoxHeight(20.h),
                      txt20Black('Sponsor'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Sponsor", validatorText: "Sponsor"),
                      sizedBoxHeight(20.h),
                      txt20Black('Credit Rating (if any)'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Credit Rating (if any)",
                          validatorText: "Credit Rating (if any)"),
                      sizedBoxHeight(20.h),
                      txt20Black('Total Capital Commitment'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Total Capital Commitment",
                          validatorText: "Total Capital Commitment"),
                      sizedBoxHeight(20.h),
                      txt20Black('Uncalled Capital Commitment'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Uncalled Capital Commitment",
                          validatorText: "Uncalled Capital Commitment"),
                      sizedBoxHeight(20.h),
                      txt20Black('Date of Final Close'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Date of Final Close",
                          validatorText: "Date of Final Close"),
                      sizedBoxHeight(20.h),
                      txt20Black('Tenure from Final Close'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Tenure from Final Close",
                          validatorText: "Tenure from Final Close"),
                      sizedBoxHeight(20.h),
                      txt20Black('Current NAV/Latest NAV'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "Current NAV/Latest NAV",
                          validatorText: "Current NAV/Latest NAV"),
                      sizedBoxHeight(20.h),
                      txt20Black('No of Units held'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "No of Units held",
                          validatorText: "No of Units held"),
                      sizedBoxHeight(20.h),
                      txt20Black('No of Units you wish to Sell'),
                      sizedBoxHeight(6.h),
                      CustomTextFormField(
                          hintText: "No of Units you wish to Sell",
                          validatorText: "No of Units you wish to Sell"),
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
