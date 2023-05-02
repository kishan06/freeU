import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20I/VentureViewMore.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20III/PrivateViewproducts.dart';
import 'package:freeu/HomePage/Categories/Alternative/AlternativeCategories.dart';
import 'package:freeu/HomePage/Categories/Alternative/Debtfundpage.dart';
import 'package:freeu/HomePage/Categories/Alternative/Distressedpage.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalpage.dart';
//import 'package:freeu/HomePage/Categories/FractionalNewdesign/Fractionalpage.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalproperties.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalrealestate.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/PrivateEquity.dart';
import 'package:freeu/HomePage/Categories/Alternative/PrivateEquitydeals.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/PrivateEquityfund.dart';
import 'package:freeu/HomePage/Categories/Alternative/Realestatepage.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Categories/FractionalRealEstateProperty/PropertiesInvestment.dart';

import 'package:freeu/HomePage/Categories/High_yield/high_yield_more_products.dart';
import 'package:freeu/HomePage/Categories/Lease_based_Categories/Lease_based_properties.dart';

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
import 'package:freeu/SideMenu/FAQ/faqs.dart';
import 'package:freeu/SideMenu/InsightsInner.dart';
import 'package:freeu/SideMenu/insights.dart';
import 'package:freeu/SideMenu/security.dart';
import 'package:freeu/SideMenu/UpdateRiskProfile.dart';
import 'package:freeu/SideMenu/user_logged.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/login/OTPVerification.dart';
import 'package:freeu/login/PhoneVerification.dart';
import 'package:freeu/login/forgotPassword.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/login/loginUsingOTP.dart';
import 'package:freeu/login/resetPassword.dart';
import 'package:freeu/login/select_language.dart';
import 'package:freeu/profile/kyctabs1.dart';
import 'package:freeu/profile/kyctabs2.dart';
import 'package:freeu/profile/kyctabs3.dart';
import 'package:freeu/profile/kyctabs4.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/screens/entry_point.dart';
import 'package:freeu/screens/main_screen.dart';
import 'package:freeu/screens/side_menu.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/vertical_slider.dart';
import 'package:freeu/signUp/CompleteProfile.dart';
import 'package:freeu/signUp/SecurityFirst.dart';
import 'package:freeu/signUp/SecurityQuestion.dart';
import 'package:freeu/signUp/TouchId.dart';
import 'package:freeu/signUp/signUp.dart';
import 'package:freeu/login/splash.dart';
import 'package:freeu/login/splashslider.dart';
import 'package:get/get.dart';

import 'HomePage/Categories/Alternative/AIF Cateogary I/Angel Fund/AngelFundMoreProducts.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary I/Angel Fund/AngelFundViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary I/InfrastructureViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary II/DebtFundViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary II/FundForDistressedAssetsViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary II/RealEstateAIFViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary II/AlternativeCategories2.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary II/RealEstateProducts.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary II/debt_fund_pro.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary III/HedgeViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary III/HedgeViewProducts.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary III/PrivatePublicEquityViewMore.dart';
import 'HomePage/Categories/Alternative/FullyFundedBank.dart';
import 'common/Language/LocalString.dart';

int bottomIndex = 0;

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
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
        translations: LocalString(),
        locale: const Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        title: 'FreeU',
        // initialRoute: '/SideBar',
        initialRoute: '/',

        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          fontFamily: "Poppins",
        ),
        getPages: [
          GetPage(name: '/SideBar', page: () => SideBar()),
          GetPage(name: '/EntryPoint', page: () => EntryPoint()),

          GetPage(name: '/Insights', page: () => Insights()),

          GetPage(name: '/VerticalSlider', page: () => VerticalSlider()),
          GetPage(name: '/', page: () => SelectLanguage()),
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

          //      GetPage(name: '/peerlendingasset1', page: () => PeerLendingAsset1()),
          //    GetPage(name: '/peerlendingasset2', page: () => PeerLendingAsset2()),
          // GetPage(name: '/investmentmain', page: () => InvestmentMain()),
          GetPage(name: '/currentinvestment', page: () => CurrentInvestment()),
          GetPage(
              name: '/previouslyinvestedproducts',
              page: () => PreviouslyInvestedProducts()),
          GetPage(
              name: '/suggestedinvestedproducts',
              page: () => SuggestedInvestedProducts()),
          GetPage(name: '/chatpage', page: () => ChatPage()),
          GetPage(name: '/chatdetailpage', page: () => ChatDetailPage()),
          GetPage(name: '/homepage2', page: () => EntryPoint()),
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
          GetPage(name: '/userlogged', page: () => User()),
          GetPage(
              name: '/altenativecategories',
              page: () => AlternativeCategories()),

          // GetPage(name: '/privateequity', page: () => PrvateEquity()),

          GetPage(
              name: '/altenativecategories2',
              page: () => AlternativeCategories2()),

          GetPage(name: '/fullyfundedbank', page: () => FullyFundedBank()),

          GetPage(name: '/privateequityfund', page: () => PrivateEquityFund()),

          GetPage(
              name: '/privateequityfunddeals',
              page: () => PrivateEquityFundDeals()),

          GetPage(name: '/debtfund', page: () => Debtfund()),

          GetPage(name: '/realestatepage', page: () => RealEstatepage()),

          GetPage(name: '/distressedasset', page: () => DistressedAsset()),

          GetPage(name: '/DebtFundProd', page: () => DebtFundProd()),

          GetPage(
              name: '/fractionalrealpage', page: () => FractionalRealestate()),

          GetPage(
              name: '/fractionalpropertiespage',
              page: () => Fractionalproperties()),

          // GetPage(
          //     name: '/propertiesinvestment',
          //     page: () => PropertiesInvestment()),

          GetPage(
              name: '/fractionalrealestate',
              page: () => FractionalRealEstate2()),

          // GetPage(
          //     name: '/highyieldproperties', page: () => HighYieldProperties()),

          // GetPage(
          //   name: '/highyieldproperties',
          //   page: () => HighYieldProperties()),

          GetPage(name: '/debtfundviewmore', page: () => DebtFundViewMore()),
          GetPage(
              name: '/realestateaifviewmore',
              page: () => RealEstateAIFViewMore()),
          GetPage(
              name: '/funddistressedassetsviewmore',
              page: () => FundForDistressedAssetsViewMore()),
          GetPage(name: '/ventureviewmore', page: () => VentureViewMore()),
          GetPage(
              name: '/infrastructureviewmore',
              page: () => InfrastructureViewMore()),
          GetPage(name: '/angelfundviewmore', page: () => AngelFundViewMore()),
          GetPage(name: '/hedgeviewmore', page: () => HedgeViewMore()),
          GetPage(
              name: '/privatepublicequityviewmore',
              page: () => PrivatePublicEquityViewMore()),

          GetPage(
              name: '/leasebasedproperties',
              page: () => LeaseBasedProperties()),
          GetPage(
              name: '/AngelFundMoreProduct',
              page: () => AngelFundMoreProduct()),

          GetPage(
              name: '/hedgeviewproducts', page: () => HedgeViewmoreProducts()),

          GetPage(
              name: '/privateinvestmentproducts',
              page: () => PrivateInvestmentProducts()),

          GetPage(
              name: '/realestateviewmoreproducts',
              page: () => RealEstateViewmoreProducts()),
        ],
      ),
      designSize: Size(390, 844),
    );
  }
}
