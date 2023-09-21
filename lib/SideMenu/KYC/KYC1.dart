import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/common/Other%20Commons/CustomTextDropDown.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/ViewModel/KYC/KycApis.dart';
import 'package:get/get.dart';

class KYC1 extends StatefulWidget {
  const KYC1({super.key});

  @override
  State<KYC1> createState() => _KYC1State();
}

class _KYC1State extends State<KYC1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool _isEmailValid = false;

  int currentIndex = 0;
  String? datecontroller;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  DateTime? _selectedDate;
  String? resident;
  final contactNumber = TextEditingController();
  final emailId = TextEditingController();
  String? occupation;
  final fathersName = TextEditingController();

  onEmailChange(String email) {
    setState(() {
      final emailRegEx = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

      if (emailRegEx.hasMatch(email)) {
        _isEmailValid = true;
      } else {
        _isEmailValid = false;
      }
    });
  }

  kyc1apicall() async {
    final isValid = _form.currentState?.validate();

    if (isValid! && resident != null && occupation != null) {
      var updata = {
        'contact_number': contactNumber.text,
        'email': emailId.text,
        'residential_status': resident,
        'dob': datecontroller,
        'occupation': occupation,
        'father_name': fathersName.text
      };
      final response = await KycApis().KYC1(updata);
      if (response.status == ResponseStatus.SUCCESS) {
        print("sucess");
        Get.toNamed('/kyc2');
      } else {
        return utils.showToast(response.message);
      }
    } else {
      await Flushbar(
        message: "Please Enter all values",
        duration: Duration(seconds: 3),
      ).show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
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
                  "KYC",
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
                child: Form(
                  key: _form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Step 1 : Complete your KYC",
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color(0xFF143C6D),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Personal Information",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Provide your personal information as per your Bank Account",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Contact Number",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(
                        texttype: TextInputType.number,
                        hintText: "Please Enter Phone Number",
                        validatorText: "Please Enter Phone Number",
                        textEditingController: contactNumber,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length != 10) {
                            return "Enter valid phone number";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Email ID",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(
                        hintText: "Please Enter Email Id",
                        validatorText: "Please Enter Email Id",
                        textEditingController: emailId,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              _isEmailValid == false) {
                            return "Enter correct email id";
                          }
                          return null;
                        },
                        onInput: (p0) {
                          onEmailChange(p0);
                        },
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Residential Status",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                        item: ["1", "2", "3"],
                        showDropDown: true,
                        onInput: (p0) {
                          print("resident value is $p0");
                          resident = p0;
                        },
                        selectedValue: resident,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Date of Birth",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
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
                      SizedBox(height: 20.h),
                      Text(
                        "Occupation",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                        item: [
                          "Marketing manager",
                          "financial operations.",
                          "Software developer."
                        ],
                        showDropDown: true,
                        onInput: (p0) {
                          occupation = p0;
                        },
                        selectedValue: occupation,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Father's Name",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextFormField(
                        hintText: "Please Enter Father's Name",
                        validatorText: "Please Enter Father's Name",
                        textEditingController: fathersName,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter fathers name";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 40.h),
                      CustomNextButton(
                        text: "Continue",
                        ontap: () {
                          kyc1apicall();
                          // Get.toNamed('/kyc2');
                        },
                      ),
                      sizedBoxHeight(60.h)
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

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1922),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return setState(() {
          datecontroller = '';
        });
      }
      setState(() {
        _selectedDate = pickedDate;
        // datecontroller =
        //     "${_selectedDate!.day.toString()}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year.toString().padLeft(2, '0')}";
        datecontroller =
            "${_selectedDate!.year.toString().padLeft(2, '0')}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString()}";
      });
    });
  }
}
