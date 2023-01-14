import 'package:flutter/material.dart';
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
                  height: 45,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Kartikey Adani',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ProfileMain()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'KYC',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        Get.toNamed("/kyc1")
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Security',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'How to Invest',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Update Risk Profile',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'About FreeU',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Our Insights',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        "FAQ's",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Privacy Policy',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Terms and condition',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF707070), width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Contact Us',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PiRecommended()))
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Color(0xFF707070),
                      ),
                      title: Text(
                        'Logout',
                      ),
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
                                          fontSize: 20, color: Colors.black),
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
                                            fontSize: 18,
                                            color: Get.isDarkMode
                                                ? Colors.white
                                                : Color(0xFF585858),
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
