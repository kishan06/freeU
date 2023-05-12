import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool _confirmpasswordVisible = false;
  bool _isPasswordEightCar = false;
  bool _isHasOneNumber = false;
  bool _isHasSymboleOrCaptital = false;
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasscontroller = TextEditingController();
  onPasswordChnage(String password) {
    setState(() {
      final numricRegex = RegExp(r'[0-9]');
      final alphaRegex = RegExp('(?=.*[A-Z])(?=.*[!@#\$%^&*])');
      _isPasswordEightCar = false;
      if (password.length >= 8) _isPasswordEightCar = true;

      _isHasOneNumber = false;
      if (numricRegex.hasMatch(password)) _isHasOneNumber = true;

      _isHasSymboleOrCaptital = false;
      if (alphaRegex.hasMatch(password)) _isHasSymboleOrCaptital = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Form(
            key: _form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Reset Password",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 25.sp,
                          color: const Color(0XFF0F0C0C),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            "New Password",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sp,
                                color: const Color(0xff000000)),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) => onPasswordChnage(value),
                            cursorColor: Colors.grey,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.text,
                            controller: passwordcontroller,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                errorMaxLines: 3,
                                hintStyle: TextStyle(
                                    color: const Color(0x80000000),
                                    fontSize: 16.sp,
                                    fontFamily: "Poppins"),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Enter your password',
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Get.isDarkMode
                                          ? Colors.black
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                )),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Password is Empty';
                              }
                              if (!RegExp(
                                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                  .hasMatch(val)) {
                                return 'Enter valid password';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                width: 20.w,
                                height: 20.h,
                                child: _isPasswordEightCar
                                    ? const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xff143C6D),
                                          size: 15,
                                        ),
                                      )
                                    : const Text(
                                        '  X',
                                        style: TextStyle(color: Colors.red),
                                      ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Has at least 8 characters',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                      color: _isPasswordEightCar
                                          ? const Color(0xff143C6D)
                                          : Colors.black),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                width: 20.w,
                                height: 20.h,
                                child: _isHasSymboleOrCaptital
                                    ? const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xff143C6D),
                                          size: 15,
                                        ),
                                      )
                                    : const Text(
                                        '  X',
                                        style: TextStyle(color: Colors.red),
                                      ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Has at least 1 uppercase letter and symbol',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sm,
                                        color: _isHasSymboleOrCaptital
                                            ? const Color(0xff143C6D)
                                            : Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                width: 20.w,
                                height: 20.h,
                                child: _isHasOneNumber
                                    ? const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xff143C6D),
                                          size: 15,
                                        ),
                                      )
                                    : const Text(
                                        '  X',
                                        style: TextStyle(color: Colors.red),
                                      ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Has a number',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sm,
                                      color: _isHasOneNumber
                                          ? const Color(0xff143C6D)
                                          : Colors.black),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            "Confirm Password",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sm,
                                color: const Color(0xff303030)),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.grey,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.text,
                            controller: confirmpasscontroller,
                            obscureText: !_confirmpasswordVisible,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                errorMaxLines: 3,
                                hintStyle: TextStyle(
                                    color: const Color(0x80000000),
                                    fontSize: 16.sp,
                                    fontFamily: "Poppins"),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Confirm Password',
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: IconButton(
                                    icon: Icon(
                                      _confirmpasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Get.isDarkMode
                                          ? Colors.black
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _confirmpasswordVisible =
                                            !_confirmpasswordVisible;
                                      });
                                    },
                                  ),
                                )),
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Password is Empty';
                              }
                              if (val != passwordcontroller.text) {
                                return 'Password Not Matched';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      CustomNextButton(
                        text: "Reset Password",
                        ontap: () {
                          final isValid = _form.currentState?.validate();
                          if (isValid!) {
                            Get.toNamed('/login');
                          } else {
                            Get.snackbar("Error", "Please Enter Password",
                                margin: const EdgeInsets.all(8),
                                snackStyle: SnackStyle.FLOATING,
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
