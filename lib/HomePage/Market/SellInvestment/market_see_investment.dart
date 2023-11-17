import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/HomePage/Market/SellInvestment/Investmentforms/fractional_sell_form.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/CustomTextDropDown.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Marketplace/SellInvestment/sellinvestments.dart';
import 'package:get/get.dart';

import 'Investmentforms/AIF_sell_form.dart';
import 'Investmentforms/other_sell_form.dart';

class MarketSeeMyInvestment extends StatefulWidget {
  const MarketSeeMyInvestment({super.key});

  @override
  State<MarketSeeMyInvestment> createState() => _MarketSeeMyInvestmentState();
}

class _MarketSeeMyInvestmentState extends State<MarketSeeMyInvestment> {
  int currentIndex = 0;
  String? datecontroller;

  bool design = false;
  bool agree = true;

  final residentialstatustexteditingcontroller = TextEditingController();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailidcontroller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController postalcodecontroller = TextEditingController();

  @override
  void initState() {
    // myfuture = FormMarketplace().Getform();
    setControllervalues();
    super.initState();
  }

  setControllervalues() {
    fullNameController.text = Sellformobj!.data!.name ?? "";
    phonecontroller.text =
        // int.parse(Sellformobj!.data!.contactNumber.toString()).toString();
    Sellformobj!.data!.contactNumber.toString();
    emailidcontroller.text = Sellformobj!.data!.email ?? "";
    cityController.text = Sellformobj!.data!.city ?? "";
    countryController.text = Sellformobj!.data!.country ?? "";
    postalcodecontroller.text = Sellformobj!.data!.postalCode.toString();
  }

  String? selectedDropdownValue;

  void navigateBasedOnDropdownValue(String value) {
    if (value == '1') {
      Get.to(() => AIFSellForm());
      // Get.to(AIFSellForm());
    } else if (value == '2') {
      Get.to(() => FracionalSellForm());
      // Get.to(FracionalSellForm());
    } else if (value == '3') {
      Get.to(() => OtherSellForm());
      // Get.to(OtherSellForm());
    }
  }

