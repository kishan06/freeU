import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

import 'sumbit_document.dart';

class PendingRequest extends StatefulWidget {
  const PendingRequest({super.key});

  @override
  State<PendingRequest> createState() => _PendingRequestState();
}

class _PendingRequestState extends State<PendingRequest> {
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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  padding: EdgeInsets.all(15.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.16)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            backgroundColor:
                                Color(0xff143C6D).withOpacity(0.16),
                            child: Icon(
                              Icons.description_outlined,
                              color: Color(0xff143C6D),
                            ),
                          ),
                          sizedBoxWidth(12.w),
                          Text(
                            'Verification Request',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      sizedBoxHeight(10.h),
                      Text(
                        'dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      sizedBoxHeight(10.h),
                      SizedBox(
                        height: 40.h,
                        width: 210.w,
                        child: CustomNextButton(
                          text: 'Submit Document',
                          ontap: () {
                            Get.to(SubmitDocument());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(20.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  padding: EdgeInsets.all(15.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.16)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            backgroundColor:
                                Color(0xff143C6D).withOpacity(0.16),
                            child: Icon(
                              Icons.description_outlined,
                              color: Color(0xff143C6D),
                            ),
                          ),
                          sizedBoxWidth(12.w),
                          Text(
                            'Documents received\nconfirmation request',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      sizedBoxHeight(10.h),
                      Text(
                        'dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      sizedBoxHeight(10.h),
                      Row(
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 95.w,
                            child: CustomNextButton(text: 'Yes'),
                          ),
                          sizedBoxWidth(15.w),
                          SizedBox(
                            width: 95,
                            height: 40.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 220, 220, 226),
                                backgroundColor: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: AppColors.blue143C6D),
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'No',
                                style: TextStyle(
                                  color: AppColors.blue143C6D,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
