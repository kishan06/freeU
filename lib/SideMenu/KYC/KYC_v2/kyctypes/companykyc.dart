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
import 'package:freeu/common/Other%20Commons/CustomdateTextformfield.dart';
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

class Companykycpage extends StatefulWidget {
  Companykycpage({super.key, this.showAppbar});
  bool? showAppbar;

  @override
  State<Companykycpage> createState() => _CompanykycpageState();
}

class _CompanykycpageState extends State<Companykycpage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final mobileNumber = TextEditingController();
  final emailIdcontoller = TextEditingController();
  final occupationcontroller = TextEditingController();
  final placebirthcontroller = TextEditingController();
  final grossannualincome = TextEditingController();
  final memorandumassociationController = TextEditingController();
  final companypanController = TextEditingController();
  final certificateincorprationController = TextEditingController();
  final tanallotmentController = TextEditingController();
  final listdirectorsController = TextEditingController();
  // final pancardcopyController = TextEditingController();
  // final aadharcardcopyController = TextEditingController();
  final proofofaddressController = TextEditingController();
  final latestincometaxreturnController = TextEditingController();
  final copyofcmlController = TextEditingController();
  final copyofauditedbalancesheetControllwer = TextEditingController();
  // final passportauthorizedsignController = TextEditingController();
  final truecopyform32Controller = TextEditingController();
  final truecopyform18Controller = TextEditingController();
  final cancelledchequeController = TextEditingController();
  TextEditingController datecontroller = TextEditingController();

  DateTime? _selectedDate;
  // String? datecontroller;
  String? memoassociationimage;
  String? companypanimage;
  String? certificateincorpimage;
  String? tanallotmentimage;
  String? listdirectorssignimage;
  // String? pancardcopyimage;
  // String? aadharcardcopyimage;
  String? proofofadreesscompanyimage;
  String? latestincometaxreturnimage;
  String? copyofcmlimage;
  String? copyofbalancesheetimage;
  // String? passportphotosignaturesimage;
  String? truecopyform32image;
  String? truecopyform18image;
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

  List<Widget> pancardcolumn = [];
  final List<TextEditingController> pancontollerList = [];
  final List<File?> imagepansignList = [];

  List<Widget> aadharsigncolumn = [];
  final List<TextEditingController> aadharsigncontollerList = [];
  final List<File?> imageaadhasignList = [];

  List<Widget> passportphotocolumn = [];
  final List<TextEditingController> passportphotocontollerList = [];
  final List<File?> imagepassportphotoList = [];

  List<String> fileList = [];

  companyapicall() async {
    utils.loader();
    fileList.add(memoassociationimage!);
    fileList.add(companypanimage!);
    fileList.add(certificateincorpimage!);
    fileList.add(tanallotmentimage!);
    fileList.add(listdirectorssignimage!);
    // fileList.add(pancardcopyimage!);
    // fileList.add(aadharcardcopyimage!);
    fileList.add(proofofadreesscompanyimage!);
    fileList.add(latestincometaxreturnimage!);
    fileList.add(copyofcmlimage!);
    fileList.add(copyofbalancesheetimage!);
    // fileList.add(passportphotosignaturesimage!);
    fileList.add(truecopyform32image!);
    fileList.add(truecopyform18image!);
    fileList.add(cancelledchequeimage!);

    List<MultipartFile> multipartFiles = [];

    List<MultipartFile> panCardsignImagesList = [];

    List<MultipartFile> addharsignImagesList = [];

    List<MultipartFile> passportphotosignImagesList = [];

    for (var file in imagepansignList.where((file) => file != null)) {
      panCardsignImagesList.add(
        await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),
      );
    }

    for (var file in imageaadhasignList.where((file) => file != null)) {
      addharsignImagesList.add(
        await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),
      );
    }

    for (var file in imagepassportphotoList.where((file) => file != null)) {
      passportphotosignImagesList.add(
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
      "memorandum_or_articles_of_association": multipartFiles[0],
      "company_pan": multipartFiles[1],
      "certificate_of_incorporation": multipartFiles[2],
      "tan_allotment_letter": multipartFiles[3],
      "List_of_directors_or_authorized_signatories": multipartFiles[4],
      "pan_card_copy_of_authorized_signatory[]": panCardsignImagesList,
      "aadhar_card_copy_of_authorized_signatory[]": addharsignImagesList,
      "proof_of_address_of_the_company": multipartFiles[5],
      "latest_income_tax_return_of_the_company_Of_last_2_years":
          multipartFiles[6],
      "copy_of_cml": multipartFiles[7],
      "copy_of_audited_balance_sheet_for_the_last_2_f_y": multipartFiles[8],
      "passport_photo_all_authorized_signatories_or_directors[]":
          passportphotosignImagesList,
      "true_copy_form_32_or_dir_12_alongwith_roc_fee_payment":
          multipartFiles[9],
      "true_copy_form_no_18_or_inc_22_alongwith_roc_fee_payment":
          multipartFiles[10],
      "cancelled_cheque": multipartFiles[11],
    });
    log(formdata.fields.toString());
    final data = await KycV2Apis().Companykycdetails(formdata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      Timer(const Duration(seconds: 2),
          () => Get.offAllNamed('/EntryPoint', arguments: 0));
      return utils.showToast(data.message);
    } else {
      Get.back();
      return utils.showToast(data.message);
    }
  }

