import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Investments/Listinvestmentform/Listforms/AlternativeListform.dart';
import 'package:freeu/HomePage/Investments/Listinvestmentform/Listforms/Fractionalsellform.dart';
import 'package:freeu/HomePage/Investments/Listinvestmentform/Listforms/OthersSellform.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/Investment/Formlistinvestment.dart';
import 'package:get/get.dart';
import 'package:freeu/Utils/Dialogs.dart';


class InvestmentpageSellinvest extends StatefulWidget {
  final String slug;

  const InvestmentpageSellinvest({super.key, required this.slug});

  @override
  State<InvestmentpageSellinvest> createState() =>
      _InvestmentpageSellinvestState();
}

class _InvestmentpageSellinvestState extends State<InvestmentpageSellinvest> {
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
  TextEditingController productcategorycontroller = TextEditingController();

  late Future myfuture;

  @override
  void initState() {
    // myfuture = FormMarketplace().Getform();
    myfuture = Listinvestform().ListinvestmentgetAPI(widget.slug);
    super.initState();
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
    final data = await Listinvestform().PostListSellform(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print("List Investment Seller form submitted");

       String selectedCategory = productcategorycontroller.text;

       if (selectedCategory == "Alternative Investment Fund"){
              Get.to(() => AIFListSellForm());

       } else if (selectedCategory == "Fractional Real Estate"){
      Get.to(() => FracionalListSellForm());

       } else if (selectedCategory == "Other Products"){
      Get.to(() => OtherListSellForm());

       }
       else {
        SizedBox();
       }
    

      return utils.showToast(data.message);
    } else {
      Get.back();
      print("List Investment Seller form not submitted");
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
        body: FutureBuilder(
          future: myfuture,
          builder: (ctx, snapshot) {
            if (snapshot.data == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Center(child: CircularProgressIndicator())],
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18.spMin),
                  ),
                );
              } else if (snapshot.hasData) {
                //  Data? data = snapshot.data!.data;

                fullNameController.text = Listformobj!.data!.name ?? "";
                phonecontroller.text =
                    Listformobj!.data!.contactNumber.toString();
                emailidcontroller.text = Listformobj!.data!.email ?? "";
                cityController.text = Listformobj!.data!.city ?? "";
                countryController.text = Listformobj!.data!.country ?? "";
                postalcodecontroller.text =
                    Listformobj!.data!.postalCode.toString();
                productcategorycontroller.text =
                    Listformobj!.data!.category ?? "";
              }
            }
            return _buildBody(
              context,
            );
          },
        ));
  }

  Widget _buildBody(context) {
    return Column(
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
                              } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
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
                            textEditingController: postalcodecontroller,
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
                          "Product category",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: const Color(0xff000000)),
                        ),
                        sizedBoxHeight(6.h),
                        CustomTextFormField(
                          textEditingController: productcategorycontroller,
                          hintText: "",
                          validatorText: "",
                          readonly: true,
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Declaration",
                              style: TextStyle(
                                  fontSize: 22.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        sizedBoxHeight(15.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, right: 10),
                          child: Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Transform.scale(
                                  scale: 1.0,
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor: Color(0xFF143C6D),
                                    ),
                                    child: SizedBox(
                                      width: 30.w,
                                      height: 30.h,
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
                                ),
                                // ),
                              ],
                            ),
                          ),
                        ),
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
                            fontSize: 22.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  sizedBoxHeight(15.h),
                  Text(
                    'If you are experiencing any difficulties filling out the required information, we are here to help. Please reach out to us at',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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

                      else if (isValid != null && isValid && design == true) {
                        return 
                          Uploadata();
                        
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
    );
  }
}
