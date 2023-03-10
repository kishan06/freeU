// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';

import 'package:get/get.dart';

class KYCTabs4 extends StatefulWidget {
  const KYCTabs4({super.key});

  @override
  State<KYCTabs4> createState() => _KYCTabs4State();
}

class _KYCTabs4State extends State<KYCTabs4> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      child: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Step 4 : Complete your KYC",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Color(0xFF143C6D),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Bank account details",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Provide your Bank account details",
                style: TextStyle(
                  fontSize: 8.5,
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "IFSC code",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xff303030)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter IFSC code",
                  validatorText: "Please Enter IFSC code"),
              SizedBox(
                height: 13,
              ),
              Text(
                "Account Number",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xff303030)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Account Number",
                  validatorText: "Please Enter Account Number"),
              SizedBox(
                height: 13,
              ),
              Text(
                "Upload cancelled check/\nBank statement",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xff303030)),
              ),
              SizedBox(
                height: 6.h,
              ),
              TextFormField(
                cursorColor: const Color(0xFFFFB600),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: uploadfronttextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(color: Color(0xFF707070), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(color: Color(0xFF707070), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(color: Color(0xFFFFB600), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle:
                      const TextStyle(color: Color(0x80000000), fontSize: 14),
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
                "Bank Name",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xff303030)),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextFormField(
                  hintText: "Please Enter Bank Name",
                  validatorText: "Please Enter Bank Name"),
              SizedBox(height: 10.h),
              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Continue",
                ontap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 10,
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
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
