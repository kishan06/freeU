import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/CustomTextDropDown.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/Marketplace/SellInvestment/sellinvestments.dart';
import 'package:get/get.dart';

class AIFSellForm extends StatefulWidget {
  const AIFSellForm({super.key});

  @override
  State<AIFSellForm> createState() => _AIFSellFormState();
}

class _AIFSellFormState extends State<AIFSellForm> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController nameoffundController = TextEditingController();
  TextEditingController fundcategoryController = TextEditingController();
  TextEditingController fundstructureController = TextEditingController();
  TextEditingController typeoffundController = TextEditingController();
  TextEditingController fundstrategyController = TextEditingController();
  TextEditingController fundmanagernameController = TextEditingController();
  TextEditingController sponsorController = TextEditingController();
  TextEditingController creditratingController = TextEditingController();
  TextEditingController totalcapitalcommitController = TextEditingController();
  TextEditingController uncalledcapitalcommitController =
      TextEditingController();
  TextEditingController dateoffinalcloseController = TextEditingController();
  TextEditingController tenurefinalController = TextEditingController();
  TextEditingController currentlatestnavController = TextEditingController();
  TextEditingController noofunitsheldController = TextEditingController();
  TextEditingController noofunitsSellController = TextEditingController();
  TextEditingController expectedsalepriceController = TextEditingController();

  Uploadata() async {
    utils.loader();
    Map<String, dynamic> updata = {
      "name_of_the_aif_fund": nameoffundController.text,
      "fund_category": fundcategoryController.text,
      "fund_structure": fundstructureController.text,
      "type_of_fund": typeoffundController.text,
      "fund_strategy": fundstrategyController.text,
      "fund_manager_name": fundmanagernameController.text,
      "sponsor": sponsorController.text,
      "credit_rating": creditratingController.text,
      "total_capital_commitment": totalcapitalcommitController.text,
      "uncalled_capital_commitment": uncalledcapitalcommitController.text,
      "date_of_final_close": dateoffinalcloseController.text,
      "tenure_from_final_close": tenurefinalController.text,
      "current_or_latest_nav": currentlatestnavController.text,
      "no_of_units_held": noofunitsheldController.text,
      "no_of_units_you_wish_to_sell": noofunitsSellController.text,
      "expected_sale_per_unit": expectedsalepriceController.text,
    };
    final data = await Sellinvestment().PostSellalternativeform(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print("alternative form submitted");
      Timer(const Duration(seconds: 1),
          () => Get.offAllNamed('/EntryPoint', arguments: 4)
          // Get.offAllNamed('/investwatchlist')

          );
      return utils.showToast(data.message);
    } else {
      Get.back();
      print("alternative form not submitted");
      return utils.showToast(data.message);
    }
  }

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Form(
                      key: _form,
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
                              textEditingController: nameoffundController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter name of the aif fund';
                                }
                                return null;
                              },
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
                              // selectedValue: fundcategoryController.toString(),
                              controller: fundcategoryController,
                              errortext: "Select fund category",
                              hinttext: "Select fund category",
                              //  controller: residentialstatustexteditingcontroller,
                              showDropDown: true),
                          sizedBoxHeight(20.h),
                          txt20Black('Fund Structure '),
                          sizedBoxHeight(6.h),
                          CustomTextDropdown(
                              item: const ['Open', 'Closed'],
                              errortext: "Select fund structure",
                              hinttext: "Select fund structure",
                              controller: fundstructureController,
                              // selectedValue: fundstructureController.toString(),
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
                              errortext: "Select type of fund",
                              hinttext: "Select type of fund",
                              controller: typeoffundController,
                              // selectedValue: typeoffundController.toString(),
                              //  controller: residentialstatustexteditingcontroller,
                              showDropDown: true),
                          SizedBox(height: 20.h),
                          txt20Black('Fund Strategy'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: fundstrategyController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter your fund strategy';
                                }
                                return null;
                              },
                              hintText: "Fund Strategy",
                              validatorText: "Fund Strategy"),
                          sizedBoxHeight(20.h),
                          txt20Black('Fund Manager Name'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: fundmanagernameController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter your fund manager name';
                                }
                                return null;
                              },
                              hintText: "Fund Manager Name",
                              validatorText: "Fund Manager Name"),
                          sizedBoxHeight(20.h),
                          txt20Black('Sponsor'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: sponsorController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter your sponsor name';
                                }
                                return null;
                              },
                              hintText: "Enter sponsor",
                              validatorText: "Enter sponsor"),
                          sizedBoxHeight(20.h),
                          txt20Black('Credit Rating (if any)'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: creditratingController,
                              // texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                // FilteringTextInputFormatter.allow(
                                //     RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter credit rating';
                                }
                                return null;
                              },
                              hintText: "Credit Rating (if any)",
                              validatorText: "Credit Rating (if any)"),
                          sizedBoxHeight(20.h),
                          txt20Black('Total Capital Commitment'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController:
                                  totalcapitalcommitController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your total capital commitment';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: "Total Capital Commitment",
                              validatorText: "Total Capital Commitment"),
                          sizedBoxHeight(20.h),
                          txt20Black('Uncalled Capital Commitment'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController:
                                  uncalledcapitalcommitController,
                              texttype: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your uncalled capital commitment';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: "Uncalled Capital Commitment",
                              validatorText: "Uncalled Capital Commitment"),
                          sizedBoxHeight(20.h),
                          txt20Black('Date of Final Close'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: dateoffinalcloseController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your date of final close';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                              ],
                              hintText: "Date of Final Close",
                              validatorText: "Date of Final Close"),
                          sizedBoxHeight(20.h),
                          txt20Black('Tenure from Final Close'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: tenurefinalController,
                              texttype: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your tenure from final close';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: "Tenure from Final Close",
                              validatorText: "Tenure from Final Close"),
                          sizedBoxHeight(20.h),
                          txt20Black('Current NAV/Latest NAV'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: currentlatestnavController,
                              texttype: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your nav';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: "Current NAV/Latest NAV",
                              validatorText: "Current NAV/Latest NAV"),
                          sizedBoxHeight(20.h),
                          txt20Black('No of Units held'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: noofunitsheldController,
                              texttype: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your no of units held';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: "No of Units held",
                              validatorText: "No of Units held"),
                          sizedBoxHeight(20.h),
                          txt20Black('No of Units you wish to Sell'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: noofunitsSellController,
                              texttype: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your no of units wish to sell';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: "No of Units you wish to Sell",
                              validatorText: "No of Units you wish to Sell"),
                          sizedBoxHeight(20.h),
                          txt20Black('Expected Sale Price per unit'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController:
                                  expectedsalepriceController,
                              texttype: TextInputType.phone,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter your expected sale price per unit';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: "Expected Sale Price per unit",
                              validatorText: "Expected Sale Price per unit"),
                          sizedBoxHeight(20.h),
                        ],
                      ),
                    ),
                  ),
                  CustomNextButton(
                    text: "Submit",
                    ontap: () {
                      final isValid = _form.currentState?.validate();
                      if (isValid != null &&
                          isValid &&
                          fundcategoryController.text != null &&
                          fundcategoryController.text.isNotEmpty &&
                          fundstructureController.text != null &&
                          fundstructureController.text.isNotEmpty &&
                          typeoffundController.text != null &&
                          typeoffundController.text.isNotEmpty) {
                        Uploadata();
                      } else {
                        Flushbar(
                          message: "Please fill all fields",
                          duration: const Duration(seconds: 1),
                        ).show(context);
                      }
                      // Get.back();
                    },
                  ),
                  sizedBoxHeight(60.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
