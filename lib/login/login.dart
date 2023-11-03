import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/Global.dart';
import 'package:freeu/Utils/global_function.dart';
import 'package:freeu/Utils/textStyle.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/ViewModel/Profile/Getprofile.dart';
import 'package:freeu/ViewModel/auth_post.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controllerEntryPoint = Get.put(EntryPointController());
  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  DateTime timebackPressed = DateTime.now();
  TextEditingController pincontroller = TextEditingController();

  Future<T?> bottomsheetfingerprint<T>(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          height: 400.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "One-Touch",
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                sizedBoxHeight(15.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Use your fingerprint to easily log in!",
                      style:
                          TextStyle(fontSize: 20.sp, color: Color(0XFF272424)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 64,
                        height: 77,
                        child: SvgPicture.asset(
                          'assets/images/fingertouch.svg',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Touch the fingerprint sensor",
                          style: TextStyle(
                              fontSize: 18.sp, color: Color(0XFF272424)),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0XFF707070),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          bottomsheetpin(context);
                        },
                        child: Text(
                          "Login with Pin",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF143C6D),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bottomsheetpin(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "4 Digit Pin",
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF0F0C0C),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(15.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Use your 4 Digit Pin to easily log in!",
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: pincontroller,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        hintText: 'Enter PIN',
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(color: Color(0xFF707070), width: 1.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(color: Color(0xFF707070), width: 1.0),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF303030).withOpacity(0.3)),
                        errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                        ),
                        errorStyle: const TextStyle(
                          fontSize: 16.0,
                        ),
                        suffixIcon: Container(
                          padding: EdgeInsets.only(right: 25),
                          width: 10,
                          height: 10,
                          child: SvgPicture.asset(
                            'assets/images/nextbuttonnew.svg',
                          ),
                        ),
                      ),
                      maxLength: 4,
                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Pin is Empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Forgot PIN?",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xFF143C6D),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timebackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timebackPressed = DateTime.now();

        if (isExitWarning) {
          final message = "Press back again to exit";
          Fluttertoast.showToast(
            msg: message,
            fontSize: 18.sp,
          );
          return false;
        } else {
          Fluttertoast.cancel();
          SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => Get.focusScope!.unfocus(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: Center(
                  child: Form(
                    key: _form,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.toNamed(
                                  '/EntryPoint',
                                  arguments: 0,
                                );
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                  color: Color(0xFF143C6D),
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/freeulogin.png',
                          alignment: Alignment.center,
                          width: 200.w,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "Welcome to FreeU",
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Sign in to continue.",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email / Phone",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextFormField(
                              textEditingController: emailPhoneController,
                              hintText: "Enter Email or Phone Number",
                              validatorText: "Enter Email or Phone Number",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Email or Phone Number";
                                }
                                return null;
                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.toNamed('/loginUsingOTP');
                              },
                              child: Text(
                                'Login Using OTP',
                                style: blackStyle12().copyWith(
                                  color: Color(0xFF143C6D),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  color: Color(0xff303030)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextFormField(
                                textEditingController: passwordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Password";
                                  }
                                  return null;
                                },
                                isInputPassword: true,
                                hintText: "Enter Password",
                                validatorText: "Please Enter Password")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.toNamed('/forgotPassword');
                              },
                              child: Text(
                                'Forgot Password?',
                                textAlign: TextAlign.end,
                                style: blackStyle12().copyWith(
                                  color: Color(0xFF143C6D),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        GetBuilder<EntryPointController>(
                          builder: (
                            controller,
                          ) {
                            return controllerEntryPoint.signinApi == true
                                ? CircularProgressIndicator()
                                : CustomNextButton(
                                    ontap: () async {
                                      final isValid =
                                          _form.currentState?.validate();
                                      if (isValid!) {
                                        controllerEntryPoint
                                            .changeSigninApiBool();
                                        Map<String, String> myLoginData = {
                                          "user": emailPhoneController.text,
                                          "password": passwordcontroller.text,
                                        };
                                        LogInPost logInPost = LogInPost();
                                        var resp = await logInPost.LogIpApi(
                                            myLoginData);
                                        print(resp.status);
                                        print('Api msg : ${resp.message}');

                                        if (resp.status ==
                                            ResponseStatus.SUCCESS) {
                                          print("api response is ${resp.data}");
                                          Utils.showToast("Signin successful");
                                          GetProfile().GetProfileAPI();
                                          Future.delayed(Duration(seconds: 2),
                                              () async {
                                            final SharedPreferences prefs =
                                                await SharedPreferences
                                                    .getInstance();

                                            await prefs.setBool(
                                                'LogedIn', true);

                                            Map<String, dynamic> res =
                                                resp.data;
                                            print(res);
                                            await prefs.setString(
                                                'token', res["token"]);
                                            await prefs.setString(
                                                'name', res["data"]["name"]);
                                            myusername = res["data"]["name"];
                                            token = res["token"];
                                            print("token is $token");

                                            // Map<String,dynamic> store = {
                                            //   'email' : res['email'],
                                            //   'name' : res['mane'],
                                            //   'contact_number' : res['contact_number'],
                                            // };

                                            // prefs.setString("user_id", )
                                            Get.toNamed("/EntryPoint",
                                                arguments: 0);
                                          });
                                          controllerEntryPoint
                                              .changeSigninApiBool();
                                        } else {
                                          Utils.showToast(resp.message);
                                          print('Api msg : ${resp.message}');
                                          controllerEntryPoint
                                              .changeSigninApiBool();
                                        }
                                      } else {
                                        Get.snackbar("Error",
                                            "Please Enter Login Credentials",
                                            margin: EdgeInsets.all(8),
                                            snackStyle: SnackStyle.FLOATING,
                                            snackPosition:
                                                SnackPosition.BOTTOM);
                                      }
                                    },
                                    text: 'Sign In',
                                  );
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an account?",
                              style: blackStyle14().copyWith(
                                color: Color(0x9F333332),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('/signup');
                              },
                              child: Text(
                                'Create account',
                                style: blackStyle14().copyWith(
                                  color: Color(0xFF143C6D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
