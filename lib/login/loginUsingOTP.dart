import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/Loginotp/loginotp.dart';
import 'package:get/get.dart';

class LoginUsingOTP extends StatefulWidget {
  const LoginUsingOTP({super.key});

  @override
  State<LoginUsingOTP> createState() => _LoginUsingOTPState();
}

class _LoginUsingOTPState extends State<LoginUsingOTP> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final tecPhone = TextEditingController();

  bool isValidPhoneNumber(String phoneNumber) {
    final RegExp phoneNumberExpression = RegExp(r"^0{10}$");

    return !phoneNumberExpression.hasMatch(phoneNumber);
  }

  bool _otpSent = false;

  void Uploadata() async {
    utils.loader();
    final isValid = _form.currentState?.validate();
    if (isValid!) {
      Map<String, String> updata = {
        "contact_number": tecPhone.text,
      };
      final data = await Loginotp().PostloginotpApi(updata);
      if (data.status == ResponseStatus.SUCCESS) {
        Get.back();
        print("otp send");
        _otpSent = true;
        Get.toNamed('/phoneverification', arguments: tecPhone.text);

        return utils.showToast(data.message);
      } else {
        Get.back();
        print("otp does not send");
        return utils.showToast(data.message);
      }
    } else {
      return Flushbar(
        message: "Please fill all fields",
        duration: const Duration(seconds: 3),
      ).show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Form(
              key: _form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "Login with OTP",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 25.sp),
                      ),
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 40.h),
                        SvgPicture.asset('assets/images/loginusingotp.svg'),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Please enter your mobile number",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18.sp,
                                  color: Color(0xFF000000)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30.w,
                              //   height: 20.h,
                              child: TextFormField(
                                readOnly: true,
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF143C6D)),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF143C6D)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF143C6D)),
                                    ),
                                    hintText: "+91",
                                    hintStyle: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.black,
                                        fontFamily: "Poppins")),
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Expanded(
                              // width: 190.w,
                              //  height: 55.h,
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: tecPhone,
                                style: TextStyle(
                                    fontSize: 16.sp, fontFamily: "Poppins"),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  LengthLimitingTextInputFormatter(10),
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]')),
                                ],
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(fontSize: 12.sp),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF143C6D)),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF143C6D)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF143C6D)),
                                  ),
                                  hintText: "",
                                  //helperText: ""
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter mobile number";
                                  } else if (value.length < 10) {
                                    return "Please enter correct mobile number";
                                  } else if (!isValidPhoneNumber(value)) {
                                    return 'Phone number cannot contain 10 zeros';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomNextButton(
                          text: "Next",
                          ontap: () {
                            final isValid = _form.currentState?.validate();
                            if (tecPhone.text.isEmpty) {
                              _otpSent = false;
                              Flushbar(
                                message: "Please enter phone number",
                                duration: const Duration(seconds: 3),
                              ).show(context);
                            } else {
                              Uploadata();
                            }
    
                            // if (isValid!) {
                            //   setState(() {
                            //     Get.toNamed('/phoneverification',
                            //         arguments: tecPhone.text);
                            //   });
                            // } else {
                            //   Get.snackbar(
                            //       "Error", "Please Enter Valid Phone Number",
                            //       margin: EdgeInsets.all(8),
                            //       snackStyle: SnackStyle.FLOATING,
                            //       snackPosition: SnackPosition.BOTTOM);
                            // }
                          },
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
