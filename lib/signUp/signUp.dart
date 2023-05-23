import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/Utils/global_function.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/controllers/network_api.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/viewModel/auth_post.dart';

import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  EntryPointController entryPointController = Get.put(EntryPointController());

  NetworkApi networkApi = NetworkApi();

  bool design = false;
  bool _passwordVisible = false;
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
      final alphaRegex = RegExp('(?=.*[A-Z])(?=.*[!@#\$%^&*])');

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
          height: Get.size.height * 0.8,
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
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
        return Future.value(false);
      },
      child: Scaffold(
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => Get.focusScope!.unfocus(),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign up",
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your full name",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextFormField(
                                textEditingController: nameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter your name';
                                  }
                                  return null;
                                },
                                hintText: "Full Name*",
                                validatorText: "Full Name"),
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your email address",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextFormField(
                              textEditingController: emailController,
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
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your phone number",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextFormField(
                                textEditingController: phonecontroller,
                                //maxLength: 10,
                                validator: (value) {
                                  if (value == value.isEmpty) {
                                    return 'Mobile number is required';
                                  } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                                      .hasMatch(value)) {
                                    return 'Enter valid mobile number';
                                  }
                                  // v3 = true;
                                  return null;
                                },
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]')),
                                ],
                                texttype: TextInputType.phone,
                                hintText: "Phone Number*",
                                validatorText: "Phone Number"),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your password",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
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
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              keyboardType: TextInputType.text,
                              controller: passwordcontroller,
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Color(0xFF707070), width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
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
                                    color: Color(0x80000000),
                                    fontSize: 15.sm,
                                    fontFamily: "Poppins"),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Enter your password',
                                suffixIcon: GestureDetector(
                                  onTap: () => setState(() =>
                                      _passwordVisible = !_passwordVisible),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _passwordVisible
                                          ? Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 20.0),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_outlined,
                                                    color: Color(0xFF959595),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 20.0),
                                                  child: SvgPicture.asset(
                                                    "assets/images/eye-closed-svgrepo-com.svg",
                                                    color: Color(0XFF959595),
                                                  ),
                                                ),
                                              ],
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
                          ],
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
                                  ? Icon(
                                      Icons.check,
                                      color: Color(0xff143C6D),
                                      size: 15,
                                    )
                                  : Text(
                                      '  X',
                                      style: TextStyle(color: Colors.red),
                                    ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Has at least 8 characters',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp,
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
                                  ? const Icon(
                                      Icons.check,
                                      color: Color(0xff143C6D),
                                      size: 15,
                                    )
                                  : const Text(
                                      '  X',
                                      style: TextStyle(color: Colors.red),
                                    ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Has at least 1 uppercase letter and symbol',
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
                                  ? Icon(
                                      Icons.check,
                                      color: Color(0xff143C6D),
                                      size: 15,
                                    )
                                  : const Text(
                                      '  X',
                                      style: TextStyle(color: Colors.red),
                                    ),
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
                        const SizedBox(
                          height: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your password",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
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
                          ],
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
                                      unselectedWidgetColor: Color(0xFF143C6D),
                                    ),
                                    child: Checkbox(
                                      activeColor: const Color(0xFF143C6D),
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
                                      Text(
                                        "Terms & Conditions*",
                                        style: TextStyle(
                                          fontSize: 14.sm,
                                          color: Color(0xff143C6D),
                                          // decoration:TextDecoration.underline
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
                  SizedBox(
                    height: 30.h,
                  ),
                  Visibility(
                    visible: isSignupBtnVisible,
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: GetBuilder<EntryPointController>(
                            builder: (controller) {
                              return entryPointController.createAccApi == true
                                  ? Center(child: CircularProgressIndicator())
                                  : CustomNextButton(
                                      text: "Sign up",
                                      ontap: () async {
                                        final isValid =
                                            _form.currentState?.validate();
                                        if (isValid == false) {
                                          Get.snackbar("Error",
                                              "Please Enter All Required Fields",
                                              margin: EdgeInsets.all(8),
                                              snackStyle: SnackStyle.FLOATING,
                                              snackPosition:
                                                  SnackPosition.BOTTOM);
                                        } else if (design != true) {
                                          Get.snackbar("Error",
                                              "Please Accept Terms & Conditions",
                                              margin: EdgeInsets.all(8),
                                              snackStyle: SnackStyle.FLOATING,
                                              snackPosition:
                                                  SnackPosition.BOTTOM);
                                        } else if (isValid == true &&
                                            design == true) {
                                          entryPointController
                                              .changecreateAccApiBool();
                                          Map<String, String> myData = {
                                            "name": nameController.text,
                                            "email": emailController.text,
                                            "contact_number":
                                                phonecontroller.text,
                                            "password": passwordcontroller.text,
                                            "password_confirmation":
                                                confirmpasscontroller.text
                                          };
                                          SignUpPost signUpPost = SignUpPost();
                                          var resp = await signUpPost
                                              .signUpApi(myData);

                                          entryPointController
                                              .changecreateAccApiBool();
                                          if (resp.status ==
                                              ResponseStatus.SUCCESS) {
                                            Utils.showToast(
                                                "Account created successfully");
                                            Future.delayed(Duration(seconds: 2),
                                                () {
                                              Get.toNamed("/login");
                                            });
                                          } else {
                                            Utils.showToast(resp.message);
                                          }
                                        }
                                      },
                                    );
                            },
                          )),
                    ),
                  ),
                  Visibility(
                      visible: isSignupBtnLoaderVisible,
                      child: const Center(child: CircularProgressIndicator())),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )),
          ]),
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
