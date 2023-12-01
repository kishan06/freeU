import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Loginotp/loginotp.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_button/timer_button.dart';

import '../controllers/cat_controller.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  int currentIndex = 0;
  TextEditingController phoneController = TextEditingController();
  TextEditingController pincode = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  CatController countrollerCat = Get.put(CatController());

  @override
  void initState() {
    super.initState();
    phoneController.text = Get.arguments;
  }

  bool _sendOTPclicked = false;

  void Resendupload() async {
    Map<String, String> updata = {
      "contact_number": phoneController.text,
    };
    final data = await Loginotp().PostloginresendApi(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      print("otp send");
      _sendOTPclicked = true;
      return utils.showToast(data.message);
    } else {
      print("otp does not send");
      return utils.showToast(data.message);
    }
  }

  void UploadotpData() async {
    utils.loader();
    Map<String, String> updata = {
      "otp": pincode.text,
    };
    final data = await Loginotp().PostloginotpenteredApi(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print("otp correct");
      Get.toNamed("/completeprofile");
      return utils.showToast(data.message);
    } else {
      Get.back();
      print("otp incorrect");
      return utils.showToast(data.message);
    }
  }

  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "OTP sent to",
                            textAlign: TextAlign.left,
                            style: blackStyle20().copyWith(
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextFormField(
                          readOnly: true,
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Color(0xFFF2F2F2),
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
                            hintText: "8467399899",
                            hintStyle: blackStyle15()
                                .copyWith(color: Color(0xFF707070)),
                            suffixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.create_outlined,
                                  color: Color(0xff143C6D),
                                ),
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            _form.currentState?.validate();
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter a Phone Number";
                            } else if (!RegExp(
                                    r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                                .hasMatch(value)) {
                              return "Please Enter a Valid Phone Number";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 30.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Enter OTP",
                            style: blackStyle20().copyWith(
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                            child: PinCodeTextField(
                          showCursor: true,
                          cursorColor: Color(0xFFCCCCCC),
                          textStyle: TextStyle(
                              fontSize: 18.sp, color: Color(0xFF143C6D)),
                          errorTextSpace: 22,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Please Enter verification code";
                            } else if (value != null && value.length < 4) {
                              return "OTP length should be atleast 4";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          length: 4,
                          obscureText: false,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            selectedFillColor: Colors.white,
                            inactiveFillColor: Colors.white,
                            inactiveColor: Color(0xFFCCCCCC),
                            activeColor: Color(0xFFCCCCCC),
                            selectedColor: Color(0xFFCCCCCC),
                            borderWidth: 1,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 60.h,
                            fieldWidth: 60.w,
                            activeFillColor: Colors.white,
                          ),
                          animationDuration: Duration(milliseconds: 300),
                          enableActiveFill: true,
                          controller: pincode,
                          onCompleted: (v) {
                            print("Completed");
                          },
                          onChanged: (value) {
                            print(value);
                            setState(() {});
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");

                            return true;
                          },
                          appContext: context,
                        )
                            // : null,
                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Didn't you receive any code ?",
                                style: TextStyle(
                                  color: Color.fromARGB(159, 51, 51, 50),
                                  fontSize: 14.sp,
                                )),
                            // !_sendOTPclicked
                            //     ? TextButton(
                            //         child: Text(
                            //           'Resend',
                            //           style: TextStyle(
                            //             color: Color(0xFF143C6D),
                            //             fontSize: 14.sp,
                            //           ),
                            //         ),
                            //         onPressed: () {
                            //           setState(() {
                            //             _sendOTPclicked = true;
                            //           });
                            //         },
                            //       )
                            //     :
                            TimerButton(
                              disabledTextStyle: TextStyle(color: Colors.red),
                              activeTextStyle:
                                  TextStyle(color: AppColors.blue002A5B),
                              buttonType: ButtonType.textButton,
                              label: "Resend",
                              timeOutInSeconds: 60,
                              //mobile.text.isEmpty ?  1 : 60,
                              onPressed: () {
                                setState(() {
                                  if (phoneController.text.isEmpty) {
                                    Flushbar(
                                      message: "Please Enter Phone Number",
                                      duration: const Duration(seconds: 3),
                                    ).show(context);
                                  } else {
                                    // _sendOTPclicked = true;
                                    Resendupload();
                                  }
                                });
                                // pincode!.clear();
                                // Map<String, dynamic> updata2 = {
                                //   "mob_number": num
                                // };
                                // SendOtp().sendotp(updata);
                                // SendOtp().SendOtpExotel(updata2);

                                // Flushbar(
                                //   message: "Otp has been sent successfully",
                                //   duration: const Duration(seconds: 3),
                                // ).show(context);
                              },
                              disabledColor: Colors.white,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 50.h),
                        GetBuilder<EntryPointController>(builder: (
                          controller,
                        ) {
                          return
                              // controllerEntryPoint.signinApi
                              //     ? CircularProgressIndicator()
                              //     :
                              CustomNextButton(
                            text: "Verify",
                            ontap: () {
                              final isValid = _form.currentState?.validate();
                              if (isValid!) {
                                controllerEntryPoint.changeSigninApiBool();
                                // UploadotpData();
                                countrollerCat.verifyOtp(
                                    pincode.text, phoneController.text);
                              } else {
                                utils.showToast(
                                    "please fill all required fields");
                              }

                              // if (isValid!) {
                              //   Get.toNamed("/completeprofile");
                              // } else {
                              //   Get.snackbar("Error", "Please Enter OTP",
                              //       margin: EdgeInsets.all(8),
                              //       snackStyle: SnackStyle.FLOATING,
                              //       snackPosition: SnackPosition.BOTTOM);
                              // }
                            },
                          );
                        })
                      ],
                    ),
                  ))
                ],
              )),
        ),
      ),
    );
  }
}
