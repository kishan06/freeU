import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Security_pin/Postpin.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  final controllerEntryPoint = Get.put(EntryPointController());
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController currentpincontroller = TextEditingController();
  TextEditingController newpincontroller = TextEditingController();
  TextEditingController confirmpincontroller = TextEditingController();

  void UploadData() async {
    utils.loader();
    Map<String, dynamic> updata = {
      "current_pin" : int.parse(currentpincontroller.text),
      "new_pin" : int.parse(newpincontroller.text),
      "new_pin_confirmation" : int.parse(newpincontroller.text),

    };
    final data = await Securitypin().PostSecuritypin(updata);
    if (data.status == ResponseStatus.SUCCESS){
      Get.back();
      print("Security pin updated");
        Get.toNamed("/EntryPoint",
                              arguments: 0, preventDuplicates: false);
                              return utils.showToast(data.message);
    }
    else {
      Get.back();
      print("Security pin not updated");
      return utils.showToast(data.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        backgroundColor: Color(0xFFFFFFFF),
        body: GetBuilder<EntryPointController>(builder: (_) {
          return controllerEntryPoint.logedIn!
              ? Center(
                  child: Form(
                      key: _form,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Security",
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
                              children: [
                                SizedBox(
                                  height: 25.h,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Current Login PIN",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20.sp,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 14.h,
                                ),
                                CustomTextFormField(
                                    textEditingController: currentpincontroller,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(4),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]')),
                                    ],
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'Current login pin is empty';
                                      } else if (val.length != 4) {
                                        return "Pin length should be 4";
                                      }
                                      return null;
                                    },
                                    isInputPassword: true,
                                    texttype: TextInputType.phone,
                                    hintText: "Enter 4 digit login pin",
                                    validatorText: "Enter 4 digit login pin"),
                                SizedBox(
                                  height: 25.h,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "New Login PIN",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20.sp,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 14.h,
                                ),
                                CustomTextFormField(
                                  textEditingController: newpincontroller,
                                  inputFormatters: [
                                      LengthLimitingTextInputFormatter(4),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]')),
                                    ],
                                    validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'New login pin is empty';
                  } else if (val.length != 4) {
                    return "Pin length should be 4";
                  }
                  return null;
                },
                isInputPassword: true,
                texttype: TextInputType.phone,
                                    hintText: "Enter 4 digit login pin",
                                    validatorText: "Enter 4 digit login pin"),
                                SizedBox(
                                  height: 25.h,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Confirm Login PIN",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20.sp,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 14.h,
                                ),
                                CustomTextFormField(
                                  textEditingController: confirmpincontroller,
                                  isInputPassword: true,
                                  inputFormatters: [
                                      LengthLimitingTextInputFormatter(4),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]')),
                                    ],
                                   validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Confirm login pin is empty';
                  }
                  if (confirmpincontroller.text ==
                      newpincontroller.text) {
                    if (val.length == 4) {
                      return null;
                    } else {
                      return 'Confirm login pin must be 4 digit';
                    }
                  }
                  return 'Confirm login Pin does Not Matched';
                },
                texttype: TextInputType.phone,

                                    hintText: "Enter 4 digit login pin",
                                    validatorText: "Enter 4 digit login pin"),
                                SizedBox(
                                  height: 60.h,
                                ),
                                CustomNextButton(
                                    ontap: (() {
                                      // Navigator.pop(context);
                          final isValid = _form.currentState?.validate();
                          if (isValid!) {
                            UploadData();
                          } 

                                    }),
                                    text: "Update"
                                    )
                              ],
                            ),
                          )),
                        ],
                      )))
              : Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [text20Black("Login to continue")],
                  ),
                );
        }));
  }
}
