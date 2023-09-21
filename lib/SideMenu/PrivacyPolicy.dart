import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/ViewModel/PrivacyPolicyAndTermsAndConditions/PrivacyPolicyAndTermsAndConditions.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.w),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Privacy policy",
            //         style: TextStyle(
            //             fontFamily: "Poppins",
            //             fontSize: 25.sp,
            //             fontWeight: FontWeight.w500),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  FutureBuilder(
                    future: PrivacyPolicyAndTermsAndCondition().PrivacyApi(),
                    builder: (ctx, snapshot) {
                      if (snapshot.data == null) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(child: CircularProgressIndicator())
                          ],
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(
                              '${snapshot.error} occured',
                              style: TextStyle(fontSize: 18.spMin),
                            ),
                          );
                        }
                      }
                      return Html(data: privacy!.data!.privacyContent);
                    },
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget boldtxt(String txt) {
    return Text(
      txt,
      style: TextStyle(
          fontFamily: "Poppins", fontSize: 22.sp, fontWeight: FontWeight.w500),
    );
  }

  Widget lightTxt(String txt) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 18.sp,
      ),
    );
  }
}
