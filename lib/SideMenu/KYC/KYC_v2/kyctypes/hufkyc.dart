import 'dart:async';
import 'dart:developer';
import 'dart:io';
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
import 'package:freeu/Utils/Dialogs.dart';
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;

class HUFkycpage extends StatefulWidget {
  HUFkycpage({super.key, this.showAppbar});
  bool? showAppbar;
  @override
  State<HUFkycpage> createState() => _HUFkycpageState();
}

class _HUFkycpageState extends State<HUFkycpage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final mobileNumber = TextEditingController();
  final emailIdcontoller = TextEditingController();
  final occupationcontroller = TextEditingController();
  final placebirthcontroller = TextEditingController();
  final grossannualincome = TextEditingController();

  final deeddeclarationController = TextEditingController();

  final listmembersController = TextEditingController();

  final pancardController = TextEditingController();

  final coparcenrsaadharpassportController = TextEditingController();

  final proofaddressController = TextEditingController();

  final bankstatementController = TextEditingController();

  final passportsizephotoController = TextEditingController();

  final copyofcmlController = TextEditingController();

  final cancelledchequeController = TextEditingController();

  DateTime? _selectedDate;
  String? datecontroller;
  String? deeddeclarationimage;

  String? listmembersimage;

  String? proofadressimage;

  String? bankstatementimage;

  String? passportphotoimage;

  String? copyofcmlimage;

  String? cancelledchequeimage;

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

  List<Widget> stepsInColumn = [];
  final List<TextEditingController> tecInstructionList = [];
  final List<File?> imageInstructionList = [];

  List<Widget> coparcenaadhapass = [];
  final List<TextEditingController> copacontollerList = [];
  final List<File?> imagecopaaadhapaaList = [];

  List<String> fileList = [];

  hufapicall() async {
    utils.loader();
    fileList.add(deeddeclarationimage!);

    fileList.add(listmembersimage!);

    fileList.add(proofadressimage!);

    fileList.add(bankstatementimage!);

    fileList.add(passportphotoimage!);

    fileList.add(copyofcmlimage!);

    fileList.add(cancelledchequeimage!);

    List<MultipartFile> multipartFiles = [];

    List<MultipartFile> panCardImagesList = [];

    List<MultipartFile> coparcenrsaddharpassImagesList = [];

    for (var file in imageInstructionList.where((file) => file != null)) {
      
      panCardImagesList.add( await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),);
    }

    for (var file in imagecopaaadhapaaList.where((file) => file != null)) {
      coparcenrsaddharpassImagesList.add(await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),);
    }

    for (String file in fileList) {
      multipartFiles.add(
        await MultipartFile.fromFile(
          file,
          filename: path.basename(file),
        ),
      );
    }

    FormData formdata = FormData.fromMap({
      "name": namecontroller.text,
      "mobile_number": mobileNumber.text,
      "email": emailIdcontoller.text,
      "dob": datecontroller,
      "occupation_business": occupationcontroller.text,
      "place_of_birth": placebirthcontroller.text,
      "gross_annual_income": grossannualincome.text,
      "deed_of_declaration": multipartFiles[0],
      "list_of_all_members": multipartFiles[1],
      "pan_card[]":
          panCardImagesList,
      "coparcenrs_aadhar_passport[]":
          coparcenrsaddharpassImagesList,
      "proof_of_address":
          multipartFiles[2],
      "bank_statement":
          multipartFiles[3],
      "passport_size_photo":
          multipartFiles[4],
      "copy_of_cml":
          multipartFiles[5],
      "cancelled_cheque":
          multipartFiles[6],
    });
    log(formdata.fields.toString());
    final data = await KycV2Apis().Hufkycdetails(formdata);

    print(formdata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      print(data.message);
      Timer(const Duration(seconds: 2),
          () => Get.offAllNamed('/EntryPoint', arguments: 0));
      print("huf kyc completed");
      return utils.showToast(data.message);
    } else {
      Get.back();
      return utils.showToast(data.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (stepsInColumn.isEmpty) {
      tecInstructionList.add(TextEditingController());
      imageInstructionList.add(null);
      stepsInColumn.add(pancardformfield(0));
    }

    if (coparcenaadhapass.isEmpty) {
      copacontollerList.add(TextEditingController());
      imagecopaaadhapaaList.add(null);
      coparcenaadhapass.add(pancardformfield(0));
    }

    return Scaffold(
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
                "HUF KYC",
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
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
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
                "Deed of declaration",
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
                controller: deeddeclarationController,
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
                            deeddeclarationimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            deeddeclarationController.text = filenameresult;
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
                "List of all members",
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
                controller: listmembersController,
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
                            listmembersimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            listmembersController.text = filenameresult;
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

              Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: stepsInColumn.length,
                    // pancardrowlist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          // pancardrowlist[index],
                          pancardformfield(index),

                          sizedBoxHeight(10.h)
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      stepsInColumn.length > 1
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  tecInstructionList.removeLast();
                                  imageInstructionList.removeLast();
                                  stepsInColumn.removeLast();
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
                            tecInstructionList.add(TextEditingController());
                            imageInstructionList.add(null);
                            stepsInColumn.add(pancardformfield(0));
                            print(tecInstructionList.length);
                            print(imageInstructionList.length);
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
              // ),

              sizedBoxHeight(10.h),
              Text(
                "Coparcenrs aadhar passport",
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
                    itemCount: coparcenaadhapass.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          copaaadharpassportformfield(index),

                          sizedBoxHeight(10.h)
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      coparcenaadhapass.length > 1
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  copacontollerList.removeLast();
                                  imagecopaaadhapaaList.removeLast();
                                  coparcenaadhapass.removeLast();
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
                            copacontollerList.add(TextEditingController());
                            imagecopaaadhapaaList.add(null);
                            coparcenaadhapass.add(pancardformfield(0));
                            print(copacontollerList.length);
                            print(imagecopaaadhapaaList.length);
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
                        ImageUploadBottomSheet().showModal(context, (result) {
                          setState(() {
                            print("File path is $result");
                            proofadressimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            proofaddressController.text = filenameresult;
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
                "Bank statement",
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
                controller: bankstatementController,
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
                            bankstatementimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            bankstatementController.text = filenameresult;
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
                "Passport size photo",
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
                controller: passportsizephotoController,
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
                            passportphotoimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            passportsizephotoController.text = filenameresult;
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
              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Save",
                ontap: () {
                  final isValid = _form.currentState?.validate();
                  if (isValid != null &&
                      isValid &&
                      datecontroller != null &&
                      datecontroller!.isNotEmpty) {
                    hufapicall();
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
      controller: tecInstructionList[index],
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
                  imageInstructionList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  tecInstructionList[index].text = filenameresult;
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

  Widget copaaadharpassportformfield(int index) {
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
      controller: copacontollerList[index],
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
                  imagecopaaadhapaaList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  copacontollerList[index].text = filenameresult;
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
