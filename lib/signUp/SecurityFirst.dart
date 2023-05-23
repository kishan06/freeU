// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';

import 'package:get/get.dart';
import '../common/Other Commons/customNextButton.dart';

class SecurityFirst extends StatefulWidget {
  const SecurityFirst({super.key});

  @override
  State<SecurityFirst> createState() => _SecurityFirstState();
}

class _SecurityFirstState extends State<SecurityFirst> {
  final GlobalKey<FormState> _pin = GlobalKey<FormState>();
  build4digitpin() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _pin,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Let's set your 4 Digit Pin",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(4),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Please Enter 4 Digit PIN";
                            } else if (value != null && value.length < 4) {
                              return "PIN length should be atleast 4";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          controller: pincontroller,
                          textAlign: TextAlign.left,
                          cursorHeight: 10,
                          decoration: InputDecoration(
                            helperText: "",
                            hintText: "Choose a PIN of Your choice",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF707070)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFF707070),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(4),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'PIN is Empty';
                        }
                        if (val != pincontroller.text) {
                          return 'Password Not Matched';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: confirmpincontroller,
                      decoration: InputDecoration(
                        helperText: "",
                        hintText: "Please Re-Enter the PIN",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xFF707070),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xFF707070),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomNextButton(
                      ontap: () {
                        final isValid = _pin.currentState?.validate();
                        if (isValid!) {
                          Get.toNamed("/completeprofile");
                        } else {
                          Get.snackbar("Error", "Please Enter Required Fields",
                              margin: EdgeInsets.all(8),
                              snackStyle: SnackStyle.FLOATING,
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      },
                      text: 'Submit',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String gender = "security-first";
  bool onclickoftouchid = false;
  bool onclickofpin = false;
  TextEditingController pincontroller = TextEditingController();
  TextEditingController confirmpincontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Security First",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Select to login Method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // ignore: prefer_const_constructors
                  height: 100.h, width: Get.size.width * 0.9,
                  decoration: BoxDecoration(
                    color:
                        onclickofpin ? const Color(0xff143C6D) : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFCCCCCC), width: 1),
                  ),
                  alignment: const Alignment(50, 0),
                  padding: const EdgeInsets.all(5),
                  child: ListTile(
                    trailing: SvgPicture.asset(
                      onclickofpin
                          ? "assets/images/four-dg-white.svg"
                          : "assets/images/four-dg-black.svg",
                    ),
                    onTap: () {},
                    title: Text(
                      "4 Digit PIN",
                      style: TextStyle(
                        color: onclickofpin ? Colors.white : Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    leading: Transform.scale(
                      scale: 1.5,
                      child: Radio(
                          activeColor: (Colors.white),
                          value: "4 Digit PIN",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              print(value);
                              onclickoftouchid = false;
                              onclickofpin = true;
                              gender = value.toString();
                              build4digitpin();
                            });
                          }),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  // ignore: prefer_const_constructors
                  height: 100.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: onclickoftouchid
                          ? const Color(0xff143C6D)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFCCCCCC), width: 1)),
                  alignment: const Alignment(50, 0),
                  padding: const EdgeInsets.all(5),
                  child: ListTile(
                    trailing: SvgPicture.asset(
                      onclickoftouchid
                          ? "assets/images/touch-white.svg"
                          : "assets/images/touch-black.svg",
                    ),
                    title: Text(
                      "Touch Id",
                      style: TextStyle(
                          color: onclickoftouchid ? Colors.white : Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18),
                    ),
                    leading: Transform.scale(
                      scale: 1.5,
                      child: Radio(
                          // fillColor:
                          //     MaterialStateProperty.all<Color>(Color(0xff143C6D)),
                          focusColor: const Color(0xff143C6D),
                          activeColor: (Colors.white),
                          value: "Touch Id",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              onclickoftouchid = true;
                              onclickofpin = false;

                              gender = value.toString();
                              Get.toNamed("/touchid");
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
