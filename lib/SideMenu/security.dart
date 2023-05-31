import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: Color(0xFFFFFFFF),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Security",
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
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Current Login PIN",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        CustomTextFormField(
                            hintText: "Enter 4 digit login pin",
                            validatorText: "Enter 4 digit login pin"),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "New Login PIN",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        CustomTextFormField(
                            hintText: "Enter 4 digit login pin",
                            validatorText: "Enter 4 digit login pin"),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Confirm Login PIN",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        CustomTextFormField(
                            hintText: "Enter 4 digit login pin",
                            validatorText: "Enter 4 digit login pin"),
                        SizedBox(
                          height: 60.h,
                        ),
                        CustomNextButton(
                            ontap: (() {
                              Navigator.pop(context);
                            }),
                            text: "Update")
                      ],
                    ),
                  )),
                ],
              ))),
    );
  }
}
