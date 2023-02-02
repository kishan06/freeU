import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Categories/FractionalRealEstateProperty/FractionalRealEstateProperty1.dart';
import 'package:freeu/HomePage/Categories/FractionalRealEstateProperty/FractionalRealEstateProperty2.dart';
import 'package:freeu/HomePage/Categories/PeerLendingAssets/PeerLendingAsset1.dart';
import 'package:freeu/HomePage/Categories/PeerLendingAssets/PeerLendingAsset2.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatDetails.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatPage.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Homepage2.dart';
import 'package:freeu/HomePage/Investments/CurrentInvestment.dart';
import 'package:freeu/HomePage/Investments/InvestmentMain.dart';
import 'package:freeu/HomePage/Investments/PreviouslyInvestedProducts.dart';
import 'package:freeu/HomePage/Investments/SuggestedInvestedProducts.dart';
import 'package:freeu/HomePage/SuccessStories.dart';
import 'package:freeu/HomePage/SuccessStoriesDetails.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/SideMenu/About.dart';
import 'package:freeu/SideMenu/ContactUs.dart';
import 'package:freeu/SideMenu/HowToInvest.dart';
import 'package:freeu/SideMenu/KYC/KYC1.dart';
import 'package:freeu/SideMenu/KYC/KYC2.dart';
import 'package:freeu/SideMenu/KYC/KYC3.dart';
import 'package:freeu/SideMenu/KYC/KYC4.dart';
import 'package:freeu/SideMenu/PrivacyPolicy.dart';
import 'package:freeu/SideMenu/TermsAndCondition.dart';
import 'package:freeu/SideMenu/faqs.dart';
import 'package:freeu/SideMenu/InsightsInner.dart';
import 'package:freeu/SideMenu/insights.dart';
import 'package:freeu/SideMenu/security.dart';
import 'package:freeu/SideMenu/UpdateRiskProfile.dart';
import 'package:freeu/login/OTPVerification.dart';
import 'package:freeu/login/PhoneVerification.dart';
import 'package:freeu/login/forgotPassword.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/login/loginUsingOTP.dart';
import 'package:freeu/login/resetPassword.dart';
import 'package:freeu/profile/kyctabs1.dart';
import 'package:freeu/profile/kyctabs2.dart';
import 'package:freeu/profile/kyctabs3.dart';
import 'package:freeu/profile/kyctabs4.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/signUp/CompleteProfile.dart';
import 'package:freeu/signUp/SecurityFirst.dart';
import 'package:freeu/signUp/SecurityQuestion.dart';
import 'package:freeu/signUp/TouchId.dart';
import 'package:freeu/signUp/signUp.dart';
import 'package:freeu/login/splash.dart';
import 'package:freeu/login/splashslider.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FreeU',
        initialRoute: '/',
        theme: ThemeData(
          fontFamily: "Poppins",
        ),
        getPages: [
          GetPage(name: '/', page: () => Splash()),
          GetPage(name: '/splash', page: () => Splash()),
          GetPage(name: '/splashslider', page: () => Splashslider()),
          GetPage(name: '/login', page: () => Login()),
          GetPage(name: '/signup', page: () => SignUp()),
          GetPage(name: '/loginUsingOTP', page: () => LoginUsingOTP()),
          GetPage(name: '/forgotPassword', page: () => forgotPassword()),
          GetPage(name: '/otpverification', page: () => otpVerification()),
          GetPage(name: '/phoneverification', page: () => PhoneVerification()),
          GetPage(name: '/resetpassword', page: () => ResetPassword()),
          GetPage(name: '/securityquestion', page: () => SecurityQuestion()),
          GetPage(name: '/securityfirst', page: () => SecurityFirst()),
          GetPage(name: '/completeprofile', page: () => CompleteProfile()),
          GetPage(name: '/touchid', page: () => TouchId()),
          GetPage(name: '/homepage', page: () => HomePage()),
          GetPage(name: '/kyc1', page: () => KYC1()),
          GetPage(name: '/kyc2', page: () => KYC2()),
          GetPage(name: '/kyc3', page: () => KYC3()),
          GetPage(name: '/kyc4', page: () => KYC4()),
          GetPage(name: '/notificationpage', page: () => NotificationPage()),
          GetPage(name: '/contactus', page: () => ContactUs()),
          GetPage(name: '/howtoinvest', page: () => HowToInvest()),
          GetPage(name: '/categoriesmain', page: () => CategoriesMain()),
          GetPage(
              name: '/fractionalrealestateproperty1',
              page: () => FractionalRealEstateProperty1()),
          GetPage(
              name: '/fractionalrealestateproperty2',
              page: () => FractionalRealEstateProperty2()),
          GetPage(name: '/peerlendingasset1', page: () => PeerLendingAsset1()),
          GetPage(name: '/peerlendingasset2', page: () => PeerLendingAsset2()),
          GetPage(name: '/investmentmain', page: () => InvestmentMain()),
          GetPage(name: '/currentinvestment', page: () => CurrentInvestment()),
          GetPage(
              name: '/previouslyinvestedproducts',
              page: () => PreviouslyInvestedProducts()),
          GetPage(
              name: '/suggestedinvestedproducts',
              page: () => SuggestedInvestedProducts()),
          GetPage(name: '/chatpage', page: () => ChatPage()),
          GetPage(name: '/chatdetailpage', page: () => ChatDetailPage()),
          GetPage(name: '/homepage2', page: () => Home2()),
          GetPage(name: '/success', page: () => Success()),
          GetPage(
              name: '/successstoriesdetails',
              page: () => SuccessStoriesDetails()),
          GetPage(name: '/myprofile', page: () => Profile()),
          GetPage(name: '/about', page: () => About()),
          GetPage(name: '/faqs', page: () => FAQs()),
          GetPage(name: '/security', page: () => Security()),
          GetPage(name: '/updaterisk', page: () => UpdateRishProfile()),
          GetPage(name: '/insights', page: () => Insights()),
          GetPage(name: '/insightsinner', page: () => InsightsInner()),
          GetPage(name: '/privacypolicy', page: () => PrivacyPolicy()),
          GetPage(name: '/termsandconditions', page: () => TermsAndCondition()),
          GetPage(name: '/kyctab1', page: () => KYCtabs1()),
          GetPage(name: '/kyctab2', page: () => KYCTabs2()),
          GetPage(name: '/kyctab3', page: () => KYCTabs3()),
          GetPage(name: '/kyctab4', page: () => KYCTabs4()),
        ],
      ),
      designSize: Size(390, 844),
    );
  }
}
