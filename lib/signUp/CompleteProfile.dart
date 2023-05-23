import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import '../common/Other Commons/customNextButton.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  bool? check3 = false;

  buildGuideTour() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Would you like a guided tour of our app?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff0F0C0C),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color(0xFF143C6D),
                      ),
                      child: Checkbox(
                        activeColor: const Color(0xFF143C6D),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        value: check3,
                        onChanged: (bool? value) {
                          setState(() {
                            this.check3 = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      "Don't show this message again",
                      style: TextStyle(
                        fontSize: 14.sm,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 156.w,
                      height: 50.h,
                      child: OutlinedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.offNamed(
                            '/homepage2',
                            arguments: 0,
                          );
                        },
                        child: Text(
                          "No",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 156.w,
                      height: 50.h,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF143C6D),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                //   width: 1,
                                color: Color(0xFF143C6D),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Yes",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        actionWidget: TextButton(
          onPressed: () {
            Get.toNamed(
              '/EntryPoint',
              arguments: 0,
            );
          },
          child: Text(
            "Skip",
            style: TextStyle(
              color: Color(0xff6B6B6B),
              fontSize: 14.sm,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: Color(0xFFFFFFFFF),
      body: Center(
        child: Form(
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Complete Your Profile",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 25.sp),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter your full name",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        CustomTextFormField(
                          hintText: "Full Name*",
                          validatorText: "Full Name",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Full Name";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 25.h),
                        Text("Enter your email address",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        CustomTextFormField(
                          hintText: "Email Id*",
                          validatorText: "Email Id",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your Email address';
                            }
                            if (!RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(value)) {
                              return 'Enter a Valid Email address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 25.h),
                        Text("Enter your phone number",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        CustomTextFormField(
                          texttype: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          hintText: "Phone Number*",
                          validatorText: "Phone Number",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Phone Number";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 25.h),
                        Text("Enter your date of birth",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        GestureDetector(
                          onTap: () {
                            _presentDatePicker();
                          },
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffCCCCCC),
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    sizedBoxWidth(20.w),
                                    Text(_selectedDate == null
                                        ? ''
                                        : '$datecontroller'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_month_outlined),
                                    sizedBoxWidth(10.w)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Text("Enter your occupation",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        CustomTextFormField(
                          hintText: "Occupation*",
                          validatorText: "Occupation",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Occupation";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 25.h),
                        Text("Enter your address",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        TextFormField(
                          cursorColor: const Color(0xFF707070),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFCCCCCC), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFCCCCCC), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFCCCCCC), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                          ),
                          minLines: 5,
                          maxLines: null,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Address";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 25.h),
                        Text("Enter Aadhar Number",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        CustomTextFormField(
                          texttype: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                            LengthLimitingTextInputFormatter(12)
                          ],
                          hintText: "Enter Aadhar Number",
                          validatorText: "Enter Aadhar Number",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Aadhar Number";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 25.h),
                        Text("Enter PAN Number",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF000000),
                                fontFamily: 'Poppins')),
                        sizedBoxHeight(15.h),
                        CustomTextFormField(
                          textCapital: true,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.allow(
                                RegExp('[A-Z,0-9]')),
                          ],
                          hintText: "Enter PAN Number",
                          validatorText: "Enter PAN Number",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter PAN Number";
                            }
                            return null;
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    CustomNextButton(
                      ontap: () {
                        final isValid = _form.currentState?.validate();
                        if (isValid!) {
                          buildGuideTour();
                        } else {
                          Get.snackbar("Error", "Please Enter Required Fields",
                              margin: EdgeInsets.all(8),
                              snackStyle: SnackStyle.FLOATING,
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      },
                      text: 'Submit',
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1922),
            lastDate: DateTime.now())
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return setState(() {
          datecontroller = '';
        });
        ;
      }
      setState(() {
        _selectedDate = pickedDate;
        datecontroller =
            "${_selectedDate!.day.toString()}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year.toString().padLeft(2, '0')}";
      });
    });
  }

  DateTime? _selectedDate;

  String? datecontroller;
}
