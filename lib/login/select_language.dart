import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/login/splashslider.dart';
import 'package:freeu/screens/side_menu.dart';
import 'package:get/get.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Language'.tr),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Center(
                            child: Text(
                              'Select Language'.tr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: const Color(0xFF444444)),
                            ),
                          ),
                          SizedBox(
                            height: 37.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    var locale = const Locale('en', 'US');
                                    Get.updateLocale(locale);
                                    language = 'English';
                                  });
                                  Get.back();
                                },
                                child: Text('English'.tr)),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50.h,
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    var locale = const Locale('hi', 'IN');
                                    Get.updateLocale(locale);
                                    setState(() {
                                      language = 'हिंदी';
                                    });
                                    Get.back();
                                  },
                                  child: Text(
                                    "Hindi".tr,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Text(
                    'Select Language'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  sizedBoxHeight(5.h),
                  Text(
                    language == null ? 'English'.tr : '$language',
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            sizedBoxHeight(50.h),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: CustomNextButton(
                text: 'Continue'.tr,
                ontap: () {
                  Get.to(
                    const Splashslider(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
