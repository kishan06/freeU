import 'dart:async';
import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/ExtractPath.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/CustomdateTextformfield.dart';
import 'package:freeu/common/Other%20Commons/PhotoSelectionBottomSheet.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/KYC_v2/Postcompanykyc.dart';
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;
import 'package:freeu/Utils/Dialogs.dart';

class Otherkycpage extends StatefulWidget {
  Otherkycpage({super.key, this.showAppbar});
  bool? showAppbar;

  @override
  State<Otherkycpage> createState() => _OtherkycpageState();
}

class _OtherkycpageState extends State<Otherkycpage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final mobileNumber = TextEditingController();
  final emailIdcontoller = TextEditingController();
  final occupationcontroller = TextEditingController();
  final placebirthcontroller = TextEditingController();
  final grossannualincome = TextEditingController();
  final proofidentpanController = TextEditingController();

  final addressproofController = TextEditingController();

  final certificateregistrationController = TextEditingController();

  final listauthorisedsignController = TextEditingController();

  final pancardcopysignatoryController = TextEditingController();
  final aadharcopysignatoryController = TextEditingController();

  // final latestincometaxContoller = TextEditingController();
  final copyofcmlController = TextEditingController();
  final latestincomereturnController = TextEditingController();

  final copyofauditedbalancesheetController = TextEditingController();
  final passportphotoauthorisedsignatures = TextEditingController();
  final cancelledchequeController = TextEditingController();
  TextEditingController datecontroller = TextEditingController();

  DateTime? _selectedDate;
  // String? datecontroller;

  String? proofidentitypanimage;
  String? addressprofimage;
  String? certificateregistrationimage;
  String? listauthorisedsignimage;
  String? pancardsignatoryimage;
  String? aadharsignatoryimage;
  String? cancelledchequeimage;
  String? copyofcmlimage;
  String? latestincometaxretirnimage;
  String? copyofbalancesheetimage;
  String? passportphotoauthorizedsignimage;

  bool _isEmailValid = false;

  List<Widget> panCardAuthorizedWidget = [];
  final List<TextEditingController> panCardAuthorizedList = [];
  final List<File?> panCardAuthorizedFileList = [];

  List<Widget> aadharCardAuthorizedWidget = [];
  final List<TextEditingController> aadharCardAuthorizedList = [];
  final List<File?> aadharCardAuthorizedFileList = [];

  List<Widget> passportAuthorizedWidget = [];
  final List<TextEditingController> passportAuthorizedList = [];
  final List<File?> passportAuthorizedFileList = [];

  onEmailChange(String email) {
    setState(() {
      final emailRegEx = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

      if (emailRegEx.hasMatch(email)) {
        _isEmailValid = true;
      } else {
        _isEmailValid = false;
      }
    });
  }

  // void _presentDatePicker() {
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime.now(),
  //           firstDate: DateTime(1922),
  //           lastDate: DateTime.now())
  //       .then((pickedDate) {
  //     if (pickedDate == null) {
  //       return setState(() {
  //         datecontroller = '';
  //       });
  //     }
  //     setState(() {
  //       _selectedDate = pickedDate;
  //       // datecontroller =
  //       //     "${_selectedDate!.day.toString()}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year.toString().padLeft(2, '0')}";
  //       datecontroller =
  //           "${_selectedDate!.year.toString().padLeft(2, '0')}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString()}";
  //     });
  //   });
  // }

  void _presentDatePicker() {
    DateTime yesterday = DateTime.now().subtract(Duration(days: 1));

    showDatePicker(
      context: context,
      initialDate: yesterday,
      firstDate: DateTime(1922),
      lastDate: yesterday,
    ).then((pickedDate) {
      if (pickedDate == null) {
        return setState(() {
          datecontroller.text = '';
        });
      }
      setState(() {
        _selectedDate = pickedDate;
        datecontroller.text =
            "${_selectedDate!.year.toString().padLeft(2, '0')}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString()}";
      });
    });
  }

  List<String> fileList = [];

  otherapicall() async {
    utils.loader();
    fileList.add(proofidentitypanimage!);
    fileList.add(addressprofimage!);
    fileList.add(certificateregistrationimage!);
    fileList.add(listauthorisedsignimage!);

    fileList.add(cancelledchequeimage!);
    fileList.add(copyofcmlimage!);
    fileList.add(latestincometaxretirnimage!);
    fileList.add(copyofbalancesheetimage!);

    List<MultipartFile> multipartFiles = [];

    List<MultipartFile> panCardImagesList = [];

    List<MultipartFile> coparcenrsaddharpassImagesList = [];

    List<MultipartFile> passportImagesList = [];

    for (var file in panCardAuthorizedFileList.where((file) => file != null)) {
      panCardImagesList.add(
        await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),
      );
    }

    for (var file
        in aadharCardAuthorizedFileList.where((file) => file != null)) {
      coparcenrsaddharpassImagesList.add(
        await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),
      );
    }
    for (var file in passportAuthorizedFileList.where((file) => file != null)) {
      passportImagesList.add(
        await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),
      );
    }

    for (String file in fileList) {
      multipartFiles.add(
        await MultipartFile.fromFile(
          file,
          filename: path.basename(file),
        ),
      );
    }

    // final isValid = _form.currentState?.validate();
    // if (isValid!) {
    // Map<String, dynamic> updata = {
    FormData formdata = FormData.fromMap({
      "name": namecontroller.text,
      "mobile_number": mobileNumber.text,
      "email": emailIdcontoller.text,
      "dob": datecontroller.text,
      "occupation_business": occupationcontroller.text,
      "place_of_birth": placebirthcontroller.text,
      "gross_annual_income": grossannualincome.text,
      "proof_of_identity_pan_card": multipartFiles[0],
      "addressproof_bank_statement_or_utility_bill": multipartFiles[1],
      "certificate_of_registration": multipartFiles[2],
      "list_of_authorised_signatories": multipartFiles[3],
      "pan_card_copy_of_authorized_signatory[]": panCardImagesList,
      "aadhar_card_copy_of_authorized_signatory[]":
          coparcenrsaddharpassImagesList,
      "cancelled_cheque": multipartFiles[4],
      "cml_copy": multipartFiles[5],
      "latest_income_tax_return": multipartFiles[6],
      "copy_of_audited_balance_sheet_for_the_last_2_F_Y": multipartFiles[7],
      "passport_photo_signed_authorized_signatories_or_directors[]":
          passportImagesList,
    });
    final data = await KycV2Apis().Otherkycdetails(formdata);
    print(formdata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print(data.message);
      // Timer(const Duration(seconds: 2), () => Get.back());
      Timer(const Duration(seconds: 2),
          () => Get.offAllNamed('/EntryPoint', arguments: 0));
      print("other kyc completed");
      return utils.showToast(data.message);
    } else {
      Get.back();
      return utils.showToast(data.message);
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    if (panCardAuthorizedWidget.isEmpty) {
      panCardAuthorizedList.add(TextEditingController());
      panCardAuthorizedFileList.add(null);
      panCardAuthorizedWidget.add(pancardformfield(0));
    }

    if (aadharCardAuthorizedWidget.isEmpty) {
      aadharCardAuthorizedList.add(TextEditingController());
      aadharCardAuthorizedFileList.add(null);
      aadharCardAuthorizedWidget.add(pancardformfield(0));
    }

    if (passportAuthorizedWidget.isEmpty) {
      passportAuthorizedList.add(TextEditingController());
      passportAuthorizedFileList.add(null);
      passportAuthorizedWidget.add(pancardformfield(0));
    }

    return GestureDetector(
       onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: widget.showAppbar ?? true
            ? CustomSignupAppBar(
                titleTxt: "",
                bottomtext: false,
              )
            : null,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Form(
            key: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Other KYC",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 25.sp),
                ),
                sizedBoxHeight(10.h),
                Text(
                  "Name",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  hintText: "Please Enter Name",
                  validatorText: "Please Enter Name",
                  textEditingController: namecontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter valid name";
                    }
                    return null;
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(20),
                    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]')),
                  ],
                ),
                sizedBoxHeight(20.h),
                Text(
                  "Mobile Number",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                  texttype: TextInputType.number,
                  hintText: "Please Enter Phone Number",
                  validatorText: "Please Enter Phone Number",
                  textEditingController: mobileNumber,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length != 10) {
                      return "Enter valid phone number";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Email ID",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                  hintText: "Please Enter Email Id",
                  validatorText: "Please Enter Email Id",
                  textEditingController: emailIdcontoller,
                  validator: (value) {
                    // if (value == null ||
                    //     value.isEmpty ||
                    //     _isEmailValid == false) {
                    //   return "Enter correct email id";
                    // }
                    // return null;
                    if (value!.isEmpty) {
                      return 'Enter your email address';
                    }
                    if (!RegExp(
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                        .hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                  onInput: (p0) {
                    onEmailChange(p0);
                  },
                ),
                SizedBox(height: 20.h),
                Text(
                  "Date of Birth",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                // GestureDetector(
                //   onTap: () {
                //     _presentDatePicker();
                //   },
                //   child: Container(
                //     height: 45.h,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //       border: Border.all(
                //         color: Color(0xffCCCCCC),
                //       ),
                //       borderRadius: BorderRadius.circular(10.r),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Row(
                //           children: [
                //             sizedBoxWidth(20.w),
                //             Text(_selectedDate == null ? '' : '$datecontroller'),
                //           ],
                //         ),
                //         Row(
                //           children: [
                //             Icon(Icons.calendar_month_outlined),
                //             sizedBoxWidth(10.w)
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
    
                CustomDateTextFormField(
                  hintText: "Please Select Date Of Birth",
                  validatorText: "Please Select Date Of Birth",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please select date of birth";
                    }
                    return null;
                  },
                  textEditingController: datecontroller,
                  ontap: () => _presentDatePicker(),
                ),
    
                SizedBox(height: 20.h),
                Text(
                  "Occupation",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  hintText: "Please Enter Occupation",
                  validatorText: "Please Enter Occupation",
                  textEditingController: occupationcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter valid occupation";
                    }
                    return null;
                  },
                   inputFormatters: [
                                    LengthLimitingTextInputFormatter(20),
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[a-zA-Z ]')),
                   ]
                ),
                sizedBoxHeight(20.h),
                Text(
                  "Place of Birth",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  hintText: "Please Enter Place of Birth",
                  validatorText: "Please Enter Place of Birth",
                  textEditingController: placebirthcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter valid place of birth";
                    }
                    return null;
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(20),
                    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]')),
                  ],
                ),
                sizedBoxHeight(20.h),
                Text(
                  "Gross annual income",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                  texttype: TextInputType.number,
                  hintText: "Please Enter Gross Annual Income",
                  validatorText: "Please Enter Gross Annual Income",
                  textEditingController: grossannualincome,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter valid gross annual income";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Proof of identity pan card",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: proofidentpanController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(
                            context,
                            (result) {
                              print("File path is $result");
                              proofidentitypanimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              proofidentpanController.text = filenameresult;
                            },
                          );
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Addressproof bank statement or utility bill",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: addressproofController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(context, (result) {
                            setState(() {
                              print("File path is $result");
                              addressprofimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              addressproofController.text = filenameresult;
                            });
                          });
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                sizedBoxHeight(10.h),
                Text(
                  "Certificate of registration",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: certificateregistrationController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(
                            context,
                            (result) {
                              print("File path is $result");
                              certificateregistrationimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              certificateregistrationController.text =
                                  filenameresult;
                            },
                          );
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "List of authorised signatories",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: listauthorisedsignController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(context, (result) {
                            setState(() {
                              print("File path is $result");
                              listauthorisedsignimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              listauthorisedsignController.text = filenameresult;
                            });
                          });
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                sizedBoxHeight(10.h),
                Text(
                  "Pan card copy of authorized signatory",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
    
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: panCardAuthorizedWidget.length,
                      // pancardrowlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            pancardformfield(index),
                            sizedBoxHeight(10.h)
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        panCardAuthorizedWidget.length > 1
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    panCardAuthorizedFileList.removeLast();
                                    panCardAuthorizedList.removeLast();
                                    panCardAuthorizedWidget.removeLast();
                                  });
                                },
                                child: Text(
                                  "Remove",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: 'Poppins',
                                    color: Color(0xff000000),
                                  ),
                                ),
                              )
                            : SizedBox(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              panCardAuthorizedList.add(TextEditingController());
                              panCardAuthorizedFileList.add(null);
                              panCardAuthorizedWidget.add(pancardformfield(0));
                            });
                          },
                          child: Text(
                            "Add more",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
    
                sizedBoxHeight(10.h),
                Text(
                  "Aadhar card copy of authorized signatory",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: aadharCardAuthorizedWidget.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            aadharcardformfield(index),
                            sizedBoxHeight(10.h)
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        aadharCardAuthorizedWidget.length > 1
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    aadharCardAuthorizedFileList.removeLast();
                                    aadharCardAuthorizedList.removeLast();
                                    aadharCardAuthorizedWidget.removeLast();
                                  });
                                },
                                child: Text(
                                  "Remove",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: 'Poppins',
                                    color: Color(0xff000000),
                                  ),
                                ),
                              )
                            : SizedBox(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              aadharCardAuthorizedList
                                  .add(TextEditingController());
                              aadharCardAuthorizedFileList.add(null);
                              aadharCardAuthorizedWidget.add(pancardformfield(0));
                            });
                          },
                          child: Text(
                            "Add more",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                sizedBoxHeight(10.h),
                Text(
                  "Cancelled cheque",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: cancelledchequeController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(context, (result) {
                            setState(() {
                              print("File path is $result");
                              cancelledchequeimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              cancelledchequeController.text = filenameresult;
                            });
                          });
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                sizedBoxHeight(10.h),
    
                Text(
                  "Cml copy",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: copyofcmlController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(context, (result) {
                            setState(() {
                              print("File path is $result");
                              copyofcmlimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              copyofcmlController.text = filenameresult;
                            });
                          });
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                sizedBoxHeight(10.h),
                Text(
                  "Latest income tax return",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: latestincomereturnController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(context, (result) {
                            setState(() {
                              print("File path is $result");
                              latestincometaxretirnimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              latestincomereturnController.text = filenameresult;
                            });
                          });
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                sizedBoxHeight(10.h),
    
                Text(
                  "Copy of audited balance sheet for last",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please add image";
                    }
                    return null;
                  },
                  readOnly: true,
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: copyofauditedbalancesheetController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x80000000),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                    hintText: "",
                    suffixIcon: IconButton(
                        onPressed: () {
                          ImageUploadBottomSheet().showModal(context, (result) {
                            setState(() {
                              print("File path is $result");
                              copyofbalancesheetimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              copyofauditedbalancesheetController.text =
                                  filenameresult;
                            });
                          });
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.black,
                        )),
                  ),
                ),
                // CustomimageContainer(
                //   textEditingController: copyofcmlController,
                //   onSuffixIconTap: () {
                //     ImageUploadBottomSheet().showModal(context, (result) {
                //       setState(() {
                //         print("File path is $result");
                //         copyofcmlimage = result;
                //         var filenameresult = extractFileName(result);
                //         print("File name is $filenameresult");
                //         copyofcmlController.text = filenameresult;
                //       });
                //     });
                //   },
                // ),
                sizedBoxHeight(10.h),
                Text(
                  "Passport photo authorized signatories partners",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: passportAuthorizedWidget.length,
                      // pancardrowlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            passportformfield(index),
                            sizedBoxHeight(10.h)
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        passportAuthorizedWidget.length > 1
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    passportAuthorizedFileList.removeLast();
                                    passportAuthorizedList.removeLast();
                                    passportAuthorizedWidget.removeLast();
                                  });
                                },
                                child: Text(
                                  "Remove",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: 'Poppins',
                                    color: Color(0xff000000),
                                  ),
                                ),
                              )
                            : SizedBox(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              passportAuthorizedList.add(TextEditingController());
                              passportAuthorizedFileList.add(null);
                              passportAuthorizedWidget.add(passportformfield(0));
                            });
                          },
                          child: Text(
                            "Add more",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
    
                SizedBox(height: 40.h),
                CustomNextButton(
                  text: "Save",
                  ontap: () {
    //                   final isValid = _form.currentState?.validate();
    // if(isValid! &&
    //                       datecontroller!.isNotEmpty &&
    //                       datecontroller != null){
    //                   otherapicall();
    
    //                       }
    //                       else {
    //                     // return utils.showToast("Please fill all fields");
    
    //                     Flushbar(
    //                       message: "Please fill all fields",
    //                       duration: const Duration(seconds: 1),
    //                     ).show(context);
    //                   }
    
                    final isValid = _form.currentState?.validate();
                    if (isValid != null && isValid) {
                      otherapicall();
                    } else {
                      Flushbar(
                        message: "Please fill all fields",
                        duration: const Duration(seconds: 1),
                      ).show(context);
                    }
                  },
                ),
                sizedBoxHeight(60.h)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pancardformfield(int index) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please add image";
        }
        return null;
      },
      readOnly: true,
      cursorColor: const Color(0xFFFFB600),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: panCardAuthorizedList[index],
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.h),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        hintStyle: TextStyle(
          color: Color(0x80000000),
          fontSize: 14.sp,
          fontFamily: 'Poppins',
        ),
        hintText: "",
        suffixIcon: IconButton(
            onPressed: () {
              ImageUploadBottomSheet().showModal(
                context,
                (result) {
                  // print("File path is $result");
                  // imageInstructionList[index] = result;
                  // var filenameresult = extractFileName(result);
                  // print("File name is $filenameresult");
                  // tecInstructionList[index].text = filenameresult;
                  print("File path is $result");
                  var file = File(result); // Convert the path to a File object
                  panCardAuthorizedFileList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  panCardAuthorizedList[index].text = filenameresult;
                },
              );
            },
            icon: Icon(
              Icons.file_upload_outlined,
              color: Colors.black,
            )),
      ),
    );
  }

  Widget aadharcardformfield(int index) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please add image";
        }
        return null;
      },
      readOnly: true,
      cursorColor: const Color(0xFFFFB600),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: aadharCardAuthorizedList[index],
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.h),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        hintStyle: TextStyle(
          color: Color(0x80000000),
          fontSize: 14.sp,
          fontFamily: 'Poppins',
        ),
        hintText: "",
        suffixIcon: IconButton(
            onPressed: () {
              ImageUploadBottomSheet().showModal(
                context,
                (result) {
                  // print("File path is $result");
                  // imageInstructionList[index] = result;
                  // var filenameresult = extractFileName(result);
                  // print("File name is $filenameresult");
                  // tecInstructionList[index].text = filenameresult;
                  print("File path is $result");
                  var file = File(result); // Convert the path to a File object
                  aadharCardAuthorizedFileList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  aadharCardAuthorizedList[index].text = filenameresult;
                },
              );
            },
            icon: Icon(
              Icons.file_upload_outlined,
              color: Colors.black,
            )),
      ),
    );
  }

  Widget passportformfield(int index) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please add image";
        }
        return null;
      },
      readOnly: true,
      cursorColor: const Color(0xFFFFB600),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: passportAuthorizedList[index],
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.h),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        hintStyle: TextStyle(
          color: Color(0x80000000),
          fontSize: 14.sp,
          fontFamily: 'Poppins',
        ),
        hintText: "",
        suffixIcon: IconButton(
            onPressed: () {
              ImageUploadBottomSheet().showModal(
                context,
                (result) {
                  // print("File path is $result");
                  // imageInstructionList[index] = result;
                  // var filenameresult = extractFileName(result);
                  // print("File name is $filenameresult");
                  // tecInstructionList[index].text = filenameresult;
                  print("File path is $result");
                  var file = File(result); // Convert the path to a File object
                  passportAuthorizedFileList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  passportAuthorizedList[index].text = filenameresult;
                },
              );
            },
            icon: Icon(
              Icons.file_upload_outlined,
              color: Colors.black,
            )),
      ),
    );
  }
}
