import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/login/login.dart';

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
      final alphaRegex = RegExp(r'[A-Z]|(?=.*[@$!%*#?&])');

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
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 22,
          color: Color(0xFF6B6B6B),
        ),
        title: Text(
          "Reset Password",
          style: TextStyle(color: Color(0xFF242323)),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
              child: Form(
            key: _form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "New Password",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    // TextFormField(
                    //   inputFormatters: [
                    //     LengthLimitingTextInputFormatter(25),
                    //   ],
                    //   onChanged: (value) => onPasswordChnage(value),
                    //   keyboardType: TextInputType.text,
                    //   controller: passwordcontroller,
                    //   obscureText: !_passwordVisible,
                    //   decoration: InputDecoration(
                    //     errorMaxLines: 3,
                    //     focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //             color: Color(0xFFFFB600), width: 2.0),
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(30))),
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(width: 2, color: Color(0xFF707070)),
                    //       borderRadius: BorderRadius.all(Radius.circular(30)),
                    //     ),

                    //     suffixIcon: GestureDetector(
                    //         onTap: (() => setState(
                    //               () => _passwordVisible = !_passwordVisible,
                    //             )),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Padding(
                    //               padding: EdgeInsets.only(right: 20.0),
                    //               child: Text("Show",
                    //                   style:
                    //                       TextStyle(color: Color(0xFFFFB600))),
                    //             ),
                    //           ],
                    //         )),
                    //   ),
                    // ),
                    CustomTextFormField(
                      isInputPassword: true,
                      hintText: "Password",
                      validatorText: "Password",
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(25),
                      ],
                      textEditingController: passwordcontroller,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                          width: 20,
                          height: 20,
                          child: _isPasswordEightCar
                              ? Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: const Icon(
                                    Icons.check,
                                    color: Color(0xff143C6D),
                                    size: 15,
                                  ),
                                )
                              : const SizedBox(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Has at least 8 characters',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: _isPasswordEightCar
                                    ? Color(0xff143C6D)
                                    : Colors.black),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                          width: 20,
                          height: 20,
                          child: _isHasSymboleOrCaptital
                              ? Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: const Icon(
                                    Icons.check,
                                    color: Color(0xff143C6D),
                                    size: 15,
                                  ),
                                )
                              : const SizedBox(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Has at least 1 uppercase letter or symbol',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: _isHasSymboleOrCaptital
                                    ? Color(0xff143C6D)
                                    : Colors.black),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                          width: 20,
                          height: 20,
                          child: _isHasOneNumber
                              ? Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: const Icon(
                                    Icons.check,
                                    color: Color(0xff143C6D),
                                    size: 15,
                                  ),
                                )
                              : const SizedBox(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Has a number',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: _isHasOneNumber
                                    ? Color(0xff143C6D)
                                    : Colors.black),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      "Confirm Password",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    // TextFormField(

                    //   keyboardType: TextInputType.text,

                    //   obscureText: !_confirmpasswordVisible,
                    //   decoration: InputDecoration(
                    //     focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //             color: Color(0xFFFFB600), width: 2.0),
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(30))),
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(width: 2, color: Color(0xFF707070)),
                    //       borderRadius: BorderRadius.all(Radius.circular(30)),
                    //     ),
                    //     hintText: "Confirm Password",
                    //     suffixIcon: GestureDetector(
                    //         onTap: (() => setState(
                    //               () => _confirmpasswordVisible =
                    //                   !_confirmpasswordVisible,
                    //             )),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Padding(
                    //               padding: EdgeInsets.only(right: 20.0),
                    //               child: Text("Show",
                    //                   style:
                    //                       TextStyle(color: Color(0xFFFFB600))),
                    //             ),
                    //           ],
                    //         )),
                    //   ),
                    //   validator: (val) {
                    //     if (val == null || val.isEmpty) {
                    //       return 'Password is Empty';
                    //     }
                    //     if (val != passwordcontroller.text) {
                    //       return 'Password Not Matched';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    CustomTextFormField(
                      isInputPassword: true,
                      hintText: "Confirm Password",
                      validatorText: "",
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(25),
                      ],
                      textEditingController: confirmpasscontroller,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Password is Empty';
                        }
                        if (val != passwordcontroller.text) {
                          return 'Password Not Matched';
                        }
                        return null;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 55.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 3,
                              shadowColor:
                                  const Color.fromARGB(255, 172, 172, 173),
                              backgroundColor: const Color(0xFFFFB600),
                              shape: (RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          },
                          child: const Text(
                            'Reset Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 0,
                        top: 1,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: Icon(
                              color: Color(0xFF6B6B6B), Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
