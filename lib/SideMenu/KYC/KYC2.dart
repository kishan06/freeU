import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/ExtractPath.dart';
import 'package:freeu/common/Other%20Commons/CustomTextDropDown.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/PhotoSelectionBottomSheet.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/ViewModel/KYC/KycApis.dart';
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:path/path.dart' as path;
import 'package:dio/dio.dart';
import 'package:freeu/Utils/Dialogs.dart';

class KYC2 extends StatefulWidget {
  const KYC2({super.key});

  @override
  State<KYC2> createState() => _KYC2State();
}

class _KYC2State extends State<KYC2> {
  final countrytexteditingcontroller = TextEditingController();
  final residentialstatustexteditingcontroller = TextEditingController();
  final addresstextEditingController = TextEditingController();
  final uploadfronttextEditingController = TextEditingController();
  final uploadback = TextEditingController();
  final pincode = TextEditingController();

  String? documentBack;
  String? documentFront;

  List<String> fileList = [];

  kyc2apicall() async {
    fileList.add(documentFront!);
    fileList.add(documentBack!);
    List<MultipartFile> multipartFiles = [];

    for (String file in fileList) {
      multipartFiles.add(
        await MultipartFile.fromFile(
          file,
          filename: path.basename(file),
        ),
      );
    }
    FormData formData = FormData.fromMap({
      'files': multipartFiles,
      'country': countrytexteditingcontroller.text,
      'pincode': '400078',
      'address': 'Malad',
      'city': 'Mumbai',
      'state_province_region': 'Maharashtra',
      'document_type': 'PNG',
      'document_number': '789132'
    });

    final response = await KycApis().KYC2(formData);
    if (response.status == ResponseStatus.SUCCESS) {
      print("sucess");
      Get.toNamed('/kyc2');
    } else {
      return utils.showToast(response.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "KYC",
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
                child: Center(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          "Step 2 : Complete your KYC",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color(0xFF143C6D),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Address Details",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Provide your current correspondance address and upload an address proof of the same",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Country",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextDropdown(
                            item: ["India", "Australia", "Canada"],
                            // controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          "Pincode",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextFormField(
                          hintText: "Please Enter Pincode",
                          validatorText: "Please Enter Pincode",
                          textEditingController: pincode,
                        ),
                        SizedBox(height: 13.h),
                        Text(
                          "Address - Area and Street",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFormField(
                          cursorColor: const Color(0xFFFFB600),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: addresstextEditingController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10).h,
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0x80000000),
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                            ),
                            hintText: "",
                          ),
                          minLines: 5,
                          maxLines: null,
                        ),
                        SizedBox(height: 13.h),
                        Text(
                          "City",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextDropdown(
                            item: ["Mumbai", "Thane", "Palghar"],
                            // controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(height: 13.h),
                        Text(
                          "State / Province/ Region",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextDropdown(
                            item: ["Maharashtra", "kerala", "Punjab"],
                            //    controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(height: 20.h),
                        Text(
                          "Document Type",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextDropdown(
                            item: ["PDF", "JPEG", "PNG"],
                            // controller: countrytexteditingcontroller,
                            showDropDown: true),
                        SizedBox(height: 10.h),
                        Text(
                          "Document Number",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        CustomTextFormField(
                            hintText: "Please Enter Document Number",
                            validatorText: "Please Enter Document Number"),
                        SizedBox(height: 10.h),
                        Text(
                          "Please upload document front side",
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
                          readOnly: true,
                          cursorColor: const Color(0xFFFFB600),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: uploadfronttextEditingController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.h),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
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
                                      documentFront = result;
                                      var filenameresult =
                                          extractFileName(result);
                                      print("File name is $filenameresult");
                                      uploadfronttextEditingController.text =
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
                          "Please upload document back side(if applicable)",
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
                          readOnly: true,
                          cursorColor: const Color(0xFFFFB600),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: uploadback,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.h),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffCCCCCC), width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0x80000000),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                            ),
                            hintText: "",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  ImageUploadBottomSheet().showModal(context,
                                      (result) {
                                    setState(() {
                                      print("File path is $result");
                                      documentBack = result;
                                      var filenameresult =
                                          extractFileName(result);
                                      print("File name is $filenameresult");
                                      uploadback.text = filenameresult;
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
                          text: "Continue",
                          ontap: () {
                            kyc2apicall();
                            // Get.toNamed('/kyc3');
                          },
                        ),
                        sizedBoxHeight(60.h)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
