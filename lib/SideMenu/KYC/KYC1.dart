import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class KYC1 extends StatefulWidget {
  const KYC1({super.key});

  @override
  State<KYC1> createState() => _KYC1State();
}

class _KYC1State extends State<KYC1> {
  int currentIndex = 0;

  String? datecontroller;

  DateTime? _selectedDate;
  final residentialstatustexteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Step 1 : Complete your KYC",
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: const Color(0xFF143C6D),
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
                          color: const Color(0xFF000000),
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
                          color: const Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Contact Number",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      const CustomTextFormField(
                          hintText: "Please Enter Phone Number",
                          validatorText: "Please Enter Phone Number"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Email ID",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      const CustomTextFormField(
                          hintText: "Please Enter Email Id",
                          validatorText: "Please Enter Email Id"),
                      SizedBox(height: 20.h),
                      Text(
                        "Residential Status",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                          item: const ["1", "2", "3"],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      SizedBox(height: 20.h),
                      Text(
                        "Date of Birth",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
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
                              color: const Color(0xffCCCCCC),
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
                                  const Icon(Icons.calendar_month_outlined),
                                  sizedBoxWidth(10.w)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // CustomTextFormField(
                      //     hintText: "", validatorText: "Please Enter Email Id"),
                      SizedBox(height: 20.h),
                      Text(
                        "Occupation",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      CustomTextDropdown(
                          item: const [
                            "Marketing manager",
                            "financial operations.",
                            "Software developer."
                          ],
                          controller: residentialstatustexteditingcontroller,
                          showDropDown: true),
                      SizedBox(height: 20.h),
                      Text(
                        "Father's Name",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            color: const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      const CustomTextFormField(
                          hintText: "Please Enter Father's Name",
                          validatorText: "Please Enter Father's Name"),
                      SizedBox(height: 40.h),
                      CustomNextButton(
                        text: "Continue",
                        ontap: () {
                          setState(() {
                            Get.toNamed('/kyc2');
                          });
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
}
