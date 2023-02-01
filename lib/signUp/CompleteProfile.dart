// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

import '../common/customNextButton.dart';

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
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Would you like a guided tour of our app?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Color(0xff444444),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    // SizedBox(width: 5),
                    CheckboxListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // side: BorderSide(width: 3, color: Color(0xFFFFB600)),
                      ),
                      activeColor: Color(0xFF143C6D),
                      checkColor: Colors.white,
                      value: check3,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? value) {
                        setState(() {
                          check3 = value;
                        });
                      },
                      title: Text(
                        "Dont't show this message again",
                        style: TextStyle(
                          fontSize: 14.sm,
                          fontFamily: 'Poppins',
                        ),
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
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFFFB600)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(
                                  width: 3, color: Color(0xFFFFB600)),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Yes",
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
                      child: OutlinedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed('/homepage2');
                        },
                        child: Text(
                          "No",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.sm,
                              color: Colors.black),
                        ),
                      ),
                    )
                    //   Padding(
                    //     padding: const EdgeInsets.all(10),
                    //     child: Expanded(
                    //       flex: 1,
                    //       child: TextButton(
                    //           onPressed: () {
                    //             Navigator.pop(context);
                    //             // buildLoginPin();
                    //           },
                    //           style: ButtonStyle(
                    //             backgroundColor: MaterialStateProperty.all<Color>(
                    //                 Color(0xFFFFB600)),
                    //             shape: MaterialStateProperty.all(
                    //               RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(30.0),
                    //                 // side: BorderSide(width: 3, color: Color(0xFFFFB600)),
                    //               ),
                    //             ),
                    //           ),
                    //           child: SizedBox(
                    //             width: 100.h,
                    //             child: Text(
                    //               'Yes',
                    //               textAlign: TextAlign.center,
                    //               style: TextStyle(
                    //                 fontSize: 20.sm,
                    //                 fontFamily: 'Poppins',
                    //                 color: Color(0xFF000000),
                    //               ),
                    //             ),
                    //           )),
                    //     ),
                    //   ),
                    //   Padding(
                    //     padding: const EdgeInsets.all(10),
                    //     child: Expanded(
                    //       flex: 1,
                    //       child: TextButton(
                    //           onPressed: () {
                    //             Get.toNamed("/homepage");
                    //             // buildLoginPin();
                    //           },
                    //           style: ButtonStyle(
                    //             shape: MaterialStateProperty.all(
                    //               RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(30.0),
                    //                 side: BorderSide(
                    //                     width: 1, color: Color(0xFF6B6B6B)),
                    //               ),
                    //             ),
                    //           ),
                    //           child: SizedBox(
                    //             width: 80.w,
                    //             child: Text(
                    //               'No',
                    //               textAlign: TextAlign.center,
                    //               style: TextStyle(
                    //                 fontSize: 20.sm,
                    //                 fontFamily: 'Poppins',
                    //                 color: Color(0xFF6B6B6B),
                    //               ),
                    //             ),
                    //           )),
                    //     ),
                    //   )
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
        backgroundColor: Color(0xFFF9F9F9),
        appBar: CustomSignupAppBar(
          titleTxt: 'Complete Your Profile',
          bottomtext: false,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 10),
            child: Center(
              child: Form(
                key: _form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.toNamed('/homepage');
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Security_first(),
                              //   ),
                              // );
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: Color(0xff6B6B6B),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 56.h,
                          child: CustomTextFormField(
                              hintText: "Full Name",
                              validatorText: "Full Name"),
                        ),
                        SizedBox(height: 25.h),
                        CustomTextFormField(
                            hintText: "Email Id", validatorText: "Email Id"),
                        SizedBox(height: 25.h),
                        CustomTextFormField(
                            hintText: "Phone Number",
                            validatorText: "Phone Number"),
                        SizedBox(height: 25.h),
                        CustomTextFormField(
                            hintText: "Date Of Birth",
                            validatorText: "Date Of Birth"),
                        SizedBox(height: 25.h),
                        CustomTextFormField(
                            hintText: "Occupation",
                            validatorText: "Occupation"),
                        SizedBox(height: 25.h),
                        TextFormField(
                          cursorColor: const Color(0xFFFFB600),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color(0xFFFFB600), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            hintStyle: TextStyle(
                                color: Color(0x80000000),
                                fontSize: 16.sm,
                                fontFamily: "Poppins"),
                            hintText: "Address",
                          ),
                          minLines: 5,
                          maxLines: null,
                        ),
                        SizedBox(height: 25.h),
                        CustomTextFormField(
                            hintText: "Enter Aadhar Number",
                            validatorText: "Enter Aadhar Number"),
                        SizedBox(height: 25.h),
                        CustomTextFormField(
                            hintText: "Enter Pan Number",
                            validatorText: "Enter Pan Number")
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomNextButton(
                      ontap: () {
                        buildGuideTour();
                      },
                      text: 'Submit',
                    ),
                  ],
                ),
              ),
            )));
  }
}
