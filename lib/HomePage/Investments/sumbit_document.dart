import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';

class SubmitDocument extends StatefulWidget {
  const SubmitDocument({super.key});

  @override
  State<SubmitDocument> createState() => _SubmitDocumentState();
}

class _SubmitDocumentState extends State<SubmitDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Pending Requests",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          sizedBoxHeight(20.h),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Text(
                    'Upload your files',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                    ),
                  ),
                  sizedBoxHeight(15.h),
                  Text(
                    'Please upload your Aadhar card & \nPan card in JPG format',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff616161),
                      fontSize: 15.sp,
                    ),
                  ),
                  sizedBoxHeight(15.h),
                  DottedBorder(
                    color: Colors.black.withOpacity(0.6),
                    borderType: BorderType.RRect,
                    radius: Radius.circular(8.r),
                    dashPattern: [8, 4],
                    strokeWidth: 2,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 30.h),
                      child: Column(
                        children: [
                          Icon(
                            Icons.folder_copy,
                            color: AppColors.blue143C6D,
                            size: 60.h,
                          ),
                          sizedBoxHeight(20.h),
                          Text(
                            'Drag & Drop your files here',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Color(0xff616161),
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  sizedBoxHeight(30.h),
                  CustomNextButton(
                    text: 'Submit documents',
                    ontap: () {
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
                            color: Color(0xFFFEFEFE),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.file_copy_sharp,
                                  color: AppColors.blueD_00344B,
                                  size: 80.sp,
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Center(
                                  child: Text(
                                    'Thankyou for uploading documents',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 22.sp,
                                        color: Color(0xFF444444)),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
