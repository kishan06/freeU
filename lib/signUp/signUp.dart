// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/login/login.dart';

import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool design = false;
  bool _passwordVisible = false;
  bool _confirmpasswordVisible = false;
  bool _isPasswordEightCar = false;
  bool _isHasOneNumber = false;
  bool _isHasSymboleOrCaptital = false;
  bool isSignupBtnVisible = true;
  bool isSignupBtnLoaderVisible = false;
  bool agree = true;
  bool isChecked = false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailidcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasscontroller = TextEditingController();

  onPasswordChnage(String password) {
    setState(() {
      final numricRegex = RegExp(r'[0-9]');
      final alphaRegex = RegExp(r'[A-Z](?=.*[@$!%*#?&])');

      _isPasswordEightCar = false;
      if (password.length >= 8) _isPasswordEightCar = true;

      _isHasOneNumber = false;
      if (numricRegex.hasMatch(password)) _isHasOneNumber = true;

      _isHasSymboleOrCaptital = false;
      if (alphaRegex.hasMatch(password)) _isHasSymboleOrCaptital = true;
    });
  }

  Future showtermsandconditions() async {
    FocusScope.of(context).unfocus();
    final data = await showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height:Get.size.height*0.8,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: const TermsAndConditions(),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );

    if (data != null) {
      setState(() {
        design = data;
      });
    }
  }

  buildPin(context) {
    return showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDdState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      child:
                          Text("Terms And Conditions", style: blackStyle16()),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF143C6D),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        // color: Color(0xFF143C6D),
                        height: 400.h,
                        child: Scrollbar(
                          thumbVisibility: true,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                " Lorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum LoremLorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum LoremLorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum LoremLorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum LoremLorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsummlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenmloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sum",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: const Color(0xFFF78104),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            value: agree,
                            onChanged: (value) {
                              setState(() {
                                agree = value ?? false;
                              });
                            }),
                        Flexible(
                          child: Text(
                            maxLines: 1,
                            softWrap: false,
                            'I accept Terms & Conditions',
                            style: TextStyle(
                              fontSize: 14.sm,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: CustomNextButton(
                      text: "Continue",
                      ontap: () {
                        Navigator.pop(context);
                        Get.toNamed("/securityquestion");
                      },
                    )),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Positioned(
              //   left: 165,
              //   top: -10,
              //   child: Column(
              //     children: [
              //       SvgPicture.asset("assets/images/cancel.svg"),
              //       SizedBox(
              //         height: 20,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login()));
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FA),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => Get.focusScope!.unfocus(),
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 24.sm,
                                  color: Color(0xFF6B6B6B),
                                )),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 20.sm),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        CustomTextFormField(
                            hintText: "Full Name*", validatorText: "Full Name"),
                        // FullnameTextFormField(
                        //   controller: fullNameController,
                        //   keyboardType: TextInputType.text,
                        //   hint: "Full Name*",
                        //   errortext: "Please Enter Full Name",
                        // ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextFormField(
                          hintText: "Email Id*",
                          validatorText: "Email Id",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your Email address';
                            }
                            if (!RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(value)) {
                              return 'Enter a Valid Email address';
                            }
                            return null;
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(50),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        // TextFormField(
                        //   keyboardType: TextInputType.text,
                        //   cursorColor: Colors.grey,
                        //   style: TextStyle(
                        //       fontFamily: 'Poppins',
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w500,
                        //       color:
                        //           Get.isDarkMode ? Colors.white : Colors.black),
                        //   autovalidateMode: AutovalidateMode.onUserInteraction,
                        //   controller: phonecontroller,
                        //   decoration: InputDecoration(
                        //     focusedBorder: const OutlineInputBorder(
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(30)),
                        //       borderSide:
                        //           BorderSide(color: Colors.grey, width: 2.0),
                        //     ),
                        //     enabledBorder: const OutlineInputBorder(
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(30)),
                        //       borderSide:
                        //           BorderSide(color: Colors.grey, width: 2.0),
                        //     ),
                        //     errorMaxLines: 3,
                        //     hintText: "Phone Number*",
                        //     hintStyle: blackStyle(context).copyWith(
                        //         fontSize: 16,
                        //         fontWeight: FontWeight.w600,
                        //         color: Get.isDarkMode
                        //             ? Colors.white
                        //             : const Color(0xFF303030).withOpacity(0.3)),
                        //     fillColor: Get.isDarkMode
                        //         ? const Color(0xFF303030).withOpacity(0.8)
                        //         : Colors.white,
                        //     filled: true,
                        //     errorBorder: const OutlineInputBorder(
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(30)),
                        //       borderSide:
                        //           BorderSide(color: Colors.red, width: 2.0),
                        //     ),
                        //     focusedErrorBorder: const OutlineInputBorder(
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(30)),
                        //       borderSide:
                        //           BorderSide(color: Colors.red, width: 2.0),
                        //     ),
                        //     errorStyle: const TextStyle(
                        //       fontSize: 16.0,
                        //     ),
                        //   ),
                        //   validator: (value) {
                        //     if (value == null || value.isEmpty) {
                        //       return "Please Enter Phone Number";
                        //     } else if (value.length != 10) {
                        //       return "Please Enter Valid Phone Number";
                        //     }
                        //     return null;
                        //   },
                        //   inputFormatters: [
                        //     new LengthLimitingTextInputFormatter(10),
                        //     FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        //   ],
                        //   onSaved: (value) {},
                        // ),
                        CustomTextFormField(
                            hintText: "Phone Number*",
                            validatorText: "Phone Number"),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onChanged: (value) => onPasswordChnage(value),

                          cursorColor: Colors.grey,
                          style: TextStyle(
                            //color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontSize: 16.sm,
                            fontWeight: FontWeight.w400,
                          ),
                          keyboardType: TextInputType.text,
                          controller: passwordcontroller,
                          obscureText:
                              !_passwordVisible, //This will obscure text dynamically
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070).withOpacity(0),
                                  width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070).withOpacity(0),
                                  width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070).withOpacity(0),
                                  width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            errorMaxLines: 3,
                            hintStyle: TextStyle(
                                color: Color(0x80000000),
                                fontSize: 15.sm,
                                fontFamily: "Poppins"),
                            fillColor: Colors.white,
                            filled: true,
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
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              width: 20.w,
                              height: 20.h,
                              child: _isPasswordEightCar
                                  ? Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.check,
                                        color: Color(0xff000000),
                                        size: 15,
                                      ),
                                    )
                                  : SizedBox(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Has at least 8 characters',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sm,
                                    color: _isPasswordEightCar
                                        ? Color(0xff000000)
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
                                        color: Color(0xff000000),
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
                                        ? Color(0xff000000)
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
                                      child: Icon(
                                        Icons.check,
                                        color: Color(0xff000000),
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
                                        ? Color(0xff000000)
                                        : Colors.black),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomTextFormField(
                          isInputPassword: true,
                          textEditingController: confirmpasscontroller,
                          hintText: "Confirm Password",
                          validatorText: "Confirm Password",
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
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, right: 10),
                          child: Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 1.0,
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor: Color(0xFF1B8DC9),
                                    ),
                                    child: Checkbox(
                                      activeColor: const Color(0xFF1B8DC9),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(1.0))),
                                      value: design,
                                      onChanged: (bool? design) {
                                        setState(() {
                                          this.design = design!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => showtermsandconditions(),
                                  child: Row(
                                    children: [
                                      Text(
                                        "I accept the ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.sm,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 2),
                                        child: Text(
                                          "Terms & Conditions*",
                                          style: TextStyle(
                                            fontSize: 14.sm,
                                            color: Color(0xff1B8DC9),
                                            // decoration: TextDecoration.underline
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Visibility(
                  visible: isSignupBtnVisible,
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: CustomNextButton(
                        text: "Sign up",
                        ontap: () {
                          final isValid = _form.currentState?.validate();
                          if (isValid!) {
                            Get.toNamed("/securityquestion");
                          } else {
                            Get.snackbar(
                                "Error", "Please Enter All Required Fields",
                                margin: EdgeInsets.all(8),
                                snackStyle: SnackStyle.FLOATING,
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Visibility(
                    visible: isSignupBtnLoaderVisible,
                    child: const Center(child: CircularProgressIndicator())),
                const SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class FullnameTextFormField extends StatelessWidget {
  const FullnameTextFormField({
    Key? key,
    this.controller,
    this.hint,
    this.ontap,
    this.errortext,
    this.limitlength,
    this.maxlength,
    this.texttype,
    this.maxlines,
    this.keyboardType,
    this.inputFormatters,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hint;
  final String? errortext;
  final Function(String)? ontap;
  final int? limitlength;
  final int? maxlength;
  final TextInputType? texttype;
  final int? maxlines;
  final TextInputType? keyboardType;
  final FilteringTextInputFormatter? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines ?? 1,
      maxLength: maxlength,
      cursorColor: Colors.grey,
      style: TextStyle(
          //color: Colors.grey,
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.white : Colors.black),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //   contentPadding: EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFFB600), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Color(0xFF707070)),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        errorMaxLines: 3,
        hintText: hint,
        hintStyle: blackStyle16().copyWith(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Get.isDarkMode
                ? Colors.white
                : const Color(0xFF303030).withOpacity(0.3)),
        fillColor: Get.isDarkMode
            ? const Color(0xFF303030).withOpacity(0.8)
            : Colors.white,
        filled: true,
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        errorStyle: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      controller: controller,
      keyboardType: texttype,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errortext ?? "Empty value";
        }
        return null;
      },
      inputFormatters: [
        LengthLimitingTextInputFormatter(limitlength ?? 20),
        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
      ],
      onSaved: (value) {
        ontap?.call;
      },
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Terms And Conditions",
              style: TextStyle(fontFamily: "Poppins", fontSize: 20.sm),
            ),
            
            Text(
              "Lorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsummlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenen sumloren sumloren sumloren sumlorenmloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sumloren sum sumloren sumloren sumloren sumloren sumloren sumloren sum"),
            const SizedBox(
              height: 10,
            ),
            // Row(
            //   children: [
            //     Checkbox(
            //         activeColor: const Color(0xFFF78104),
            //         shape: const RoundedRectangleBorder(
            //             borderRadius: BorderRadius.all(Radius.circular(5.0))),
            //         value: agree,
            //         onChanged: (value) {
            //           setState(() {
            //             agree = value ?? false;
            //           });
            //         }),
            //     Flexible(
            //       child: Text(
            //         maxLines: 1,
            //         softWrap: false,
            //         'I have read and accept Terms & Conditions',
            //         style: TextStyle(fontSize: 14.sm),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: CustomNextButton(
              text: "Proceed",
              ontap: () {
                Navigator.pop(context, agree);
              },
            )),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
