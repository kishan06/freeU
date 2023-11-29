// // ignore_for_file: prefer_const_constructors, avoid_print, file_names

// import 'dart:async';

// import 'package:another_flushbar/flushbar.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:freeu/Utils/colors.dart';
// import 'package:freeu/common/Other%20Commons/customNextButton.dart';
// import 'package:freeu/common/Other%20Commons/sized_box.dart';
// import 'package:get/get_core/get_core.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:lottie/lottie.dart';
// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:timer_button/timer_button.dart';

// import '/Utils/Dialogs.dart';

// class ForgotpinPindialog extends StatefulWidget {
//   ForgotpinPindialog({Key? key}) : super(key: key);

//   @override
//   State<ForgotpinPindialog> createState() => _ForgotpinPindialog();
// }

// class _ForgotpinPindialog extends State<ForgotpinPindialog> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController? pincode = TextEditingController();
//   TextEditingController pincontroller = TextEditingController();
//   TextEditingController confirmpincontroller = TextEditingController();
//   final number = TextEditingController();
//   // final RoundedLoadingButtonController _btnController1 =
//   //     RoundedLoadingButtonController();
//   late final Future? myFuture;
//   bool isProceedBtnVisible = true;
//   bool isProceedBtnLoaderVisible = false;

//   bool _sendOTPclicked = false;
//     final GlobalKey<FormState> _form = GlobalKey<FormState>();

//   // @override
//   // void initState() {
//   //   myFuture = ResertPin().postResetPin();
//   //   super.initState();
//   // }

//   @override
//   void initState() {
//   //  setControllerValues();
//     super.initState();
//   }


//   // Future<void> checkNumberExist() async {
//   //   Map<String, dynamic> updata = {
//   //     "number": number.text,
//   //   };
//   //   final data = await LoginMethod().checkMobileExist(updata, context);
//   //   if (data.status == ResponseStatus.SUCCESS) {
//   //     setState(() {
//   //       //_otpSent = true;
//   //       _sendOTPclicked = true;
//   //     });

//   //     Map<String, dynamic> updata2 = {
//   //       "mob_number": number.text,
//   //     };
//   //     await SendOtp().SendOtpExotel(updata2);
//   //     Flushbar(
//   //       message: "Otp has been sent successfully",
//   //       duration: const Duration(seconds: 3),
//   //     ).show(context);
//   //   } else if (data.status == ResponseStatus.PRIVATE) {
//   //     Flushbar(
//   //       duration: const Duration(seconds: 2),
//   //       message: "Mobile number does not exist",
//   //     ).show(context);
//   //     //replaceLoaderWithSignInBtn();
//   //   } else {
//   //     Flushbar(
//   //       duration: const Duration(seconds: 2),
//   //       message: "Some error occured",
//   //     ).show(context);
//   //     //replaceLoaderWithSignInBtn();
//   //   }
//   // }

