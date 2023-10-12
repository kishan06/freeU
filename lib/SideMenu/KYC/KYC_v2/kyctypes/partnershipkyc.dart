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
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;
import 'package:freeu/Utils/Dialogs.dart';

class Partnershipkycpage extends StatefulWidget {
  Partnershipkycpage({super.key, this.showAppbar});
  bool? showAppbar;

  @override
  State<Partnershipkycpage> createState() => _PartnershipkycpageState();
}

class _PartnershipkycpageState extends State<Partnershipkycpage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final mobileNumber = TextEditingController();
  final emailIdcontoller = TextEditingController();
  final occupationcontroller = TextEditingController();
  final placebirthcontroller = TextEditingController();
  final grossannualincome = TextEditingController();
  final truecopypartnershipController = TextEditingController();
  final registrationcertificateController = TextEditingController();
  final pancardController = TextEditingController();
  final listpartnersignatureController = TextEditingController();
  final pancardcopysignatoryController = TextEditingController();
  final tanallotmentController = TextEditingController();
  final proofofadressController = TextEditingController();
  final latestincometaxContoller = TextEditingController();
  final copyofcmlController = TextEditingController();
  final copyofauditedbalancesheetController = TextEditingController();
  final passportphotoauthorisedsignatures = TextEditingController();
  final cancelledchequeController = TextEditingController();
  final aadharcardcopytController = TextEditingController();

  DateTime? _selectedDate;
  String? datecontroller;

  String? truecopypartnerhipimage;
  String? registrationcertificateimage;
  String? pancardimage;
  String? listpartnerssignatureimage;
  String? pancardsignatoryimage;
  String? tanallotmentimage;
  String? proofofadressimage;
  String? latestincometaxretirnimage;
  String? copyofcmlimage;
  String? copyofbalancesheetimage;
  String? passportphotoauthorizedsignimage;
  String? cancelledchequeimage;
  String? aadharcardimage;

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

  List<Widget> pancardcolumn = [];
  final List<TextEditingController> pancontollerList = [];
  final List<File?> imagepansignList = [];

  List<Widget> passportphotocolumn = [];
  final List<TextEditingController> passportphotocontollerList = [];
  final List<File?> imagepassportphotoList = [];

  List<Widget> aadharsigncolumn = [];
  final List<TextEditingController> aadharsigncontollerList = [];
  final List<File?> imageaadhasignList = [];

  List<String> fileList = [];

  partnershipapicall() async {
    utils.loader();
    fileList.add(truecopypartnerhipimage!);
    fileList.add(registrationcertificateimage!);
    fileList.add(pancardimage!);
    fileList.add(listpartnerssignatureimage!);
    // fileList.add(pancardsignatoryimage!);
    fileList.add(tanallotmentimage!);
    fileList.add(proofofadressimage!);
    fileList.add(latestincometaxretirnimage!);
    fileList.add(copyofcmlimage!);
    fileList.add(copyofbalancesheetimage!);
    // fileList.add(passportphotoauthorizedsignimage!);
    fileList.add(cancelledchequeimage!);
    // fileList.add(aadharcardimage!);

    List<MultipartFile> multipartFiles = [];

    List<MultipartFile> panCardsignsImagesList = [];

    List<MultipartFile> addharsignsImagesList = [];

    List<MultipartFile> passportphotosignsImagesList = [];

    for (var file in imagepansignList.where((file) => file != null)) {
      panCardsignsImagesList.add(
        await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),
      );
    }

    for (var file in imageaadhasignList.where((file) => file != null)) {
      addharsignsImagesList.add(
        await MultipartFile.fromFile(
          file!.path,
          filename: path.basename(file.path),
        ),
      );
    }

    for (var file in imagepassportphotoList.where((file) => file != null)) {
      passportphotosignsImagesList.add(
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
      "dob": datecontroller,
      "occupation_business": occupationcontroller.text,
      "place_of_birth": placebirthcontroller.text,
      "gross_annual_income": grossannualincome.text,
      "true_copy_of_partnership_deed": multipartFiles[0],
      "registration_certificate": multipartFiles[1],
      "pan_card": multipartFiles[2],
      "list_of_partners_and_authorised_signatories": multipartFiles[3],
      "pan_card_copy_of_authorized_signatory[]": panCardsignsImagesList,
      "tan_allotment_letter": multipartFiles[4],
      "proof_of_address_firm": multipartFiles[5],
      "latestIincome_tax_return_of_the_firm": multipartFiles[6],
      "copy_of_cml": multipartFiles[7],
      "copy_of_audited_balance_sheet_for_last": multipartFiles[8],
      "passport_photo_authorized_signatories_partners[]":
          passportphotosignsImagesList,
      "cancelled_cheque": multipartFiles[9],
      "aadhar_card_copy_of_authorized_signatory[]": addharsignsImagesList,
    });
    log(formdata.fields.toString());
    final data = await KycV2Apis().Partnershipkycdetails(formdata);
    if (data.status == ResponseStatus.SUCCESS) {
      Get.back();
      // Timer(const Duration(seconds: 2), () => Get.back());
      Timer(const Duration(seconds: 2),
          () => Get.offAllNamed('/EntryPoint', arguments: 0));
      print("partnershio kyc completed");
      return utils.showToast(data.message);
    } else {
      Get.back();
      return utils.showToast(data.message);
    }
    // }
  }

