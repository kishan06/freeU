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
    return Drawer(
      //backgroundColor: Colors.amber,
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              20,
              12,
              20,
              10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.cancel_outlined,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 46,
                  child: GestureDetector(
                    //  onTap: () => Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("Kartikey Adani"),
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
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () => Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("KYC"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("Security"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("How to Invest"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("Update Risk Profile"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("About FreeU"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("Our Insights"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("FAQ's"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("Privacy Policy"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("Terms and condition"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    // Get.toNamed("/kyc1"),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
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
                            Text("Contact Us"),
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
                  height: 5,
                ),
                SizedBox(
                  height: 40,
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
                                  height: 50,
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
                                  height: 10,
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
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: CustomNextButton(
                                        text: "Log out",
                                        ontap: () {
                                          Get.offAll(Login());
                                        },
                                      )),
                                ),
                                SizedBox(
                                  height: 15,
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
                                      height: 50,
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
                        side: BorderSide(color: Color(0xFF707070), width: 0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/logout-svgrepo-com.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Logout"),
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
