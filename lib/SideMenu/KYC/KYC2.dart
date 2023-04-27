// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class KYC2 extends StatefulWidget {
  const KYC2({super.key});

  @override
  State<KYC2> createState() => _KYC2State();
}

class _KYC2State extends State<KYC2> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
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
                    "kyc".tr,
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
                child: Center(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          "kycStep2".tr,
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color(0xFF143C6D),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "kycStep2_add".tr,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "kycText1".tr,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Country".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextDropdown(
                            item: ["India", "Australia", "Canada"],
                            controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          "Pincode".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextFormField(
                            hintText: "pincodeV1".tr,
                            validatorText: "pincodeV1".tr),
                        SizedBox(height: 13.h),
                        Text(
                          "streetAdd".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFormField(
                          cursorColor: const Color(0xFFFFB600),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: addresstextEditingController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10).h,
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0x80000000),
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                            ),
                            hintText: "",
                          ),
                          minLines: 5,
                          maxLines: null,
                        ),
                        SizedBox(height: 13.h),
                        Text(
                          "City".tr,
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
                            item: ["Mumbai", "Thane", "Palghar"],
                            controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(height: 13.h),
                        Text(
                          "State / Province/ Region".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextDropdown(
                            item: ["Maharashtra", "kerala", "Punjab"],
                            controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(height: 20.h),
                        Text(
                          "Document Type".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextDropdown(
                            item: ["PDF", "JPEG", "PNG"],
                            controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(height: 10.h),
                        Text(
                          "Document Number".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextFormField(
                            hintText: "docV1".tr,
                            validatorText: "docV1".tr),
                        SizedBox(height: 10.h),
                        Text(
                          "kyctxt4".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        TextFormField(
                          cursorColor: const Color(0xFFFFB600),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: uploadfronttextEditingController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.h),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0x80000000),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                            ),
                            hintText: "",
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.file_upload_outlined,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "kyctxt5".tr,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        TextFormField(
                          cursorColor: const Color(0xFFFFB600),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: uploadfronttextEditingController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.h),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0x80000000),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                            ),
                            hintText: "",
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.file_upload_outlined,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        CustomNextButton(
                          text: "Continue".tr,
                          ontap: () {
                            setState(() {
                              Get.toNamed('/kyc3');
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
        ));
  }
}