//   build4digitpin() {
//     return showModalBottomSheet(
//       isScrollControlled: true,
//       enableDrag: false,
//       context: context,
//       isDismissible: false,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       builder: (context) {
//         return WillPopScope(
//           onWillPop: () async => false,
//           child: Padding(
//             padding: EdgeInsets.only(
//                 bottom: MediaQuery.of(context).viewInsets.bottom),
//             child: Container(
//               margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
//               child: Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   // Positioned(
//                   //   top: -80,
//                   //   right: MediaQuery.of(context).size.width * 0.4,
//                   //   child: InkWell(
//                   //       onTap: () {
//                   //         Get.toNamed('/security_first');
//                   //       },
//                   //       child: CircleAvatar(
//                   //         backgroundColor: Colors.white,
//                   //         radius: 25,
//                   //         child: Icon(
//                   //           Icons.close,
//                   //           color: Colors.black,
//                   //         ),
//                   //       )),
//                   // ),
//                   Form(
//                     key: _formKey,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Center(
//                           child: Text(
//                             "Reset your 4 Digit Pin",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 18.sm,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         Divider(
//                           thickness: 2,
//                         ),
//                         SizedBox(
//                           height: 50.h,
//                         ),
//                         const Text("Choose a PIN of Your choice"),
//                         SizedBox(
//                           height: 15.h,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 15,
//                             right: 15,
//                           ),
//                           child: Container(
//                             width: double.infinity,
//                             height: 50.h,
//                             child: Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: TextFormField(
//                                   keyboardType: TextInputType.number,
//                                   controller: pincontroller,
//                                   textAlign: TextAlign.center,
//                                   decoration: InputDecoration(
//                                     //  helperText: '',
//                                     hintText: "",
//                                     floatingLabelBehavior:
//                                         FloatingLabelBehavior.always,
//                                     focusedBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(
//                                             width: 3.w,
//                                             color: Color(0x00000000))),
//                                   ),
//                                   inputFormatters: [
//                                     LengthLimitingTextInputFormatter(4),
//                                     FilteringTextInputFormatter.allow(RegExp('[0-9]')),
//                                   ],
//                                   validator: (val) {
//                                     if (val == null || val.isEmpty) {
//                                       return 'Pin is Empty';
//                                     }
//                                     return null;
//                                   },
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         const Text("Please Re-Enter the PIN"),
//                         SizedBox(
//                           height: 15.h,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 15,
//                             right: 15,
//                           ),
//                           child: Container(
//                             width: double.infinity,
//                             height: 50.h,
//                             child: Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.number,
//                                     controller: confirmpincontroller,
//                                     textAlign: TextAlign.center,
//                                     decoration: InputDecoration(
//                                       hintText: "",
//                                       //    helperText: '',
//                                       floatingLabelBehavior:
//                                           FloatingLabelBehavior.always,
//                                       focusedBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                               width: 3.w,
//                                               color: Color(0x00000000))),
//                                     ),
//                                     inputFormatters: [
//                                       LengthLimitingTextInputFormatter(4),
//                                       FilteringTextInputFormatter.allow(RegExp('[0-9]')),
//                                     ],
//                                     validator: (val) {
//                                       if (val == null || val.isEmpty) {
//                                         return 'Pin is Empty';
//                                       }
//                                       if (int.parse(
//                                               confirmpincontroller.text) ==
//                                           int.parse(pincontroller.text)) {
//                                         if (val.length == 4) {
//                                           return null;
//                                         } else {
//                                           return 'Pin must be 4 digit';
//                                         }
//                                       }
//                                       return 'Pin does Not Matched';
//                                     },
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Container(
//                             height: 50.h,
//                             width: double.infinity,
//                             padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: CustomNextButton(
//                               text: "Reset",
//                               ontap: () {
//                                 // UploadNewPinData();
//                               },
//                             )),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   // void UploadPinData(_btnController1) async {
//   //   Map<String, dynamic> updata = {
//   //     "mob_number": number.text,
//   //     "otp": pincode!.text,
//   //   };

//   //   // var data = await VerifyOTP().VerifydetailsWithoutToken(updata, context);

//   //   if (data.message == "0") {
//   //     setState(() {
//   //       isProceedBtnVisible = true;
//   //       isProceedBtnLoaderVisible = false;
//   //       build4digitpin();
//   //     });
//   //     // Timer(Duration(seconds: 2), () {
//   //     //   _btnController1.success();
//   //     //   Timer(Duration(seconds: 1), () {
//   //     //     build4digitpin();
//   //     //   });
//   //     // });
//   //   } else {
//   //     setState(() {
//   //       isProceedBtnVisible = true;
//   //       isProceedBtnLoaderVisible = false;
//   //     });
//   //     // _btnController1.error();
//   //     // _btnController1.reset();

//   //     return utils.showToast("Invalid OTP");
//   //   }
//   // }

//   // void _validateData(_btnController1) {
//   //  final isValid = _form.currentState?.validate();
//   //   if (pincode?.text != null && pincode!.text.isNotEmpty && isValid!) {
//   //     UploadPinData(_btnController1);
//   //   } else {
//   //     // _btnController1.error();
//   //     // Timer(Duration(seconds: 1), () {
//   //     //   _btnController1.reset();
//   //     // });
//   //     utils.showToast("please fill all required fields");
//   //     setState(() {
//   //       isProceedBtnVisible = true;
//   //       isProceedBtnLoaderVisible = false;
//   //     });
//   //   }
//   // }

//   // setControllerValues(){
//   //   Map<String, dynamic> userdata = Database().restoreUserDetails();
//   //   number.text = userdata['number'];
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: 
//       AppBar(
//         backgroundColor: AppColors.white,
//         title: Row(
//           children: [
//             sizedBoxWidth(10.w),
//             InkWell(
//               onTap: () {
//                 Get.back();
//               },
//               child: Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//               ),
//             ),
//             sizedBoxWidth(10.w),
//             Text(
//               'Forgot Pin',
//               softWrap: true,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
//             ),
//           ],
//         ),
//         elevation: 0,
//         shadowColor: Colors.black,
//         automaticallyImplyLeading: false,
//         titleSpacing: 0,
//       ),
//       body: SingleChildScrollView(child: _buildBody(context)),
//     );
//   }

//   Widget _buildBody(context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         top: 30,
//         left: 20,
//         right: 20,
//       ),
//       child: Form(
//         key: _form,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 50.h,
//             ),
//             const Text(
//               "We will send a verification OTP to\nthe Phone Number on your account in order\nto reset your password",
//               style: TextStyle(
//                 fontSize: 15,
//               ),
//             ),
//             SizedBox(
//               height: 30.h,
//             ),
//             SizedBox(
//               width: double.infinity,
//               height: 60,
//               child: Container(
//                 height: 55,
//                 width: 150,
//                 child: Stack(
//                   children: [
//                     TextFormField(
//                       readOnly: true,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Please Enter Number";
//                         } else if (value.length < 10) {
//                           return "Please Enter Correct Phone Number";
//                         }
//                         return null;
//                       },
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       controller: number,
//                       autofocus: true,
//                       cursorColor: Colors.black,
//                       keyboardType: TextInputType.number,
//                       style: TextStyle(
//                           fontFamily: 'Productsans',
//                           fontSize: 21,
//                           fontWeight: FontWeight.w400,
//                           color: Get.isDarkMode ? Colors.white : Colors.black),
//                       decoration: InputDecoration(
//                         prefixIcon: Padding(
//                           padding: EdgeInsets.only(right: 20),
//                           child: Icon(
//                             Icons.call,
//                             color: Color(0xFF008083),
//                           ),
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(width: 1.w, color: Colors.grey),
//                          // borderSide: BorderSide(color: Color(0xFF008083)),
//                         ),
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xFF008083)),
//                         ),
//                         disabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xFF008083)),
//                         ),
//                         helperText: "",
//                         hintText: 'Enter Phone Number',
//                         hintStyle: TextStyle(
//                           fontSize: 15,
//                             color: Get.isDarkMode ? Colors.white : Colors.grey),
//                        floatingLabelBehavior: FloatingLabelBehavior.always,   
//                       ),
//                       inputFormatters: [
//                         LengthLimitingTextInputFormatter(10),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(bottom: 27),
//                           child: !_sendOTPclicked
//                               ? TextButton(
//                                   style: TextButton.styleFrom(
//                                       backgroundColor: Color(0xFFF78104)),
//                                   onPressed: () {
//                                     setState(() {
//                                       if (number.text.isEmpty) {
//                                         //_otpSent = false;
//                                         Flushbar(
//                                           message: "Please Enter Phone Number",
//                                           duration: const Duration(seconds: 3),
//                                         ).show(context);
//                                       } else {
//                                         // checkNumberExist();
//                                       }
//                                     });
//                                   },
//                                   child: Text(
//                                     "Send OTP",
//                                     style: TextStyle(
//                                         fontSize: 14, color: Colors.white),
//                                   ),
//                                 )
//                               : number.text.isEmpty
//                                   ? TextButton(
//                                       style: TextButton.styleFrom(
//                                           backgroundColor: Color(0xFFF78104)),
//                                       onPressed: () {
//                                         setState(() {
//                                           if (number.text.isEmpty) {
//                                             // _otpSent = false;
//                                             Flushbar(
//                                               message:
//                                                   "Please Enter Phone Number",
//                                               duration:
//                                                   const Duration(seconds: 3),
//                                             ).show(context);
//                                           } else {
//                                             // checkNumberExist();
//                                           }
//                                         });
//                                       },
//                                       child: Text(
//                                         "Resend",
//                                         style: TextStyle(
//                                             fontSize: 14, color: Colors.white),
//                                       ),
//                                     )
//                                   : TimerButton(
//                                       disabledTextStyle:
//                                           TextStyle(color: Colors.white),
//                                       activeTextStyle:
//                                           TextStyle(color: Colors.white),
//                                       buttonType: ButtonType.textButton,
//                                       label: "Resend",
//                                       timeOutInSeconds: 60,
//                                       //mobile.text.isEmpty ?  1 : 60,
//                                       onPressed: () {
//                                         setState(() {
//                                           if (number.text.isEmpty) {
//                                             //_otpSent = false;
//                                             Flushbar(
//                                               message:
//                                                   "Please Enter Phone Number",
//                                               duration:
//                                                   const Duration(seconds: 3),
//                                             ).show(context);
//                                           } else {
//                                             // checkNumberExist();
//                                           }
//                                         });
//                                       },
//                                       disabledColor: Colors.grey,
//                                       color: Color(0xFFF78104),
//                                     ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             // TextField(
//             //   onSubmitted: (value) {
//             //     setState(() {
//             //       Map<String, dynamic> updata = {"mob_number": number.text};
//             //       SendOtp().SendOtpExotel(updata);
//             //     });
//             //     Flushbar(
//             //       message: "OTP Sent",
//             //       duration: const Duration(seconds: 3),
//             //     ).show(context);
//             //   },
//             //   // validator: (value) {
//             //   //               if (value == null || value.isEmpty) {
//             //   //                 return "Please Enter Number";
//             //   //               } else if (value.length < 10) {
//             //   //                 return "Please Enter Correct Phone Number";
//             //   //               }
//             //   //               return null;
//             //   //             },
//             //   controller: number,
//             //   keyboardType: TextInputType.number,
//             //   decoration: InputDecoration(
//             //     prefixIcon: Padding(
//             //       padding: EdgeInsets.only(right: 20),
//             //       child: Icon(
//             //         Icons.call,
//             //         color: Color(0xFF008083),
//             //       ),
//             //     ),
//             //     hintText: "Enter Phone Number",
//             //     floatingLabelBehavior: FloatingLabelBehavior.always,
//             //     focusedBorder: UnderlineInputBorder(
//             //         borderSide: BorderSide(width: 1.w, color: Colors.grey)),
//             //   ),
//             // ),
//             SizedBox(
//               height: 40.h,
//             ),
//             PinCodeTextField(
//                  validator: (value) {
//                     if (value != null && value.isEmpty) {
//                       return "Please enter verification code";
//                     } else if (value != null && value.length < 4) {
//                       return "OTP length should be atleast 4";
//                     }
//                     return null;
//                   },
//               keyboardType: TextInputType.number,
//                inputFormatters: [
//                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               length: 4,
//               obscureText: false,
//               animationType: AnimationType.fade,
//               pinTheme: PinTheme(
//                 selectedFillColor: Get.isDarkMode
//                     ? Color(0xFF303030).withOpacity(0.4)
//                     : Colors.white,
//                 inactiveFillColor: Get.isDarkMode
//                     ? Color(0xFF303030).withOpacity(0.4)
//                     : Colors.white,
//                 inactiveColor: Color(0xFF707070),
//                 activeColor: Color.fromRGBO(0, 128, 131, 1),
//                 selectedColor: Color.fromRGBO(0, 128, 131, 1),
//                 shape: PinCodeFieldShape.box,
//                 borderRadius: BorderRadius.circular(5),
//                 fieldHeight: 70,
//                 fieldWidth: 70,
//                 activeFillColor: Get.isDarkMode
//                     ? Color(0xFF303030).withOpacity(0.4)
//                     : Colors.white,
//               ),
//               animationDuration: Duration(milliseconds: 300),
//               // backgroundColor: Color.fromARGB(255, 155, 113, 113),
//               enableActiveFill: true,
//               // errorAnimationController: errorController,
//               controller: pincode,
//               onCompleted: (v) {
//                 print("Completed");
//               },
//               onChanged: (value) {
//                 print(value);
//                 setState(() {
//                   // currentText = value;
//                 });
//               },
//               beforeTextPaste: (text) {
//                 return true;
//               },
//               appContext: context,
//             ),
//             SizedBox(
//               height: 50.h,
//             ),
//             Visibility(
//               visible: isProceedBtnVisible,
//               child: SizedBox(
//                 width: double.infinity,
//                 child: CustomNextButton(
//                   text: "Proceed",
//                   ontap: () {
//                     // if(number.text.isEmpty){    
//                     //   Flushbar(
//                     //             message: "Please enter phone number",
//                     //             duration: const Duration(seconds: 3),
//                     //           ).show(context);
//                     // }
//                     setState(() {
//                       isProceedBtnVisible = false;
//                       isProceedBtnLoaderVisible = true;
//                     });
//                     // _validateData(_btnController1);
//                   },
//                 ),
//               ),
//             ),
//             Visibility(
//                 visible: isProceedBtnLoaderVisible,
//                 child: Center(child: CircularProgressIndicator()))
//             // RoundedLoadingButton(
//             //   height: 60,
//             //   resetAfterDuration: true,
//             //   resetDuration: Duration(seconds: 5),
//             //   width: MediaQuery.of(context).size.width * 1,
//             //   color: const Color.fromRGBO(247, 129, 4, 1),
//             //   successColor: const Color.fromRGBO(247, 129, 4, 1),
//             //   controller: _btnController1,
//             //   onPressed: () => _validateData(_btnController1),
//             //   valueColor: Colors.black,
//             //   borderRadius: 10,
//             //   child: Text(
//             //     "Proceed",
//             //     style: TextStyle(
//             //       color: Color(0xFFFFFFFF),
//             //       fontSize: 20,
//             //       fontFamily: 'Productsans',
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
