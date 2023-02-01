import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/login/login.dart';
import 'package:get/get.dart';

class NavDrawer extends StatefulWidget {
  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  // Future<void> _logoutstate() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   await preferences.remove('token');
  //   await preferences.remove('video');
  //   //  Database().deleteStorage();
  //   // setState(() {
  //   //   Get.isDarkMode ? ThemeServices().switchTheme() : null;
  //   // });
  // }
  // @override
  // void initState(){
  //   super.initState();
  //   SystemChannels.textInput.invokeMethod('TextInput.hide');
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        //backgroundColor: Colors.amber,
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                20,
                20,
                10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 56.h,
                    child: GestureDetector(
                      //  onTap: () => Get.toNamed("/kyc1"),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/avatar.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Kartikey Adani",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.edit_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () => Get.toNamed("/kyc1"),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/navbarkyc.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "KYC",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/security');
                      },
                      // Get.toNamed("/kyc1"),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/secure-shield.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Security",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed("/howtoinvest");
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/investment.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "How to Invest",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/updaterisk');
                      },
                      // Get.toNamed("/kyc1"),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/risks.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Update Risk Profile",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed("/about");
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/information.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "About FreeU",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/insights');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/idea.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Our Insights",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/faqs');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/question.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "FAQ's",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed("/privacypolicy");
                      },
                      // Get.toNamed("/kyc1"),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/privacy-policy.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/termsandconditions');
                      },
                      // Get.toNamed("/kyc1"),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                  'assets/images/terms-and-conditions.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Terms and condition",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed("/contactus");
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/contact-us.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Contact Us",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: GestureDetector(
                      onTap: () {
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
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Center(
                                    child: Text(
                                      'Log Out?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Center(
                                    child: Text(
                                      'Are you sure you want to log out?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          color: Color(0xFF444444)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: SizedBox(
                                        width: double.infinity,
                                        height: 50.h,
                                        child: CustomNextButton(
                                          text: "Log out",
                                          ontap: () {
                                            Get.offAll(Login());
                                          },
                                        )),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()));
                                      },
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 50.h,
                                        child: Text(
                                          "Cancel",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            color: Color(0xFF585858),
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
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color(0xFF707070), width: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                  'assets/images/logout-svgrepo-com.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Logout",
                                style: TextStyle(
                                    fontSize: 15.sm, fontFamily: "Poppins"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListTiles extends StatelessWidget {
  CustomListTiles({
    Key? key,
    required this.leadingimage,
    required this.title,
    required this.isimage,
    required this.sizefactor,
    required this.showTrailingText,
    this.ontap,
  }) : super(key: key);

  final String leadingimage;
  final String title;
  final double sizefactor;
  bool isimage;

  bool showTrailingText;

  final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap!.call();
      },
      child: SizedBox(
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 5.0,
              left: 5,
            ),
            child: SizedBox(
                height: sizefactor,
                width: sizefactor,
                child: isimage
                    ? Image.asset(leadingimage, color: Colors.black)
                    : SvgPicture.asset(leadingimage, color: Colors.black)),
          ),
          title: Text(
            title,
          ),
          trailing: null,
        ),
      ),
    );
  }
}
