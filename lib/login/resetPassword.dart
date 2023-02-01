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
                          fontSize: 18.sm,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) => onPasswordChnage(value),

                      cursorColor: Colors.grey,
                      style: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: 'Productsans',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.text,
                      controller: passwordcontroller,
                      obscureText:
                          !_passwordVisible, //This will obscure text dynamically
                      decoration: InputDecoration(
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
                            borderSide:
                                const BorderSide(color: Colors.red, width: 1),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Colors.red, width: 1),
                          ),
                          errorMaxLines: 3,
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.withOpacity(0.8),
                            fontFamily: 'Productsans',
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          errorStyle: const TextStyle(
                            fontSize: 16.0,
                          ),
                          hintText: 'Enter your password',
                          suffixIcon: GestureDetector(
                            onTap: () => setState(
                                () => _passwordVisible = !_passwordVisible),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    "show",
                                    style: TextStyle(
                                      color: Color(0xFFFFB600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                          //  IconButton(
                          //   icon: Text(
                          //     "show",
                          //     style: TextStyle(color: Color(0xFFFFB600)),
                          //   ),
                          //   onPressed: () {
                          //     setState(() {
                          //       _passwordVisible = !_passwordVisible;
                          //     });
                          //   },
                          // ),
                          ),
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
                                fontSize: 14.sm,
                                color: _isPasswordEightCar
                                    ? Color(0xff143C6D)
                                    : Colors.black),
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
                                fontSize: 14.sm,
                                color: _isHasSymboleOrCaptital
                                    ? Color(0xff143C6D)
                                    : Colors.black),
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
                                fontSize: 14.sm,
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
                          fontSize: 18.sm,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
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
                        height: 50.h,
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
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 16.sm,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25.r,
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
