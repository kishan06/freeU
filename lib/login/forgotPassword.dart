import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/Forgotpassword/forgotpassword.dart';
import 'package:get/get.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  int currentIndex = 0;
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

   bool isValidPhoneNumber(String phoneNumber) {
    final RegExp phoneNumberExpression = RegExp(r"^0{10}$");

    return !phoneNumberExpression.hasMatch(phoneNumber);
  }


    void Uploadata() async {
    utils.loader();
    final isValid = _form.currentState?.validate();
    if (isValid!) {
      Map<String, String> updata = {
        "contact_number": phoneController.text,
      };
      final data = await Forgotpasswordotp().PostforgotpassotpApi(updata);
      if (data.status == ResponseStatus.SUCCESS) {
        Get.back();
        print("otp send");
Get.toNamed('/otpverification',
                                    arguments: phoneController.text);
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
    return Scaffold(
      appBar:
          CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: Form(
            key: _form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 25.sp,
                          color: Color(0XFF0F0C0C),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Please enter your registered phone number to receive otp",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xFF272424),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone number",
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Color(0xFF303030),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Column(
                            children: [
                              CustomTextFormField(
                                  texttype: TextInputType.phone,
                                  textEditingController: phoneController,
                                  inputFormatters: <TextInputFormatter>[
                                    // FilteringTextInputFormatter.digitsOnly,
                                    FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                                    LengthLimitingTextInputFormatter(10),
                                  ],
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
                                  hintText: "Enter your Phone Number",
                                  validatorText: "Enter your Phone Number"),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'OTP Sent to registered mobile number',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF143C6D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          CustomNextButton(
                            text: "Proceed",
                            ontap: () {
                              final isValid = _form.currentState?.validate();
                              // if (isValid!) {
                              //   Get.toNamed('/otpverification',
                              //       arguments: phoneController.text);
                              // } else {
                              //   Get.snackbar(
                              //       "Error", "Please Enter Phone Number",
                              //       margin: EdgeInsets.all(8),
                              //       snackStyle: SnackStyle.FLOATING,
                              //       snackPosition: SnackPosition.BOTTOM);
                              // }
                              if (phoneController.text.isEmpty) {
                            Flushbar(
                              message: "Please Enter Phone Number",
                              duration: const Duration(seconds: 3),
                            ).show(context);
                          } else {
                            Uploadata();
                          }
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
