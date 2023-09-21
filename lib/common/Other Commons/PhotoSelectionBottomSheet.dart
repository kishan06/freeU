import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/FilePickerMethod.dart';
import 'package:freeu/Utils/ImagePickerMethod.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/profile/profile.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadBottomSheet {
  showModal(
    BuildContext context,
    Function(String) onImagePicked,
  ) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26.r),
          topRight: Radius.circular(26.r),
        ),
      ),
      builder: (context) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 36.w, vertical: 26.h),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile Photo',
                  style: TextStyle(
                      color: const Color(0xff444444),
                      fontSize: 22.sp,
                      fontFamily: 'Poppins'),
                ),
                sizedBoxHeight(40.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        var result = await ImagePickerMethod()
                            .getImage(ImageSource.camera);
                        onImagePicked(result);
                        Get.back();
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundColor: const Color(0xff143C6D),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xff444444),
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    sizedBoxWidth(36.w),
                    GestureDetector(
                      onTap: () async {
                        var result = await ImagePickerMethod()
                            .getImage(ImageSource.gallery);
                        onImagePicked(result);
                        Get.back();
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundColor: const Color(0xff143C6D),
                            child: Icon(
                              Icons.image_outlined,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Gallery',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xff444444),
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    sizedBoxWidth(36.w),
                    GestureDetector(
                      onTap: () async {
                        var result = await FilePickerMethod().pickFile();
                        onImagePicked(result?.path ?? "");
                        Get.back();
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundColor: const Color(0xff143C6D),
                            child: Icon(
                              Icons.file_copy_outlined,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'File',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xff444444),
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    sizedBoxWidth(36.w),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
