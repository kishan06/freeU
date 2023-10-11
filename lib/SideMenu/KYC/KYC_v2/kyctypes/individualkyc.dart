import 'dart:async';
import 'package:another_flushbar/flushbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/ExtractPath.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
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

class Individualkycpage extends StatefulWidget {
   Individualkycpage({super.key, this.showAppbar});
  bool? showAppbar;


  @override
  State<Individualkycpage> createState() => _IndividualkycpageState();
}

class _IndividualkycpageState extends State<Individualkycpage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final mobileNumber = TextEditingController();
  final emailIdcontoller = TextEditingController();
  final occupationcontroller = TextEditingController();
  final fathernamecontroller = TextEditingController();
  final mothernamecontroller = TextEditingController();

  final placebirthcontroller = TextEditingController();
  final grossannualincome = TextEditingController();

  final proofaddressController = TextEditingController();

  final photographController = TextEditingController();

  final cancelledchequeController = TextEditingController();

  final copycmlController = TextEditingController();

  final pancardController = TextEditingController();

  DateTime? _selectedDate;
  String? datecontroller;

  String? proofaddressimage;

  String? photographimage;

  String? cancelledchequeimage;
  String? copyofcmlimage;
  String? pancardimage;

  bool _isEmailValid = false;
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

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1922),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return setState(() {
          datecontroller = '';
        });
      }
      setState(() {
        _selectedDate = pickedDate;
        // datecontroller =
        //     "${_selectedDate!.day.toString()}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year.toString().padLeft(2, '0')}";
        datecontroller =
            "${_selectedDate!.year.toString().padLeft(2, '0')}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString()}";
      });
    });
  }

  List<String> fileList = [];

  individualapicall() async {
    fileList.add(proofaddressimage!);

    fileList.add(photographimage!);

    fileList.add(cancelledchequeimage!);

    fileList.add(copyofcmlimage!);

    fileList.add(pancardimage!);

    List<MultipartFile> multipartFiles = [];

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
      "dob": datecontroller,
      "occupation_business": occupationcontroller.text,
      "father_name": fathernamecontroller.text,
      "mother_name": mothernamecontroller.text,
      "place_of_birth": placebirthcontroller.text,
      "gross_annual_income": grossannualincome.text,
      "proof_of_address": multipartFiles[0],
      "Photograph": multipartFiles[1],
      "cancelled_cheque": multipartFiles[2],
      "copy_of_cml": multipartFiles[3],
      "pan_card": multipartFiles[4],
    });
    final data = await KycV2Apis().Individualkycdetails(formdata);
    if (data.status == ResponseStatus.SUCCESS) {
      print(formdata);
      print(data.message);
        Timer(const Duration(seconds: 2),
            () => Get.offAllNamed('/EntryPoint', arguments: 0));
      print("individual kyc completed");
      return utils.showToast(data.message);
    } else {
      return utils.showToast(data.message);
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: widget.showAppbar ?? true ?

       CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ) : null,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Form(
          key: _form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Individual KYC",
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
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
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
                  if (value == null ||
                      value.isEmpty ||
                      _isEmailValid == false) {
                    return "Enter correct email id";
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
              GestureDetector(
                onTap: () {
                  _presentDatePicker();
                },
                child: Container(
                  height: 45.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffCCCCCC),
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          sizedBoxWidth(20.w),
                          Text(_selectedDate == null ? '' : '$datecontroller'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          sizedBoxWidth(10.w)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Occupation Business",
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
                hintText: "Please Enter Occupation Business",
                validatorText: "Please Enter Occupation Business",
                textEditingController: occupationcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter valid occupation";
                  }
                  return null;
                },
              ),
              sizedBoxHeight(20.h),
              Text(
                "Father Name",
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
                hintText: "Please Enter Father Name",
                validatorText: "Please Enter Father Name",
                textEditingController: fathernamecontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter valid father name";
                  }
                  return null;
                },
              ),
              sizedBoxHeight(20.h),
              Text(
                "Mother Name",
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
                hintText: "Please Enter Mother Name",
                validatorText: "Please Enter Mother Name",
                textEditingController: mothernamecontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter valid mother name";
                  }
                  return null;
                },
              ),
              sizedBoxHeight(20.h),
              Text(
                "Palce of Birth",
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
                    return "Enter valid palce of birth";
                  }
                  return null;
                },
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
                "Proof of address",
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
                controller: proofaddressController,
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
                            proofaddressimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            proofaddressController.text = filenameresult;
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
                "Photograph",
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
                controller: photographController,
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
                            photographimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            photographController.text = filenameresult;
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
                        ImageUploadBottomSheet().showModal(
                          context,
                          (result) {
                            print("File path is $result");
                            cancelledchequeimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            cancelledchequeController.text = filenameresult;
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
                "Copy of cml",
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
                controller: copycmlController,
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
                            copycmlController.text = filenameresult;
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
                "Pan card",
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
                controller: pancardController,
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
                            pancardimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            pancardController.text = filenameresult;
                          });
                        });
                      },
                      icon: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Save",
                ontap: () {
                  // final isValid = _form.currentState?.validate();

                  // if(isValid! &&
                  //     datecontroller!.isNotEmpty &&
                  //     datecontroller != null){
                  // otherapicall();

                  //     }
                  //      else {
                  //   // return utils.showToast("Please fill all fields");

                  //   Flushbar(
                  //     message: "Please fill all fields",
                  //     duration: const Duration(seconds: 1),
                  //   ).show(context);
                  // }
                  final isValid = _form.currentState?.validate();
                  if (isValid != null &&
                      isValid &&
                      datecontroller != null &&
                      datecontroller!.isNotEmpty) {
                    individualapicall();
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
    );
  }
}
