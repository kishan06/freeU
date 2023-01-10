import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
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
  bool _isEmailValid = false;
  bool isSignupBtnVisible = true;
  bool isSignupBtnLoaderVisible = false;

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailidcontroller = TextEditingController();
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
        return Future.value(false);
      },
      child: Scaffold(
          appBar:
              const CustomSignupAppBar(titleTxt: "Sign up", bottomtext: false),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        FullnameTextFormField(
                          controller: fullNameController,
                          keyboardType: TextInputType.text,
                          hint: "Full Name*",
                          errortext: "Please Enter Full Name",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.grey,
                          style: TextStyle(
                              fontFamily: 'Productsans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: emailidcontroller,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            errorMaxLines: 3,
                            hintText: "Email Id*",
                            hintStyle: blackStyle(context).copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Color(0xFF303030).withOpacity(0.3)),
                            fillColor: Get.isDarkMode
                                ? Color(0xFF303030).withOpacity(0.8)
                                : Colors.white,
                            filled: true,
                            errorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            errorStyle: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
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
                          onSaved: (value) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onChanged: (value) => onPasswordChnage(value),

                          cursorColor: Colors.grey,
                          style: TextStyle(
                              //color: Colors.grey,
                              fontFamily: 'Productsans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black),
                          keyboardType: TextInputType.text,
                          controller: passwordcontroller,
                          obscureText:
                              !_passwordVisible, //This will obscure text dynamically
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            errorMaxLines: 3,
                            hintStyle: blackStyle(context).copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Color(0xFF303030).withOpacity(0.3)),
                            fillColor: Get.isDarkMode
                                ? Color(0xFF303030).withOpacity(0.8)
                                : Colors.white,
                            filled: true,
                            errorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            errorStyle: const TextStyle(
                              fontSize: 16.0,
                            ),
                            hintText: 'Password*',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
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
                              child: _isPasswordEightCar
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 15,
                                    )
                                  : Icon(
                                      Icons.check,
                                      color: Get.isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      size: 15,
                                    ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Has at least 8 characters',
                                style: TextStyle(
                                    fontFamily: 'Productsans',
                                    fontSize: 12,
                                    color: Get.isDarkMode
                                        ? Colors.white
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
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 15,
                                    )
                                  : Icon(
                                      Icons.check,
                                      color: Get.isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      size: 15,
                                    ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Has at least 1 uppercase letter & symbol',
                                style: TextStyle(
                                    fontFamily: 'Productsans',
                                    fontSize: 12,
                                    color: Get.isDarkMode
                                        ? Colors.white
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
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 15,
                                    )
                                  : Icon(
                                      Icons.check,
                                      color: Get.isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      size: 15,
                                    ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Has a number',
                                style: TextStyle(
                                    fontFamily: 'Productsans',
                                    fontSize: 12,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          cursorColor: Colors.grey,
                          style: const TextStyle(
                            //color: Colors.grey,
                            fontFamily: 'Productsans',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          keyboardType: TextInputType.text,
                          controller: confirmpasscontroller,
                          obscureText:
                              !_confirmpasswordVisible, //This will obscure text dynamically
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            errorMaxLines: 3,
                            hintStyle: blackStyle(context).copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Color(0xFF303030).withOpacity(0.3)),
                            fillColor: Get.isDarkMode
                                ? Color(0xFF303030).withOpacity(0.8)
                                : Colors.white,
                            filled: true,
                            errorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            errorStyle: const TextStyle(
                              fontSize: 16.0,
                            ),

                            hintText: 'Confirm Password*',
                            // Here is key idea
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _confirmpasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _confirmpasswordVisible =
                                      !_confirmpasswordVisible;
                                });
                              },
                            ),
                          ),
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
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
                          setState(() {
                            isSignupBtnVisible = false;
                            isSignupBtnLoaderVisible = true;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Visibility(
                    visible: isSignupBtnLoaderVisible,
                    child: Center(child: CircularProgressIndicator())),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )),
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
          fontFamily: 'Productsans',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.white : Colors.black),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //   contentPadding: EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
        errorMaxLines: 3,
        hintText: hint,
        hintStyle: blackStyle(context).copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Get.isDarkMode
                ? Colors.white
                : Color(0xFF303030).withOpacity(0.3)),
        fillColor:
            Get.isDarkMode ? Color(0xFF303030).withOpacity(0.8) : Colors.white,
        filled: true,
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
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
