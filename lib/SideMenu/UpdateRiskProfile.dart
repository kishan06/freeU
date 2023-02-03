// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextDropDown.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';

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
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: CustomSignupAppBar(
        titleTxt: "Update Risk Profile",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
            child: Form(
                key: _form,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/risk1.png',
                        // width: 120.w,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Enter your First name ?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Color(0xff303030)),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextFormField(hintText: "", validatorText: ""),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Enter your age?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Color(0xff303030)),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextFormField(hintText: "", validatorText: ""),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "How would you describe your level of familiarity ?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextDropdown(items: [
                        "Beginner",
                        "Competent",
                        "Proficient",
                        "Expert"
                      ], controller: famailiarity, showDropDown: true),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "What is the primary reason you're interested in investing?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextDropdown(items: [
                        "Building Wealth",
                        "Petirement",
                        "Major Purchase",
                        "Business Investment"
                            "Holiday"
                      ], controller: investing, showDropDown: true),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "What is your annual income ?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextDropdown(items: [
                        "Below 25 Lacs",
                        "26 to 35 Lacs",
                        "36 to 50 Lacs",
                        "Above 50 Lacs"
                      ], controller: income, showDropDown: true),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "How long do you plan to invest?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextDropdown(items: [
                        "Less than 3 years",
                        "3 - 5 years",
                        "6 - 10 years"
                      ], controller: invest, showDropDown: true),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "How much do you hope to invest on a monthly/yearly basis?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextDropdown(items: [
                        "5 Lakhs to 10 Lakhs",
                        "10 Lakhs to 25 Lakhs",
                      ], controller: basis, showDropDown: true),
                      SizedBox(
                        height: 60.h,
                      ),
                      CustomNextButton(
                          ontap: (() {
                            Navigator.pop(context);
                          }),
                          text: "Update"),
                    ]))),
      ),
    );
  }
}