//using http method
  // companyApiCall() async {
  //   final isValid = _form.currentState?.validate();
  //   if (isValid!) {
  //     try {
  //       var headers = {
  //         'Authorization': 'Bearer $token',
  //         'Cookie':
  //             'laravel_session=eyJpdiI6ImlZN05vV2Qzb0hxSTBhYXZOMk56UFE9PSIsInZhbHVlIjoicjg1MXVYNXd6SzNaQlEwd2g0azBxTlkxYUp4QjIzM0FES010Tk9pOUNaTWF0bmV4OU8yclpCTklEazZ0a0NzZUQ0VUk5SHNCSXNSNEF3ZXNLMWc5Q1dhQlNyaUkySkpUUytpa0xMNTRSQ2VkQnpNR2djM1FBcUt4UmFMQmdSOHIiLCJtYWMiOiIyMGFiZjZlMTVhNmQ1ODg4NjMxZTQwY2I5Y2Q5MjI1YjA3OWIyYmU4ZDVmY2U0NjMxNzZlOGEzNmNkMzc1Zjk5IiwidGFnIjoiIn0%3D'
  //       };
  //       var request = http.MultipartRequest(
  //           'POST',
  //           Uri.parse(
  //               'https://pi.betadelivery.com/freeU_investment/api/partner-ship-create'));
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
  //           'true_copy_of_partnership_deed', truecopypartnerhipimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'registration_certificate', registrationcertificateimage!));
  //       request.files
  //           .add(await http.MultipartFile.fromPath('pan_card', pancardimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'list_of_partners_and_authorised_signatories',
  //           listpartnerssignatureimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'pan_card_copy_of_authorized_signatory', pancardsignatoryimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'tan_allotment_letter', tanallotmentimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'proof_of_address_firm', proofofadressimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'latestIincome_tax_return_of_the_firm',
  //           latestincometaxretirnimage!));
  //       request.files.add(
  //           await http.MultipartFile.fromPath('copy_of_cml', copyofcmlimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'copy_of_audited_balance_sheet_for_last',
  //           copyofbalancesheetimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'passport_photo_authorized_signatories_partners',
  //           passportphotoauthorizedsignimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'cancelled_cheque', cancelledchequeimage!));
  //       request.files.add(await http.MultipartFile.fromPath(
  //           'aadhar_card_copy_of_authorized_signatory', aadharcardimage!));
  //       request.headers.addAll(headers);

  //       http.StreamedResponse response = await request.send();

  //       if (response.statusCode == 200) {
  //         print(await response.stream.bytesToString());
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

    if (passportphotocolumn.isEmpty) {
      passportphotocontollerList.add(TextEditingController());
      imagepassportphotoList.add(null);
      passportphotocolumn.add(pancardformfield(0));
    }

    if (aadharsigncolumn.isEmpty) {
      aadharsigncontollerList.add(TextEditingController());
      imageaadhasignList.add(null);
      aadharsigncolumn.add(pancardformfield(0));
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
                "Partnership KYC",
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
                    return "Please add image";
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
                "True copy of partnership deed",
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
                controller: truecopypartnershipController,
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
                            truecopypartnerhipimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            truecopypartnershipController.text = filenameresult;
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
                "Registration certificate",
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
                controller: registrationcertificateController,
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
                            registrationcertificateimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            registrationcertificateController.text =
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
                        ImageUploadBottomSheet().showModal(
                          context,
                          (result) {
                            print("File path is $result");
                            pancardimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            pancardController.text = filenameresult;
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
                "List of partners and authorised signatories",
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
                controller: listpartnersignatureController,
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
                            listpartnerssignatureimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            listpartnersignatureController.text =
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
              //   controller: pancardcopysignatoryController,
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
              //               pancardsignatoryimage = result;
              //               var filenameresult = extractFileName(result);
              //               print("File name is $filenameresult");
              //               pancardcopysignatoryController.text =
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
                "Proof of address firm",
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
                controller: proofofadressController,
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
                            proofofadressimage = result;
                            var filenameresult = extractFileName(result);
                            print("File name is $filenameresult");
                            proofofadressController.text = filenameresult;
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
                "LatestIincome tax return of the firm",
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
                controller: latestincometaxContoller,
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
                            latestincometaxContoller.text = filenameresult;
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
              //   controller: passportphotoauthorisedsignatures,
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
              //               passportphotoauthorizedsignimage = result;
              //               var filenameresult = extractFileName(result);
              //               print("File name is $filenameresult");
              //               passportphotoauthorisedsignatures.text =
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
              //   controller: aadharcardcopytController,
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
              //               aadharcardimage = result;
              //               var filenameresult = extractFileName(result);
              //               print("File name is $filenameresult");
              //               aadharcardcopytController.text = filenameresult;
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

              SizedBox(height: 40.h),
              CustomNextButton(
                text: "Save",
                ontap: () {
                  // final isValid = _form.currentState?.validate();
                  // if (isValid! &&
                  //     datecontroller!.isNotEmpty &&
                  //     datecontroller != null) {
                  //   partnershipapicall();
                  // } else {
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
                    partnershipapicall();
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
}
