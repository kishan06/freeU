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
import 'package:freeu/viewModel/Investment/Formlistinvestment.dart';
import 'package:get/get.dart';

class FracionalListSellForm extends StatefulWidget {
  const FracionalListSellForm({super.key});

  @override
  State<FracionalListSellForm> createState() => _FracionalListSellFormState();
}

class _FracionalListSellFormState extends State<FracionalListSellForm> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController propertynameController = TextEditingController();
  TextEditingController propertyaddressController = TextEditingController();
  TextEditingController propertygradeController = TextEditingController();
  TextEditingController assettypeController = TextEditingController();
  TextEditingController annualrentalearnedController = TextEditingController();
  TextEditingController rentalescalationController = TextEditingController();
  TextEditingController fracplatformController = TextEditingController();
  TextEditingController dateofinvestController = TextEditingController();
  TextEditingController originalammountController = TextEditingController();
  TextEditingController currentmarketpropertyController =
      TextEditingController();
  TextEditingController expectedsellingpriceController =
      TextEditingController();

  Uploadata() async {
    utils.loader();
    Map<String, dynamic> updata = {
      "property_name": propertynameController.text,
      "property_address": propertyaddressController.text,
      "property_grade": propertygradeController.text,
      "asset_type": assettypeController.text,
      "annual_rental_yield_earned": annualrentalearnedController.text,
      "rental_escalation": rentalescalationController.text,
      "fractional_real_estate_platform": fracplatformController.text,
      "date_of_investment ": dateofinvestController.text,
      "original_amount_invested": originalammountController.text,
      "current_market_value_of_the_property":
          currentmarketpropertyController.text,
      "expected_selling_price": expectedsellingpriceController.text,
    };
    final data = await Listinvestform().PostListSellfractionalform(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print("fractional form submitted");
      Timer(const Duration(seconds: 1),
          () => Get.offAllNamed('/EntryPoint', arguments: 2)
          // Get.offAllNamed('/investwatchlist')

          );
      return utils.showToast(data.message);
    } else {
      Get.back();
      print("fractional form not submitted");
      return utils.showToast(data.message);
    }
  }

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
                          txt20Black('Property Name'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: propertynameController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter property name';
                                }
                                return null;
                              },
                              hintText: "Property Name",
                              validatorText: "Property Name"),
                          sizedBoxHeight(20.h),
                          txt20Black('Property Address'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: propertyaddressController,
                              // texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter property address';
                                }
                                return null;
                              },
                              hintText: "Property Address",
                              validatorText: "Property Address"),
                          sizedBoxHeight(20.h),
                          txt20Black('Property Grade'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: propertygradeController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter property grade';
                                }
                                return null;
                              },
                              hintText: 'Property Grade',
                              validatorText: 'Property Grade'),
                          sizedBoxHeight(20.h),
                          txt20Black('Asset Type'),
                          sizedBoxHeight(6.h),
                          CustomTextDropdown(
                              item: const [
                                'Warehouse',
                                'Corporate Office',
                              ],
                              controller: assettypeController,
                              errortext: "Please Select asset type",
                              hinttext: "Please Select asset type",
                              //  controller: residentialstatustexteditingcontroller,
                              showDropDown: true),
                          // CustomTextFormField(
                          //     textEditingController: assettypeController,
                          //     texttype: TextInputType.text,
                          //     inputFormatters: [
                          //       LengthLimitingTextInputFormatter(20),
                          //       FilteringTextInputFormatter.allow(
                          //           RegExp('[a-zA-Z ]')),
                          //     ],
                          //     validator: (value) {
                          //       if (value!.isEmpty) {
                          //         return 'Enter asset type';
                          //       }
                          //       return null;
                          //     },
                          //     hintText:
                          //         "(Example - Warehouse, Corporate Office)",
                          //     validatorText:
                          //         "(Example - Warehouse, Corporate Office)"),
                          sizedBoxHeight(20.h),
                          txt20Black('Annual Rental Yield Earned'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController:
                                  annualrentalearnedController,
                              texttype: TextInputType.phone,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter annual rental yield earned';
                                }
                                return null;
                              },
                              hintText: 'Annual Rental Yield Earned',
                              validatorText: 'Annual Rental Yield Earned'),
                          sizedBoxHeight(20.h),
                          txt20Black('Rental Escalation'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: rentalescalationController,
                              // texttype: ,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter rental escalation';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                // FilteringTextInputFormatter.allow(
                                //     RegExp('[0-9]')),
                              ],
                              hintText: 'Rental Escalation',
                              validatorText: 'Rental Escalation'),
                          sizedBoxHeight(20.h),
                          txt20Black('Fractional Real estate Platform'),
                          sizedBoxHeight(6.h),
                          CustomTextDropdown(
                              item: const ['Strata', 'Prop Share', 'MYRE'],
                              // selectedValue: fundcategoryController.toString(),
                              controller: fracplatformController,
                              errortext: "Select fund category",
                              hinttext: "Select fund category",
                              //  controller: residentialstatustexteditingcontroller,
                              showDropDown: true),
                          // CustomTextFormField(
                          //     texttype: TextInputType.text,
                          //     textEditingController: fracplatformController,
                          //     inputFormatters: [
                          //       LengthLimitingTextInputFormatter(20),
                          //       FilteringTextInputFormatter.allow(
                          //           RegExp('[a-zA-Z ]')),
                          //     ],
                          //     validator: (value) {
                          //       if (value!.isEmpty) {
                          //         return 'Enter fractional real estate platform';
                          //       }
                          //       return null;
                          //     },
                          //     hintText: '(Example - Strata, Prop Share, MYRE)',
                          //     validatorText:
                          //         '(Example - Strata, Prop Share, MYRE)'),
                          sizedBoxHeight(20.h),
                          txt20Black('Date of investment'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: dateofinvestController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                // FilteringTextInputFormatter.allow(
                                //     RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter date of investment';
                                }
                                return null;
                              },
                              hintText: 'Date of investment',
                              validatorText: 'Date of investment'),
                          sizedBoxHeight(20.h),
                          txt20Black('Original Amount Invested'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: originalammountController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter original amount invested';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: 'Original Amount Invested',
                              validatorText: 'Original Amount Invested'),
                          sizedBoxHeight(20.h),
                          txt20Black('Current Market Value of the Property'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController:
                                  currentmarketpropertyController,
                              texttype: TextInputType.phone,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter market value of the property';
                                }
                                return null;
                              },
                              hintText: 'Current Market Value of the Property',
                              validatorText:
                                  'Current Market Value of the Property'),
                          sizedBoxHeight(20.h),
                          txt20Black('Expected Selling Price'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController:
                                  expectedsellingpriceController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter expected selling price';
                                }
                                return null;
                              },
                              texttype: TextInputType.phone,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              hintText: 'Expected Selling Price',
                              validatorText: 'Expected Selling Price'),
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
                          assettypeController.text != null &&
                          assettypeController.text.isNotEmpty &&
                          fracplatformController.text != null &&
                          fracplatformController.text.isNotEmpty) {
                        Uploadata();
                      } else {
                        Flushbar(
                          message: "Please fill all fields",
                          duration: const Duration(seconds: 1),
                        ).show(context);
                      }
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