  Uploadata() async {
    utils.loader();
    Map<String, dynamic> updata = {
      "name": fullNameController.text,
      "city": cityController.text,
      "country": countryController.text,
      "postal_code": postalcodecontroller.text,
      "contact_number": phonecontroller.text,
      "email": emailidcontroller.text
    };
    final data = await Sellinvestment().PostSellform(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print("Seller form submitted");
      navigateBasedOnDropdownValue(selectedDropdownValue.toString());

      return utils.showToast(data.message);
    } else {
      Get.back();
      print("Seller form not submitted");
      return utils.showToast(data.message);
    }
  }

  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    var agreeCheckBox = false.obs;
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: const CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        body: controllerEntryPoint.logedIn!
            ? Column(
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
                        child: Column(
                          children: [
                            Form(
                              key: _form,
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
                                      textEditingController: fullNameController,
                                      // readonly: false,
                                      // texttype: TextInputType.text,
                                      texttype: TextInputType.text,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(20),
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[a-zA-Z ]')),
                                      ],
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter your full name';
                                        }
                                        return null;
                                      },
                                      hintText: "Full Name*",
                                      validatorText: "Full Name"),
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
                                      textEditingController: phonecontroller,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Enter your mobile number';
                                        } else if (!RegExp(
                                                r'(^(?:[+0]9)?[0-9]{10}$)')
                                            .hasMatch(value)) {
                                          return 'Enter valid mobile number';
                                        }
                                        return null;
                                      },
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(10),
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]')),
                                      ],
                                      texttype: TextInputType.phone,
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
                                      textEditingController: emailidcontroller,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter your email address';
                                        }
                                        if (!RegExp(
                                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                            .hasMatch(value)) {
                                          return 'Enter a Valid Email address';
                                        }
                                        return null;
                                      },
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(50),
                                      ],
                                      hintText: "Email Id *",
                                      validatorText: "Email Id *"),
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
                                  CustomTextFormField(
                                    textEditingController: cityController,
                                    hintText: "Enter city",
                                    validatorText: "Enter city",
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter your city';
                                      }
                                      return null;
                                    },
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(50),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[a-zA-Z ]')),
                                    ],
                                  ),
                                  // CustomTextDropdown(
                                  //     item: const ["1", "2", "3"],
                                  //     //      controller: residentialstatustexteditingcontroller,
                                  //     showDropDown: true),
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
                                  CustomTextFormField(
                                      textEditingController: countryController,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter your country';
                                        }
                                        return null;
                                      },
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(50),
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[a-zA-Z ]')),
                                      ],
                                      texttype: TextInputType.text,
                                      hintText: "Enter country",
                                      validatorText: "Enter country"),
                                  // CustomTextDropdown(
                                  //     item: const ["1", "2", "3"],
                                  //     //    controller: residentialstatustexteditingcontroller,
                                  //     showDropDown: true),
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
                                      textEditingController:
                                          postalcodecontroller,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Enter your postal code';
                                        }
                                        return null;
                                      },
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(6),
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]')),
                                      ],
                                      texttype: TextInputType.phone,
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
                                        selectedDropdownValue = value;
                                        //   value == '1'
                                        //       ? Get.to(AIFSellForm())
                                        //       : value == '2'
                                        //           ? Get.to(FracionalSellForm())
                                        //           : Get.to(OtherSellForm());
                                      },
                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                            value: '1',
                                            label:
                                                'Alternative investment fund         '),
                                        DropdownMenuEntry(
                                            value: '2',
                                            label: 'Fractional Real Estate'),
                                        DropdownMenuEntry(
                                            value: '3',
                                            label: 'Other Products'),
                                      ]),
                                  SizedBox(height: 20.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Declaration",
                                        style: TextStyle(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(15.h),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Transform.scale(
                                            scale: 1.0,
                                            child: Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color(0xFF143C6D),
                                              ),
                                              child: SizedBox(
                                                width: 30.w,
                                                height: 30.h,
                                                child: Checkbox(
                                                  activeColor:
                                                      const Color(0xFF143C6D),
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          1.0))),
                                                  value: design,
                                                  onChanged: (bool? design) {
                                                    setState(() {
                                                      this.design = design!;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          sizedBoxWidth(5.w),
                                          // GestureDetector(
                                          //   onTap: () => showtermsandconditions(),
                                          //   child:
                                          Flexible(
                                            child: Text.rich(
                                              TextSpan(children: [
                                                TextSpan(
                                                  text:
                                                      "I hereby declare that the details furnished above are true and correct to the best of my knowledge and belief and I undertake to inform you of any changes therein, immediately. In case any of the above information is found to be false or untrue or misleading or misrepresenting, I am aware that I may be held liable for it.",
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                  ),
                                                )
                                              ]),
                                            ),
                                            //  Text(
                                            //   "I hereby declare that the details furnished above are true and correct to the best of my knowledge and belief and I undertake to inform you of any changes therein, immediately. In case any of the above information is found to be false or untrue or misleading or misrepresenting, I am aware that I may be held liable for it.",
                                            //   style: TextStyle(
                                            //     color: Colors.black,
                                            //     fontSize: 14.sp,
                                            //   ),
                                            // ),
                                          ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Text(
                                  //   'Need help ?',
                                  //   style: TextStyle(
                                  //       fontSize: 22.sp, fontWeight: FontWeight.w500),
                                  // ),
                                  // sizedBoxHeight(15.h),
                                  // Text(
                                  //   'If you are experiencing any difficulties filling out the required information, we are here to help. Please reach out to us at',
                                  //   style: TextStyle(
                                  //       fontSize: 16.sp, fontWeight: FontWeight.w500),
                                  // ),
                                  // Text(
                                  //   'info@freeu.in',
                                  //   style: TextStyle(
                                  //       fontSize: 16.sp,
                                  //       fontWeight: FontWeight.w500,
                                  //       color: const Color(0xff1B8DC9)),
                                  // ),
                                  // sizedBoxHeight(40.h),
                                  // Row(
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  //   mainAxisAlignment: MainAxisAlignment.start,
                                  //   children: [
                                  //     Obx(
                                  //       () => Checkbox(
                                  //         value: agreeCheckBox.value,
                                  //         onChanged: (value) {
                                  //           agreeCheckBox.value = !agreeCheckBox.value;
                                  //         },
                                  //       ),
                                  //     ),
                                  //     Flexible(
                                  //       child: Text.rich(
                                  //         TextSpan(children: [
                                  //           TextSpan(
                                  //             text:
                                  //                 'I, the undersigned, declare that I am the rightful owner of the Alternative asset product mentioned above and have the legal right to sell them to the buyer. I confirm that the information provided in this form is true and accurate to the best of my knowledge. I also agree to transfer the ownership  to the buyer upon receipt of the agreed-upon payment.',
                                  //             style: TextStyle(
                                  //               fontSize: 14.sp,
                                  //             ),
                                  //           )
                                  //         ]),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),

                                  // SizedBox(height: 40.h),
                                  // CustomNextButton(
                                  //   text: "Submit",
                                  //   ontap: (() {
                                  //     showModalBottomSheet(
                                  //       isScrollControlled: true,
                                  //       context: context,
                                  //       shape: const RoundedRectangleBorder(
                                  //         borderRadius: BorderRadius.only(
                                  //           topLeft: Radius.circular(30),
                                  //           topRight: Radius.circular(30),
                                  //         ),
                                  //       ),
                                  //       builder: (context) {
                                  //         return Container(
                                  //           margin: const EdgeInsets.symmetric(
                                  //               horizontal: 16, vertical: 24),
                                  //           child: Column(
                                  //             mainAxisSize: MainAxisSize.min,
                                  //             children: [
                                  //               SvgPicture.asset(
                                  //                   "assets/images/thankyouinvestment.svg"),
                                  //               Text(
                                  //                 "Thankyou for \nthe details.",
                                  //                 textAlign: TextAlign.center,
                                  //                 style: TextStyle(
                                  //                     color: const Color(0xff0F0C0C),
                                  //                     fontSize: 24.sp,
                                  //                     fontWeight: FontWeight.w500,
                                  //                     fontFamily: "Poppins"),
                                  //               ),
                                  //               sizedBoxHeight(30.h),
                                  //               Text(
                                  //                 'FreeU team will review the same and get in touch with you shortly',
                                  //                 textAlign: TextAlign.center,
                                  //                 style: TextStyle(
                                  //                     color: const Color(0xff272424),
                                  //                     fontSize: 16.sp,
                                  //                     fontFamily: "Poppins"),
                                  //               ),
                                  //               sizedBoxHeight(30.h),
                                  //               CustomNextButton(
                                  //                   ontap: () {
                                  //                     Get.back();
                                  //                     Get.back();
                                  //                   },
                                  //                   text: 'View more products')
                                  //             ],
                                  //           ),
                                  //         );
                                  //       },
                                  //     );
                                  //   }),
                                  // ),
                                  // sizedBoxHeight(60.h),
                                ],
                              ),
                            ),
                            sizedBoxHeight(10.h),
                            sizedBoxHeight(5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Need help ?',
                                  style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            sizedBoxHeight(15.h),
                            Text(
                              'If you are experiencing any difficulties filling out the required information, we are here to help. Please reach out to us at',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'info@freeu.in',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff1B8DC9)),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            CustomNextButton(
                              text: "Submit",
                              ontap: () {
                                final isValid = _form.currentState?.validate();
                                if (isValid == false) {
                                  Flushbar(
                                    message: "Please fill all fields",
                                    duration: const Duration(seconds: 1),
                                  ).show(context);
                                } else if (design != true) {
                                  Flushbar(
                                    message: "Please Accept Terms & Conditions",
                                    duration: const Duration(seconds: 1),
                                  ).show(context);
                                }
                                // else if (isValid != null &&
                                //     isValid &&
                                //     design == true &&
                                //     selectedDropdownValue != null &&
                                //     selectedDropdownValue!.isNotEmpty) {
                                //   Uploadata();
                                // }
                                else if (isValid != null &&
                                    isValid &&
                                    design == true) {
                                  if (selectedDropdownValue == null ||
                                      selectedDropdownValue!.isEmpty) {
                                    Flushbar(
                                      message:
                                          "Please select an option from the dropdown",
                                      duration: const Duration(seconds: 1),
                                    ).show(context);
                                  } else {
                                    Uploadata();
                                  }
                                }
                              },
                            ),
                            sizedBoxHeight(20.h)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [GestureDetector(
                    onTap: () {
                                Get.toNamed("/login");
                      
                    },
                    child: text20Black("Login to continue"))],
                ),
              ));
  }
}