//using http
  // companyApiCall() async {
  //   final isValid = _form.currentState?.validate();
  //   if (isValid!) {
  //     try {
  //       var headers = {
  //         'Authorization': "Bearer $token",
  //         'Cookie':
  //             'laravel_session=eyJpdiI6ImdBZmxwemNmdlAvVzZ3b0NtNkw3R3c9PSIsInZhbHVlIjoiZWM0UkdlOG1ncWdxdjdMVWFXUGYzSlkzU0dIa0I0d1FObytxdW94dERCTThrOTgvWnh3ZHdwZDZhajgydEZ4UHdnK21wWExDTTgrcXEybWdlZ2RQenRhbXE1MTdvTWFmek93QlN2bG1sT0ZENFFueERoa0Jmby80MkdqRXJsRWIiLCJtYWMiOiJkYzdhMzk2ZTU1Zjg4YTUyNDU2ZjZjNjQxM2Y2MGY4YzJkNjkwNzE1ZmU3ZGQ5NjJkYTBlYjM4YjA2MjI5NDQwIiwidGFnIjoiIn0%3D'
  //       };
  //       var request = http.MultipartRequest(
  //           'POST',
  //           Uri.parse(
  //               'https://pi.betadelivery.com/freeU_investment/api/company-kyc-create'));
  //       request.fields.addAll({
  //         'name': namecontroller.text,
  //         'mobile_number': mobileNumber.text,
  //         'email': emailIdcontoller.text,
  //         'dob': datecontroller.toString(),
  //         'occupation_business': occupationcontroller.text,
  //         'place_of_birth': placebirthcontroller.text,
  //         'gross_annual_income': grossannualincome.text
  //       });
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'memorandum_or_articles_of_association', memoassociationimage!));
  //       request.files.add(
  //           await http.MultipartFile.fromPath('company_pan', companypanimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'certificate_of_incorporation', certificateincorpimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'tan_allotment_letter', tanallotmentimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'List_of_directors_or_authorized_signatories',
  //           listdirectorssignimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'pan_card_copy_of_authorized_signatory', pancardcopyimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'aadhar_card_copy_of_authorized_signatory', aadharcardcopyimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'proof_of_address_of_the_company', proofofadreesscompanyimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'latest_income_tax_return_of_the_company_Of_last_2_years',
  //           latestincometaxreturnimage!));
  //       request.files.add(
  //           await http.MultipartFile.fromPath('copy_of_cml', copyofcmlimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'copy_of_audited_balance_sheet_for_the_last_2_f_y',
  //           copyofbalancesheetimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'passport_photo_all_authorized_signatories_or_directors',
  //           passportphotosignaturesimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'true_copy_form_32_or_dir_12_alongwith_roc_fee_payment',
  //           truecopyform32image!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'true_copy_form_no_18_or_inc_22_alongwith_roc_fee_payment',
  //           truecopyform18image!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'cancelled_cheque', cancelledchequeimage!));
  //       request.headers.addAll(headers);

  //       http.StreamedResponse response = await request.send();

  //       if (response.statusCode == 200) {
  //         print(await response.stream.bytesToString());
  //         // Navigator.push(context,
  //         //     MaterialPageRoute(builder: (context) => const Kycmainpage()));
  //         // Get.toNamed("/kycmainpage");
  //         Get.back();
  //         Flushbar(
  //           message: response.reasonPhrase,
  //           duration: const Duration(seconds: 1),
  //         ).show(context);
  //       } else {
  //         print(response.reasonPhrase);
  //         Flushbar(
  //           message: response.reasonPhrase,
  //           duration: const Duration(seconds: 1),
  //         ).show(context);
  //       }
  //     } catch (e) {
  //       print(e);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    if (pancardcolumn.isEmpty) {
      pancontollerList.add(TextEditingController());
      imagepansignList.add(null);
      pancardcolumn.add(pancardformfield(0));
    }

    if (aadharsigncolumn.isEmpty) {
      aadharsigncontollerList.add(TextEditingController());
      imageaadhasignList.add(null);
      aadharsigncolumn.add(pancardformfield(0));
    }

    if (passportphotocolumn.isEmpty) {
      passportphotocontollerList.add(TextEditingController());
      imagepassportphotoList.add(null);
      passportphotocolumn.add(pancardformfield(0));
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
                  "Company KYC",
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
                  // validator: (value) {
                  //   if (value == null ||
                  //       value.isEmpty ||
                  //       _isEmailValid == false) {
                  //     return "Enter correct email id";
                  //   }
                  //   return null;
                  // },
                  validator: (value) {
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
                  "Memorandum or articles of association",
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
                  controller: memorandumassociationController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              memoassociationimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              memorandumassociationController.text =
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
                  "Company Pan",
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
                  controller: companypanController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              companypanimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              companypanController.text = filenameresult;
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
                  "Certificate of incorporation",
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
                  controller: certificateincorprationController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              certificateincorpimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              certificateincorprationController.text =
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
                  "Tan allotment letter",
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
                  controller: tanallotmentController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              tanallotmentimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              tanallotmentController.text = filenameresult;
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
                  "List of directors or authorized signatories",
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
                  controller: listdirectorsController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              listdirectorssignimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              listdirectorsController.text = filenameresult;
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

                // TextFormField(
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return "Please add image";
                //     }
                //     return null;
                //   },
                //   readOnly: true,
                //   cursorColor: const Color(0xFFFFB600),
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   controller: pancardcopyController,
                //   decoration: InputDecoration(
                //     contentPadding: EdgeInsets.all(10.h),
                //     filled: true,
                //     fillColor: Colors.white,
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     errorBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: const BorderSide(color: Colors.red, width: 1),
                //     ),
                //     focusedErrorBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: const BorderSide(color: Colors.red, width: 1),
                //     ),
                //     hintStyle: TextStyle(
                //       color: Color(0x80000000),
                //       fontSize: 14.sp,
                //       fontFamily: 'Poppins',
                //     ),
                //     hintText: "",
                //     suffixIcon: IconButton(
                //         onPressed: () {
                //           ImageUploadBottomSheet().showModal(context, (result) {
                //             setState(() {
                //               print("File path is $result");
                //               pancardcopyimage = result;
                //               var filenameresult = extractFileName(result);
                //               print("File name is $filenameresult");
                //               pancardcopyController.text = filenameresult;
                //             });
                //           });
                //         },
                //         icon: Icon(
                //           Icons.file_upload_outlined,
                //           color: Colors.black,
                //         )),
                //   ),
                // ),

                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: pancardcolumn.length,
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
                        pancardcolumn.length > 1
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    pancontollerList.removeLast();
                                    imagepansignList.removeLast();
                                    pancardcolumn.removeLast();
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
                              pancontollerList.add(TextEditingController());
                              imagepansignList.add(null);
                              pancardcolumn.add(pancardformfield(0));
                              print(pancontollerList.length);
                              print(imagepansignList.length);
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
                // TextFormField(
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return "Please add image";
                //     }
                //     return null;
                //   },
                //   readOnly: true,
                //   cursorColor: const Color(0xFFFFB600),
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   controller: aadharcardcopyController,
                //   decoration: InputDecoration(
                //     contentPadding: EdgeInsets.all(10.h),
                //     filled: true,
                //     fillColor: Colors.white,
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     errorBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: const BorderSide(color: Colors.red, width: 1),
                //     ),
                //     focusedErrorBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: const BorderSide(color: Colors.red, width: 1),
                //     ),
                //     hintStyle: TextStyle(
                //       color: Color(0x80000000),
                //       fontSize: 14.sp,
                //       fontFamily: 'Poppins',
                //     ),
                //     hintText: "",
                //     suffixIcon: IconButton(
                //         onPressed: () {
                //           ImageUploadBottomSheet().showModal(context, (result) {
                //             setState(() {
                //               print("File path is $result");
                //               aadharcardcopyimage = result;
                //               var filenameresult = extractFileName(result);
                //               print("File name is $filenameresult");
                //               aadharcardcopyController.text = filenameresult;
                //             });
                //           });
                //         },
                //         icon: Icon(
                //           Icons.file_upload_outlined,
                //           color: Colors.black,
                //         )),
                //   ),
                // ),

                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: aadharsigncolumn.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            adharcardformfield(index),
                            sizedBoxHeight(10.h)
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        aadharsigncolumn.length > 1
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    aadharsigncontollerList.removeLast();
                                    imageaadhasignList.removeLast();
                                    aadharsigncolumn.removeLast();
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
                              aadharsigncontollerList
                                  .add(TextEditingController());
                              imageaadhasignList.add(null);
                              aadharsigncolumn.add(pancardformfield(0));
                              print(aadharsigncontollerList.length);
                              print(imageaadhasignList.length);
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
                  "Proof of address of the company",
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
                  controller: proofofaddressController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              proofofadreesscompanyimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              proofofaddressController.text = filenameresult;
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
                  "Latest income tax return of the company of last 2 years",
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
                  controller: latestincometaxreturnController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              latestincometaxreturnimage = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              latestincometaxreturnController.text =
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
                //   textEditingController: latestincometaxreturnController,
                //   onSuffixIconTap: () {
                //     ImageUploadBottomSheet().showModal(context, (result) {
                //       setState(() {
                //         print("File path is $result");
                //         latestincometaxreturnimage = result;
                //         var filenameresult = extractFileName(result);
                //         print("File name is $filenameresult");
                //         latestincometaxreturnController.text = filenameresult;
                //       });
                //     });
                //   },
                // ),
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
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                  "Copy of audited balance sheet for the last 2 f y",
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
                  controller: copyofauditedbalancesheetControllwer,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              copyofauditedbalancesheetControllwer.text =
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
                //   textEditingController: copyofauditedbalancesheetControllwer,
                //   onSuffixIconTap: () {
                //     ImageUploadBottomSheet().showModal(context, (result) {
                //       setState(() {
                //         print("File path is $result");
                //         copyofbalancesheetimage = result;
                //         var filenameresult = extractFileName(result);
                //         print("File name is $filenameresult");
                //         copyofauditedbalancesheetControllwer.text =
                //             filenameresult;
                //       });
                //     });
                //   },
                // ),
                sizedBoxHeight(10.h),
                Text(
                  "Passport photo all authorized signatories or directors",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                // TextFormField(
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return "Please add image";
                //     }
                //     return null;
                //   },
                //   readOnly: true,
                //   cursorColor: const Color(0xFFFFB600),
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   controller: passportauthorizedsignController,
                //   decoration: InputDecoration(
                //     contentPadding: EdgeInsets.all(10.h),
                //     filled: true,
                //     fillColor: Colors.white,
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: BorderSide(color: Color(0xffCCCCCC), width: 1),
                //     ),
                //     errorBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: const BorderSide(color: Colors.red, width: 1),
                //     ),
                //     focusedErrorBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10.r),
                //       borderSide: const BorderSide(color: Colors.red, width: 1),
                //     ),
                //     hintStyle: TextStyle(
                //       color: Color(0x80000000),
                //       fontSize: 14.sp,
                //       fontFamily: 'Poppins',
                //     ),
                //     hintText: "",
                //     suffixIcon: IconButton(
                //         onPressed: () {
                //           ImageUploadBottomSheet().showModal(context, (result) {
                //             setState(() {
                //               print("File path is $result");
                //               passportphotosignaturesimage = result;
                //               var filenameresult = extractFileName(result);
                //               print("File name is $filenameresult");
                //               passportauthorizedsignController.text =
                //                   filenameresult;
                //             });
                //           });
                //         },
                //         icon: Icon(
                //           Icons.file_upload_outlined,
                //           color: Colors.black,
                //         )),
                //   ),
                // ),

                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: passportphotocolumn.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            passportsignformfield(index),
                            sizedBoxHeight(10.h)
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        passportphotocolumn.length > 1
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    passportphotocontollerList.removeLast();
                                    imagepassportphotoList.removeLast();
                                    passportphotocolumn.removeLast();
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
                              passportphotocontollerList
                                  .add(TextEditingController());
                              imagepassportphotoList.add(null);
                              passportphotocolumn.add(pancardformfield(0));
                              print(passportphotocontollerList.length);
                              print(imagepassportphotoList.length);
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
                  "True copy form 32 or dir 12 alongwith roc fee payment",
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
                  controller: truecopyform32Controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              truecopyform32image = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              truecopyform32Controller.text = filenameresult;
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
                //   textEditingController: truecopyform32Controller,
                //   onSuffixIconTap: () {
                //     ImageUploadBottomSheet().showModal(context, (result) {
                //       setState(() {
                //         print("File path is $result");
                //         truecopyform32image = result;
                //         var filenameresult = extractFileName(result);
                //         print("File name is $filenameresult");
                //         truecopyform32Controller.text = filenameresult;
                //       });
                //     });
                //   },
                // ),

                sizedBoxHeight(10.h),
                Text(
                  "true_copy_form_no_18_or_inc_22_alongwith_roc_fee_payment",
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
                  controller: truecopyform18Controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                              truecopyform18image = result;
                              var filenameresult = extractFileName(result);
                              print("File name is $filenameresult");
                              truecopyform18Controller.text = filenameresult;
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
                //   textEditingController: truecopyform18Controller,
                //   onSuffixIconTap: () {
                //     ImageUploadBottomSheet().showModal(context, (result) {
                //       setState(() {
                //         print("File path is $result");
                //         truecopyform18image = result;
                //         var filenameresult = extractFileName(result);
                //         print("File name is $filenameresult");
                //         truecopyform18Controller.text = filenameresult;
                //       });
                //     });
                //   },
                // ),
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
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1),
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
                // CustomimageContainer(
                //   textEditingController: cancelledchequeController,
                //   onSuffixIconTap: () {
                //     ImageUploadBottomSheet().showModal(context, (result) {
                //       setState(() {
                //         print("File path is $result");
                //         cancelledchequeimage = result;
                //         var filenameresult = extractFileName(result);
                //         print("File name is $filenameresult");
                //         cancelledchequeController.text = filenameresult;
                //       });
                //     });
                //   },
                // ),
                SizedBox(height: 40.h),
                CustomNextButton(
                  text: "Save",
                  ontap: () {
                    //     final isValid = _form.currentState?.validate();
                    // if(isValid! && datecontroller!.isNotEmpty && datecontroller != null){
                    //                   companyapicall();

                    // }
                    // else {
                    //   // return utils.showToast("Please fill all fields");
                    //   Flushbar(
                    //                       message: "Please fill all fields",
                    //                       duration: const Duration(seconds: 1),
                    //                     ).show(context);
                    // }

                    //                   //using http
                    //                   // companyApiCall();

                    final isValid = _form.currentState?.validate();
                    if (isValid != null && isValid
                        //&&
                        // datecontroller.text != null &&
                        // datecontroller.text!.isNotEmpty
                        ) {
                      companyapicall();
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
      controller: pancontollerList[index],
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
                  imagepansignList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  pancontollerList[index].text = filenameresult;
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

  Widget adharcardformfield(int index) {
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
      controller: aadharsigncontollerList[index],
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
                  imageaadhasignList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  aadharsigncontollerList[index].text = filenameresult;
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

  Widget passportsignformfield(int index) {
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
      controller: passportphotocontollerList[index],
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
                  imagepassportphotoList[index] = file;
                  var filenameresult = extractFileName(result);
                  print("File name is $filenameresult");
                  passportphotocontollerList[index].text = filenameresult;
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
