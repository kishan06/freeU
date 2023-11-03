import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/PostContactus.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  // final residentialstatustexteditingcontroller = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController emailid = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();

  void UploadData() async {
    final isValid = _form.currentState?.validate();
    if (isValid!) {
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // int?
      Map<String, dynamic> updata = {
        "name": fullname.text,
        "email": emailid.text,
        "subject": subject.text,
        "message": message.text,
        "mobile_number": mobilecontroller.text
      };
      final data =
          await Storecontactusdetails().postStorecontactusdetails(updata);
      if (data.status == ResponseStatus.SUCCESS) {
        Timer(const Duration(seconds: 2),
            () => Get.offAllNamed('/EntryPoint', arguments: 0));
        showModalBottomSheet(
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
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/letter.png"),
                  SizedBox(
                    height: 28.h,
                  ),
                  Text(
                    "Thank you for contacting.\nWill reach back to you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 20.sp,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
            );
          },
        );
        // return utils.showToast(data.message);
      } else {
        return utils.showToast(data.message);
      }
    }
  }

  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        body:
            // GetBuilder<EntryPointController>(builder: (_) {
            //   return controllerEntryPoint.logedIn!
            //       ?
            Center(
          child: Form(
            key: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Contact us",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      sizedBoxHeight(30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Name*",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Your Name";
                            }
                            return null;
                          },
                          hintText: "  Enter Full Name",
                          textEditingController: fullname,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(50),
                            FilteringTextInputFormatter.allow(
                                RegExp('[a-zA-Z ]')),
                          ],
                          validatorText: "Please Enter Full Name"),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Email ID*",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomTextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please Enter Your Email";
                            }
                            if (!RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(value)) {
                              return 'Enter a Valid Email address';
                            }
                            return null;
                          },
                          hintText: "  Enter Email Address",
                          textEditingController: emailid,
                          validatorText: "Please Enter Email Address"),
                      SizedBox(height: 25.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile number*",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: Color(0xff303030)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomTextFormField(
                          texttype: TextInputType.phone,
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
                            FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                          ],
                          hintText: "  Enter Mobile Number",
                          textEditingController: mobilecontroller,
                          validatorText: "Please Enter Mobile Number"),
                      SizedBox(height: 25.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Subject*",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomTextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Subject is required';
                            }
                            return null;
                          },
                          hintText: "  Enter Subject",
                          textEditingController: subject,
                          validatorText: "Please Enter Subject"),
                      SizedBox(
                        height: 25.h,
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 16.sp),
                        cursorColor: const Color(0xFFFFB600),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12.h),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Color(0xffCCCCCC), width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Color(0xffCCCCCC), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                          hintStyle: TextStyle(
                              color: const Color(0x80000000), fontSize: 16.sp),
                          hintText: "  Message",
                        ),
                        controller: message,
                        minLines: 5,
                        maxLines: null,
                      ),
                      SizedBox(height: 40.h),
                      CustomNextButton(
                        text: "Send Now",
                        ontap: () {
                          // final isValid = _form.currentState?.validate();
                          // if (isValid!) {
                          UploadData();
                          // Timer(
                          //     const Duration(seconds: 2),
                          //     () =>
                          //         Get.offAllNamed('/EntryPoint', arguments: 0));
                          // showModalBottomSheet(
                          //   isScrollControlled: true,
                          //   context: context,
                          //   shape: const RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //     ),
                          //   ),
                          //   builder: (context) {
                          //     return Container(
                          //       margin: const EdgeInsets.symmetric(
                          //           horizontal: 16, vertical: 24),
                          //       child: Column(
                          //         mainAxisSize: MainAxisSize.min,
                          //         children: [
                          //           Image.asset("assets/images/letter.png"),
                          //           SizedBox(
                          //             height: 28.h,
                          //           ),
                          //           Text(
                          //             "Thankyou for contacting.\nWill reach back to you",
                          //             textAlign: TextAlign.center,
                          //             style: TextStyle(
                          //                 color: Color(0xFF444444),
                          //                 fontSize: 20.sp,
                          //                 fontFamily: "Poppins"),
                          //           ),
                          //         ],
                          //       ),
                          //     );
                          //   },
                          // );
                          // }
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Center(
                        child: Text(
                          "*Required Field",
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF6B6B6B)),
                        ),
                      ),
                      sizedBoxHeight(90.h)
                    ],
                  ),
                )),
              ],
            ),
          ),
        )
        // : Center(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [text20Black("Login to continue")],
        //     ),
        //   );
        // }
        // )
        );
  }
}
