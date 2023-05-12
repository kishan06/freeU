import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';

import 'package:get/get.dart';

class KYC4 extends StatefulWidget {
  const KYC4({super.key});

  @override
  State<KYC4> createState() => _KYC4State();
}

class _KYC4State extends State<KYC4> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Center(
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Step 4 : Complete your KYC",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 22.sp,
                              color: const Color(0xFF143C6D),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Bank account details",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF000000),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Provide your Bank account details",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              color: const Color(0xFF000000),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "IFSC code",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: const Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          const CustomTextFormField(
                              hintText: "Please Enter IFSC code",
                              validatorText: "Please Enter IFSC code"),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Account Number",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: const Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          const CustomTextFormField(
                              hintText: "Please Enter Account Number",
                              validatorText: "Please Enter Account Number"),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            "Upload cancelled check/ Bank statement",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: const Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          TextFormField(
                            cursorColor: const Color(0xFFFFB600),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: uploadfronttextEditingController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.h),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFFCCCCCC), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFFCCCCCC), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFFCCCCCC), width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: const Color(0x80000000),
                                  fontSize: 16.sp),
                              hintText: "",
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Bank Name",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                color: const Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          const CustomTextFormField(
                              hintText: "Please Enter Bank Name",
                              validatorText: "Please Enter Bank Name"),
                          SizedBox(height: 40.h),
                          CustomNextButton(
                            text: "Submit",
                            ontap: () {
                              Timer(
                                  const Duration(seconds: 2),
                                  () =>
                                      Get.toNamed('/EntryPoint', arguments: 0));
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    topRight: Radius.circular(30.r),
                                  ),
                                ),
                                builder: (context) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 24.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Image.asset('assets/images/kyc.png'),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        Center(
                                          child: Text(
                                            'Thankyou for updating\n your KYC',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 20.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
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
        ),
      ),
    );
  }
}
