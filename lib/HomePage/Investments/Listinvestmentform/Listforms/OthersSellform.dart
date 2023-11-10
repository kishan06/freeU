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

class OtherListSellForm extends StatefulWidget {
  const OtherListSellForm({super.key});

  @override
  State<OtherListSellForm> createState() => _OtherListSellFormState();
}

class _OtherListSellFormState extends State<OtherListSellForm> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController productcategoryController = TextEditingController();
  TextEditingController securitynameController = TextEditingController();
  TextEditingController instrumenttypeController = TextEditingController();
  TextEditingController instrumentissuerController = TextEditingController();
  TextEditingController isinController = TextEditingController();
  TextEditingController creditratingController = TextEditingController();
  TextEditingController listedController = TextEditingController();
  TextEditingController dateoforiginalinvestController =
      TextEditingController();
  TextEditingController ammountController = TextEditingController();
  TextEditingController noofunitsheldController = TextEditingController();
  TextEditingController payoutfrequencyController = TextEditingController();
  TextEditingController facevalueController = TextEditingController();
  TextEditingController couponrateController = TextEditingController();
  TextEditingController principalrepaidController = TextEditingController();
  TextEditingController maturitydateController = TextEditingController();
  TextEditingController noofunisofferedsaleController = TextEditingController();
  TextEditingController expectedsalepriceunitController =
      TextEditingController();

  Uploadata() async {
    utils.loader();
    Map<String, dynamic> updata = {
      "product_category": productcategoryController.text,
      "security_name": securitynameController.text,
      "instrument_type": instrumenttypeController.text,
      "instrument_issuer": instrumentissuerController.text,
      "isin": isinController.text,
      "credit_rating": creditratingController.text,
      "listed": listedController.text,
      "date_of_original_investment": dateoforiginalinvestController.text,
      "amount_invested": ammountController.text,
      "no_of_units_held": noofunitsheldController.text,
      "payout_frequency": payoutfrequencyController.text,
      "face_value_per_unit": facevalueController.text,
      "coupon_rate_in_pct": couponrateController.text,
      "maturity_date": maturitydateController.text,
      "no_of_units_offered_for_sale": noofunisofferedsaleController.text,
      "expected_sale_price_per_unit": expectedsalepriceunitController.text,
    };
    final data = await Listinvestform().PostListSellothersform(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print("Others form submitted");
      Timer(const Duration(seconds: 1),
          () => Get.offAllNamed('/EntryPoint', arguments: 2)
          // Get.offAllNamed('/investwatchlist')

          );
      return utils.showToast(data.message);
    } else {
      Get.back();
      print("Others form not submitted");
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
                          txt20Black('Product Category'),
                          sizedBoxHeight(6.h),
                          CustomTextDropdown(
                              item: const [
                                'Peer to Peer Lending',
                                'Invoice Discounting',
                                'Clean and Green Asset',
                                'Venture Debt',
                                'High Yield Finance',
                                'Structured Debt Instrument',
                                'Lease Based financing',
                                'Revenue Based financing',
                                // 'Others'
                              ],
                              controller: productcategoryController,
                              errortext: "Please Select Property Category",
                              hinttext: "Please Select Property Category",
                              //   controller: residentialstatustexteditingcontroller,
                              showDropDown: true),
                          sizedBoxHeight(20.h),
                          txt20Black('Security Name'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.text,
                              textEditingController: securitynameController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter security name';
                                }
                                return null;
                              },
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
                              controller: instrumenttypeController,
                              errortext: "Please Select instrument type",
                              hinttext: "Please Select instrument type",
                              //   controller: residentialstatustexteditingcontroller,
                              showDropDown: true),
                          sizedBoxHeight(20.h),
                          txt20Black('Instrument Issuer'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.text,
                              textEditingController: instrumentissuerController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter instrument issuer';
                                }
                                return null;
                              },
                              hintText: "Instrument Issuer",
                              validatorText: "Instrument Issuer"),
                          sizedBoxHeight(20.h),
                          txt20Black('ISIN'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              // texttype: TextInputType.multiline,
                              textEditingController: isinController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                // FilteringTextInputFormatter.allow(
                                //     RegExp('[a-zA-Z ]')),
                              ],
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter isin';
                                }
                                return null;
                              },
                              hintText: "ISIN",
                              validatorText: "ISIN"),
                          sizedBoxHeight(20.h),
                          txt20Black('Credit Rating'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: creditratingController,
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
                              hintText: "Credit Rating",
                              validatorText: "Credit Rating"),
                          sizedBoxHeight(20.h),
                          txt20Black('Listed'),
                          sizedBoxHeight(6.h),
                          CustomTextDropdown(
                              item: const ['Yes', 'No'],
                              controller: listedController,
                              errortext: "Please Select listed",
                              hinttext: "Please Select listed",
                              //   controller: residentialstatustexteditingcontroller,
                              showDropDown: true),
                          SizedBox(height: 20.h),
                          txt20Black('Date of Original Investment'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController:
                                  dateoforiginalinvestController,
                              texttype: TextInputType.text,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                // FilteringTextInputFormatter.allow(
                                //     RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter date of original investment';
                                }
                                return null;
                              },
                              hintText: "Date of Original Investment",
                              validatorText: "Date of Original Investment"),
                          sizedBoxHeight(20.h),
                          txt20Black('Amount Invested'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              textEditingController: ammountController,
                              texttype: TextInputType.phone,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter amount invested';
                                }
                                return null;
                              },
                              hintText: "Amount Invested",
                              validatorText: "Amount Invested"),
                          sizedBoxHeight(20.h),
                          txt20Black('No of units held'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: noofunitsheldController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter no of units held';
                                }
                                return null;
                              },
                              hintText: "No of units held",
                              validatorText: "No of units held"),
                          sizedBoxHeight(20.h),
                          txt20Black('Payout Frequency'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: payoutfrequencyController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter payout frequency';
                                }
                                return null;
                              },
                              hintText: "Payout Frequency",
                              validatorText: "Payout Frequency"),
                          sizedBoxHeight(20.h),
                          txt20Black('Face Value per unit'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: facevalueController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter face value per unit';
                                }
                                return null;
                              },
                              hintText: "Face Value per unit",
                              validatorText: "Face Value per unit"),
                          sizedBoxHeight(20.h),
                          txt20Black('Coupon Rate (%)'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: couponrateController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter coupon rate';
                                }
                                return null;
                              },
                              hintText: "Coupon Rate (%)",
                              validatorText: "Coupon Rate (%)"),
                          sizedBoxHeight(20.h),
                          txt20Black('Principal Repaid (if any)'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: principalrepaidController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter principal repaid';
                                }
                                return null;
                              },
                              hintText: "Principal Repaid (if any)",
                              validatorText: "Principal Repaid (if any)"),
                          sizedBoxHeight(20.h),
                          txt20Black('Maturity Date'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController: maturitydateController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter maturity date';
                                }
                                return null;
                              },
                              hintText: "Maturity Date",
                              validatorText: "Maturity Date"),
                          sizedBoxHeight(20.h),
                          txt20Black('No. of Units offered for sale'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController:
                                  noofunisofferedsaleController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter no of Units offered for sale';
                                }
                                return null;
                              },
                              hintText: "No. of Units offered for sale",
                              validatorText: "No. of Units offered for sale"),
                          sizedBoxHeight(20.h),
                          txt20Black('Expected Sale Price per unit'),
                          sizedBoxHeight(6.h),
                          CustomTextFormField(
                              texttype: TextInputType.phone,
                              textEditingController:
                                  expectedsalepriceunitController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter expected Sale Price per unit';
                                }
                                return null;
                              },
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
                      // Get.back();
                      final isValid = _form.currentState?.validate();
                      if (isValid != null &&
                          isValid &&
                          productcategoryController.text != null &&
                          productcategoryController.text.isNotEmpty &&
                          instrumenttypeController.text != null &&
                          instrumenttypeController.text.isNotEmpty &&
                          listedController.text != null &&
                          listedController.text.isNotEmpty) {
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
