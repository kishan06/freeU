// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class UpdateRishProfile extends StatefulWidget {
  const UpdateRishProfile({super.key});

  @override
  State<UpdateRishProfile> createState() => _UpdateRishProfileState();
}

class _UpdateRishProfileState extends State<UpdateRishProfile> {
  final famailiarity = TextEditingController();
  final investing = TextEditingController();
  final income = TextEditingController();
  final invest = TextEditingController();
  final basis = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        backgroundColor: Color(0xFFFFFFFF),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: _form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Update risk profile",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 25.sp),
                      ),
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Enter your First name ?",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(hintText: "", validatorText: ""),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Enter your age?",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFormField(hintText: "", validatorText: ""),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "How would you describe your level of familiarity ?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextDropdown(item: [
                          "Beginner",
                          "Competent",
                          "Proficient",
                          "Expert"
                        ], controller: famailiarity, showDropDown: true),
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          "What is the primary reason you're interested in investing?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextDropdown(item: [
                          "Building Wealth",
                          "Petirement",
                          "Major Purchase",
                          "Business Investment"
                              "Holiday"
                        ], controller: investing, showDropDown: true),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "What is your annual income ?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextDropdown(item: [
                          "Below 25 Lacs",
                          "26 to 35 Lacs",
                          "36 to 50 Lacs",
                          "Above 50 Lacs"
                        ], controller: income, showDropDown: true),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "How long do you plan to invest?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextDropdown(item: [
                          "Less than 3 years",
                          "3 - 5 years",
                          "6 - 10 years"
                        ], controller: invest, showDropDown: true),
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          "How much do you hope to invest on a monthly/yearly basis?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextDropdown(item: [
                          "5 Lakhs to 10 Lakhs",
                          "10 Lakhs to 25 Lakhs",
                        ], controller: basis, showDropDown: true),
                        SizedBox(
                          height: 50.h,
                        ),
                        CustomNextButton(
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
                                            'Thankyou for updating your\n Risk Profile',
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
                            text: "Submit"),
                        sizedBoxHeight(41.h)
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
