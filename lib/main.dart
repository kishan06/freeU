import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Global.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20I/VentureViewMore.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20III/PrivateViewproducts.dart';
import 'package:freeu/HomePage/Categories/Alternative/AlternativeCategories.dart';
import 'package:freeu/HomePage/Categories/Alternative/Debtfundpage.dart';
import 'package:freeu/HomePage/Categories/Alternative/Distressedpage.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalpage.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalproperties.dart';
import 'package:freeu/HomePage/Categories/Alternative/Fractionalrealestate.dart';
import 'package:freeu/HomePage/Categories/Alternative/PrivateEquitydeals.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/PrivateEquityfund.dart';
import 'package:freeu/HomePage/Categories/Alternative/Realestatepage.dart';
import 'package:freeu/HomePage/Categories/CategoriesMain.dart';
import 'package:freeu/HomePage/Categories/High_yield/high_yield_more_products.dart';
import 'package:freeu/HomePage/Categories/InvoiceDiscounting/Invoiceproperties.dart';
import 'package:freeu/HomePage/Categories/Lease_based_Categories/Lease%20view%20more%20product/LeaseViewMoreProduct.dart';
import 'package:freeu/HomePage/Categories/Lease_based_Categories/Lease_based_properties.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatDetails.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatPage.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/HomePage/Investments/CurrentInvestment.dart';
import 'package:freeu/HomePage/Investments/PreviouslyInvestedProducts.dart';
import 'package:freeu/HomePage/Investments/SuggestedInvestedProducts.dart';
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
import 'package:freeu/common/Categories%20Common%20Files/coming_soon.dart';
import 'package:freeu/login/OTPVerification.dart';
import 'package:freeu/login/PhoneVerification.dart';
import 'package:freeu/login/forgotPassword.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/login/loginUsingOTP.dart';
import 'package:freeu/login/resetPassword.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/screens/entry_point.dart';
import 'package:freeu/screens/side_menu.dart';
import 'package:freeu/HomePage/Categories/Alternative/AIF%20Cateogary%20II/vertical_slider.dart';
import 'package:freeu/signUp/CompleteProfile.dart';
import 'package:freeu/signUp/SecurityFirst.dart';
import 'package:freeu/signUp/SecurityQuestion.dart';
import 'package:freeu/signUp/TouchId.dart';
import 'package:freeu/signUp/signUp.dart';
import 'package:freeu/login/splashslider.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary I/Angel Fund/AngelFundMoreProducts.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary I/Angel Fund/AngelFundViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary I/Infrastructure Fund/infrastructure_viewmore_product.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary I/InfrastructureViewMore.dart';
import 'HomePage/Categories/Alternative/AIF Cateogary I/Venture Capital/venture_viewmore_product.dart';
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
import 'HomePage/Categories/CleanGreen/clean green view more product/CleanGreenViewMoreProduct.dart';
import 'HomePage/Categories/PeerLendingAssets/Peer View More product/PeerViewMoreProduct.dart';
import 'HomePage/Categories/SecuredDebt/Securitizedproperties.dart';
import 'HomePage/Categories/Venture debt/VentureProduct/ViewMoreProdcutVenture.dart';
import 'HomePage/Categories/revenue_based_financing/revenueproperties.dart';

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
  bool? onBoardDone;
  @override
  void initState() {
    super.initState();
    checkOnboard();
  }

  checkOnboard() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    onBoardDone = prefs.getBool('OnBoardDone') ?? false;
    token = prefs.getString('token');
    myusername = prefs.getString('name');
    print(onBoardDone);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("build $onBoardDone");

    return onBoardDone == null
        ? CircularProgressIndicator()
        : ScreenUtilInit(
            builder: (BuildContext context, Widget? child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'FreeU',
              initialRoute: onBoardDone ?? false ? '/EntryPoint' : '/',
              theme: ThemeData(
                scaffoldBackgroundColor: AppColors.white,
                fontFamily: "Poppins",
              ),
              getPages: [
                GetPage(name: '/SideBar', page: () => const SideBar()),
                GetPage(name: '/EntryPoint', page: () => EntryPoint()),
                GetPage(name: '/Insights', page: () => const Insights()),
                GetPage(
                    name: '/VerticalSlider',
                    page: () => const VerticalSlider()),
                GetPage(name: '/', page: () => const Splashslider()),
                GetPage(name: '/login', page: () => const Login()),
                GetPage(name: '/signup', page: () => const SignUp()),
                GetPage(
                    name: '/loginUsingOTP', page: () => const LoginUsingOTP()),
                GetPage(
                    name: '/forgotPassword',
                    page: () => const forgotPassword()),
                GetPage(
                    name: '/otpverification',
                    page: () => const otpVerification()),
                GetPage(
                    name: '/phoneverification',
                    page: () => const PhoneVerification()),
                GetPage(
                    name: '/resetpassword', page: () => const ResetPassword()),
                GetPage(
                    name: '/securityquestion',
                    page: () => const SecurityQuestion()),
                GetPage(
                    name: '/securityfirst', page: () => const SecurityFirst()),
                GetPage(
                    name: '/completeprofile',
                    page: () => const CompleteProfile()),
                GetPage(name: '/touchid', page: () => const TouchId()),
                GetPage(name: '/homepage', page: () => const HomePage()),
                GetPage(name: '/kyc1', page: () => const KYC1()),
                GetPage(name: '/kyc2', page: () => const KYC2()),
                GetPage(name: '/kyc3', page: () => const KYC3()),
                GetPage(name: '/kyc4', page: () => const KYC4()),
                GetPage(
                    name: '/notificationpage',
                    page: () => const NotificationPage()),
                GetPage(name: '/contactus', page: () => const ContactUs()),
                GetPage(name: '/howtoinvest', page: () => const HowToInvest()),
                GetPage(
                    name: '/categoriesmain',
                    page: () => const CategoriesMain()),
                GetPage(
                    name: '/currentinvestment',
                    page: () => const CurrentInvestment()),
                GetPage(
                    name: '/previouslyinvestedproducts',
                    page: () => const PreviouslyInvestedProducts()),
                GetPage(
                    name: '/suggestedinvestedproducts',
                    page: () => const SuggestedInvestedProducts()),
                GetPage(name: '/chatpage', page: () => const ChatPage()),
                GetPage(
                    name: '/chatdetailpage',
                    page: () => const ChatDetailPage()),
                GetPage(name: '/homepage2', page: () => EntryPoint()),
                GetPage(name: '/myprofile', page: () => const Profile()),
                GetPage(name: '/about', page: () => const About()),
                GetPage(name: '/faqs', page: () => const FAQs()),
                GetPage(name: '/security', page: () => const Security()),
                GetPage(
                    name: '/updaterisk', page: () => const UpdateRishProfile()),
                GetPage(name: '/insights', page: () => const Insights()),
                GetPage(
                    name: '/insightsinner', page: () => const InsightsInner()),
                GetPage(
                    name: '/privacypolicy', page: () => const PrivacyPolicy()),
                GetPage(
                    name: '/termsandconditions',
                    page: () => const TermsAndCondition()),
                GetPage(name: '/userlogged', page: () => const User()),
                GetPage(
                    name: '/altenativecategories',
                    page: () => const AlternativeCategories()),
                GetPage(
                    name: '/altenativecategories2',
                    page: () => const AlternativeCategories2()),

                GetPage(
                    name: '/fullyfundedbank',
                    page: () => const FullyFundedBank()),

                GetPage(
                    name: '/privateequityfund',
                    page: () => const PrivateEquityFund()),

                GetPage(
                    name: '/privateequityfunddeals',
                    page: () => const PrivateEquityFundDeals()),

                GetPage(name: '/debtfund', page: () => const Debtfund()),

                GetPage(
                    name: '/realestatepage',
                    page: () => const RealEstatepage()),

                GetPage(
                    name: '/distressedasset',
                    page: () => const DistressedAsset()),

                GetPage(
                    name: '/DebtFundProd', page: () => const DebtFundProd()),

                GetPage(
                    name: '/fractionalrealpage',
                    page: () => const FractionalRealestate()),

                GetPage(
                    name: '/fractionalpropertiespage',
                    page: () => const Fractionalproperties()),

                // GetPage(
                //     name: '/propertiesinvestment',
                //     page: () => PropertiesInvestment()),

                GetPage(
                    name: '/fractionalrealestate',
                    page: () => const FractionalRealEstate2()),

                // GetPage(
                //     name: '/highyieldproperties', page: () => HighYieldProperties()),

                // GetPage(
                //   name: '/highyieldproperties',
                //   page: () => HighYieldProperties()),

                GetPage(
                    name: '/debtfundviewmore',
                    page: () => const DebtFundViewMore()),
                GetPage(
                    name: '/realestateaifviewmore',
                    page: () => const RealEstateAIFViewMore()),
                GetPage(
                    name: '/funddistressedassetsviewmore',
                    page: () => const FundForDistressedAssetsViewMore()),
                GetPage(
                    name: '/ventureviewmore',
                    page: () => const VentureViewMore()),
                GetPage(
                    name: '/infrastructureviewmore',
                    page: () => const InfrastructureViewMore()),
                GetPage(
                    name: '/angelfundviewmore',
                    page: () => const AngelFundViewMore()),
                GetPage(
                    name: '/hedgeviewmore', page: () => const HedgeViewMore()),
                GetPage(
                    name: '/privatepublicequityviewmore',
                    page: () => const PrivatePublicEquityViewMore()),

                GetPage(
                    name: '/leasebasedproperties',
                    page: () => const LeaseBasedProperties()),
                GetPage(
                    name: '/AngelFundMoreProduct',
                    page: () => const AngelFundMoreProduct()),

                GetPage(
                    name: '/hedgeviewproducts',
                    page: () => const HedgeViewmoreProducts()),

                GetPage(
                    name: '/privateinvestmentproducts',
                    page: () => const PrivateInvestmentProducts()),

                GetPage(
                    name: '/realestateviewmoreproducts',
                    page: () => const RealEstateViewmoreProducts()),

                GetPage(
                    name: '/cleangreenviewproducts',
                    page: () => const CleanGreenViewMoreProduct()),

                GetPage(
                    name: '/securedebtproducts',
                    page: () => const SecuritizedProperties()),

                GetPage(
                    name: '/highyieldproducts',
                    page: () => const HighYieldMoreProduct()),

                GetPage(
                    name: '/ventureviewproduct',
                    page: () => const VeiwMoreProductVenture()),

                GetPage(
                    name: '/leaseproducts',
                    page: () => const LeaseViewMoreProduct()),

                GetPage(
                    name: '/invoiceviewproductsproducts',
                    page: () => const InvoiceProperties()),

                GetPage(
                    name: '/peerproducts',
                    page: () => const PeerViewMoreProduct()),

                GetPage(
                    name: '/revenueviewproducts',
                    page: () => const RevenueProperties()),

                GetPage(
                    name: '/VentureViewMoreProduct',
                    page: () => const VentureViewMoreProduct()),

                GetPage(
                    name: '/InfractureViewMoreProduct',
                    page: () => const InfractureViewMoreProduct()),

                GetPage(
                    name: '/comingsoon',
                    page: () => const ComingSoon()),    
              ],
            ),
            designSize: const Size(390, 844),
          );
  }
}
