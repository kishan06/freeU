import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/Marketplace/Formmarketplace.dart';

import 'package:get/get.dart';

class Marketform extends StatefulWidget {
  const Marketform({super.key});

  @override
  State<Marketform> createState() => _MarketformState();
}

class _MarketformState extends State<Marketform> {
  bool design = false;
  bool agree = true;
  bool isChecked = false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController emailidcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController nounitsbuycontroller = TextEditingController();
  TextEditingController offerpriceperunitcontroller = TextEditingController();
  TextEditingController totalpurchasevaluecontroller = TextEditingController();
  TextEditingController idcontroller = TextEditingController();
  TextEditingController tablecontroller = TextEditingController();

  Future showtermsandconditions() async {
    FocusScope.of(context).unfocus();
    final data = await showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: 300.h,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: const TermsAndConditions(),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );

    if (data != null) {
      setState(() {
        design = data;
      });
    }
  }

  // Future? myfuture;

  @override
  void initState() {
    // myfuture = FormMarketplace().Getform();
    setControllerValues();
    _volume = 0;
    super.initState();
  }

  setControllerValues() {
    fullNameController.text = formobj!.data!.user!.name ?? "";
    phonecontroller.text = formobj!.data!.user!.contactNumber ?? "";
    emailidcontroller.text = formobj!.data!.user!.email ?? "";
    idcontroller.text = formobj!.data!.id.toString();
    tablecontroller.text = formobj!.data!.table ?? "";
  }

  int? _volume;

  //  void _calculation() {
  //   setState((){
  //       _volume = int.parse(nounitsbuycontroller.text) * int.parse(offerpriceperunitcontroller.text);
  //       },
  //   );
  //   print(_volume);
  // }

  void _calculation() {
    int? numberOfUnits = int.tryParse(nounitsbuycontroller.text);
    int? offerPricePerUnit = int.tryParse(offerpriceperunitcontroller.text);

    if (numberOfUnits != null && offerPricePerUnit != null) {
      setState(() {
        _volume = numberOfUnits * offerPricePerUnit;
      });

      if (totalpurchasevaluecontroller != null) {
        totalpurchasevaluecontroller.text = '$_volume';
      }

      print(_volume);
    }
  }

  Uploadata() async {
    utils.loader();
    Map<String, dynamic> updata = {
      "id": idcontroller.text,
      "table": tablecontroller.text,
      "name": fullNameController.text,
      "city": cityController.text,
      "country": countryController.text,
      "contact_number": phonecontroller.text,
      "email_id": emailidcontroller.text,
      "no_of_units_you_wish_to_buy": nounitsbuycontroller.text,
      "offer_price_per_unit": offerpriceperunitcontroller.text,
    };
    final data = await FormMarketplace().Postform(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      Timer(const Duration(seconds: 1),
          () => 
          Get.offAllNamed('/EntryPoint', arguments: 2)
          // Get.offAllNamed('/investwatchlist')
          
          );
      print("buyer form submitted");
      return utils.showToast(data.message);
    } else {
      Get.back();
      print("buyer form not submitted");
      return utils.showToast(data.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: Colors.white,
      body: _buildBody(context),
      // FutureBuilder(
      //   future: myfuture,
      //   builder: (ctx, snapshot) {
      //     if (snapshot.data == null) {
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [Center(child: CircularProgressIndicator())],
      //       );
      //     }
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       if (snapshot.hasError) {
      //         return Center(
      //           child: Text(
      //             '${snapshot.error} occured',
      //             style: TextStyle(fontSize: 18.spMin),
      //           ),
      //         );
      //       }
      //     }
      //     return _buildBody(context);
      //   },
      // ),
    );
  }

  Widget _buildBody(context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Form",
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
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Form(
                key: _form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(
                            textEditingController: fullNameController,
                            readonly: true,
                            hintText: "",
                            validatorText: ""),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
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
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Country",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
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
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Number",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(
                            textEditingController: phonecontroller,
                            readonly: true,
                            hintText: "",
                            validatorText: ""),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(
                          textEditingController: emailidcontroller,
                          hintText: "",
                          validatorText: "",
                          readonly: true,
                        ),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "No. Of Units You Wish To Buy",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(
                            textEditingController: nounitsbuycontroller,
                            //maxLength: 10,
                            onInput: (p0) {
                              _calculation();
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Enter no of units wish to buy';
                              }
                              // else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                              //     .hasMatch(value)) {
                              //   return 'Enter valid no of units wish to buys';
                              // }
                              return null;
                            },
                            inputFormatters: [
                              // LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]')),
                            ],
                            texttype: TextInputType.phone,
                            hintText: "Enter no of units wish to buy",
                            validatorText: "Enter no of units wish to buy"),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Offer Price per Unit",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(
                            textEditingController: offerpriceperunitcontroller,
                            //maxLength: 10,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Enter offer price per unit';
                              }
                              // else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                              //     .hasMatch(value)) {
                              //   return 'Enter valid offer price per unit';
                              // }
                              return null;
                            },
                            onInput: (p0) {
                              _calculation();
                            },
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]')),
                            ],
                            texttype: TextInputType.phone,
                            hintText: "Enter offer price per unit",
                            validatorText: "Enter offer price per unit"),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Purchase Value",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(
                            textEditingController: totalpurchasevaluecontroller,
                            //maxLength: 10,
                            readonly: true,
                            hintText: "Total purchase value",
                            validatorText: ""),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Declaration",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff303030)),
                        ),
                      ],
                    ),
                    sizedBoxHeight(15.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 10),
                      child: Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.0,
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF143C6D),
                                ),
                                child: Checkbox(
                                  activeColor: const Color(0xFF143C6D),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(1.0))),
                                  value: design,
                                  onChanged: (bool? design) {
                                    setState(() {
                                      this.design = design!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => showtermsandconditions(),
                              child: Row(
                                children: [
                                  Text(
                                    "I hereby declare ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Text(
                                    "that the details*",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xff143C6D),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(10.h),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x48B9B9BE),
                      blurRadius: 20.0,
                      spreadRadius: 0,
                      // offset: Offset(-20, -20,),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    sizedBoxHeight(5.h),
                    Text(
                      'Need Help?',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          color: Colors.black),
                    ),
                    sizedBoxHeight(5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'If you are experiencing any difficulties filling out the required information, we are here to help. Please reach out to us at info@freeu.in',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: Colors.black),
                      ),
                    ),
                    sizedBoxHeight(5.h),
                  ],
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
                  } else if (isValid != null && isValid && design == true) {
                    Uploadata();
                  }
                },
              ),
              sizedBoxHeight(20.h),
            ],
          ),
        )),
      ]),
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Declaration",
              style: TextStyle(fontFamily: "Poppins", fontSize: 20.sp),
            ),
            Text(
                "I hereby declare that the details furnished above are true and correct to the best of my knowledge and belief and I undertake to inform you of any changes therein, immediately. In case any of the above information is found to be false or untrue or misleading or misrepresenting, I am aware that I may be held liable for it."),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: CustomNextButton(
              text: "Proceed",
              ontap: () {
                Navigator.pop(context, agree);
              },
            )),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
