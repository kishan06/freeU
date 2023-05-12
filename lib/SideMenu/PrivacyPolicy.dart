import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';

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
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Privacy policy",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        lightTxt(
                          "Blue Feather Ventures Private Limited is committed to protecting the privacy and security of our users' personal information. This Privacy Policy explains how we collect, use, and disclose personal information collected through our FreeU application (the “App”)."
                          "\n\nWe recognize the importance of maintaining your privacy. We value your discretion and appreciate your trust and confidentiality in us. We acknowledge the importance of protecting and keeping strictly private, any, and all details pertaining to your personal, financial, and transactional information that have been shared with us. We will always safeguard your right to privacy, and only use the information you provide in ways that are beneficial to you.F",
                        ),
                        sizedBoxHeight(20.h),
                        boldtxt('COLLECTION AND USE OF PERSONAL INFORMATION'),
                        sizedBoxHeight(20.h),
                        lightTxt(
                          "We may collect personal information from you when you create an account or use the App, including your name, email address, KYC details and payment information. We may also collect information about your device, such as your IP address and device type. We shall only use the information you provide to us, for the purpose of providing you with the highest quality of services, that you have requested from us, within the scope of our professional commitment. We furthermore promise to ensure we only request as much information from you as is necessary, either under the existing rules, regulations, and laws of India, and also, in order to fulfill our duties, and professional commitment to the best of our abilities, to serve your purpose.",
                        ),
                        sizedBoxHeight(20.h),
                        boldtxt('DISCLOSURE OF PERSONAL INFORMATION'),
                        lightTxt(
                          "We may share your personal information with third-party service providers that help us operate and improve our services service that is beneficial and profitable to you, such as payment processors, investment platforms, and customer support providers. We may also share your information with legal and regulatory authorities as required by law."
                          "\n\nWe do not sell or rent your personal information to third parties for marketing purposes. We further promise to impose strict confidentiality standards and practices on the third party to protect your privacy.",
                        ),
                        sizedBoxHeight(20.h),
                        boldtxt('DATA RETENTION AND SECURITY'),
                        sizedBoxHeight(20.h),
                        lightTxt(
                          "We will retain your personal information for as long as necessary to provide the App and comply with legal and regulatory requirements. At Blue Feather, we take all suitable steps to safeguard, protect, and maintain your personal information and data by reasonable security safeguards against loss/theft, as well as unauthorized use and access, disclosure, replication, use or alteration. "
                          "\n\nBut keeping in mind the open nature of the internet, some data may occasionally move over other networks that are without any security measures, and as such maybe used, accessed by other people who are not the intended recipients of the data. In such cases where privacy and security breaches occur, Blue Feather will not take any responsibility for any losses and damages that are incurred by you. If you click on one of the links to third party websites, you may be taken to websites we, at Blue Feather, do not control. This policy does not apply to the privacy practices of those websites. Read the privacy policy of other websites carefully. We are not responsible for these third-party sites.",
                        ),
                        sizedBoxHeight(20.h),
                        boldtxt('YOUR CHOICES AND RIGHTS'),
                        sizedBoxHeight(20.h),
                        lightTxt(
                          'You may choose to opt out of certain types of communications from us, such as marketing emails. You may also have the right to access, correct, or delete your personal information. To exercise these rights, please contact us using the contact information provided below.',
                        ),
                        sizedBoxHeight(20.h),
                        boldtxt('CHANGES TO THIS PRIVACY POLICY'),
                        sizedBoxHeight(20.h),
                        lightTxt(
                          "We also reserve the right to change our privacy policy any time with or without notifying users of our new privacy statement. This privacy policy is not intended to and does not create any contractual or other legal rights in or on behalf of any party. This privacy policy applies to the current, and former visitors to our website. By visiting and/or using our website, you agree with this privacy policy.",
                        ),
                        sizedBoxHeight(20.h),
                        boldtxt('CONTACT US'),
                        sizedBoxHeight(20.h),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'If you have any questions about this Policy or other privacy concerns, you can also email us at ',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'info@freeu.in',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                  fontSize: 18.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  sizedBoxHeight(20.h)
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
