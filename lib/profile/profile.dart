// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/SideMenu/user_logged.dart';
import 'package:freeu/common/CustomTextFormField.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/profile/kyctabs2.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../common/CustomTextDropDown.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isSwitched = false;

  void _selectedTab(int index) {
    setState(() {
      // _lastSelected = 'TAB: $index';
      // print(_lastSelected);

      switch (index) {
        case 0:
          {
            Get.toNamed("/homepage");
          }
          break;

        case 1:
          {
            Get.toNamed('/categoriesmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityFirst())));
          }
          break;

        case 2:
          {
            Get.toNamed('/investmentmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityQuestion())));
          }
          break;
        case 3:
          {
            Get.toNamed('/chatpage');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => Login())));
          }
          break;
        case 4:
          {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => SignUp())));
          }
          break;
        default:
          {
            throw Error();
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _key,
        backgroundColor: Color(0xFF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          shadowColor: Colors.black,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              'Your Profile',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  _key.currentState!.openDrawer();
                },
                icon: SvgPicture.asset("assets/images/menu.svg"),
                color: Colors.black,
                iconSize: 25,
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                  child: Text(
                'Profile',
                style: TextStyle(color: Color(0xff000000), fontSize: 16),
              )),
              Tab(
                  child: Text(
                'KYC',
                style: TextStyle(color: Color(0xff000000), fontSize: 16),
              )),
              Tab(
                  child: Text(
                'Risk Profile',
                style: TextStyle(color: Color(0xff000000), fontSize: 16),
              )),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          items: [
            BottomNavigationBarItem(
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFFEEBBD),
                ),
                height: 20,
                width: 50,
                child: SvgPicture.asset(
                  'assets/images/home-svgrepo-com.svg',
                  height: 20,
                ),
              ),
              icon: SvgPicture.asset(
                'assets/images/home-svgrepo-com.svg',
                height: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/category-alt-svgrepo-com.svg',
                height: 20,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/money-dollar-coin-svgrepo-com.svg',
                height: 20,
              ),
              label: 'Investments',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/chat-left-3-svgrepo-com (2).svg',
                height: 20,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFFEEBBD),
                ),
                child: SvgPicture.asset(
                  'assets/images/profile.svg',
                  height: 20,
                ),
              ),
              icon: SvgPicture.asset(
                'assets/images/profile.svg',
                height: 20,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: 4,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          onTap: (index) {
            print(index);
            _selectedTab(index);
          },
          type: BottomNavigationBarType.fixed,
        ),
        body: const TabBarView(
          children: [
            profiletab(),
            KYCtabs(),
            riskprofile(),
          ],
        ),
      ),
    );
  }
}

class profiletab extends StatefulWidget {
  const profiletab({
    Key? key,
  }) : super(key: key);

  @override
  State<profiletab> createState() => _profiletabState();
}

class _profiletabState extends State<profiletab> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: SizedBox(
                    height: 115,
                    width: 115,
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/team02.png",
                          ),
                        ),
                        Positioned(
                            right: -16,
                            bottom: 0,
                            child: SizedBox(
                                height: 46,
                                width: 46,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(color: Color(0xFF0E0A0A)),
                                  ),
                                  color: Color(0xFF17181A),
                                  onPressed: () {},
                                  child: Center(child: Icon(Icons.camera)),
                                )))
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (() {}),
                    child: SvgPicture.asset(
                      'assets/images/Group 51018.svg',
                      width: 20,
                    ),
                  ),
                ),
                Text(
                  "First Name",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: 'Enter First Name',
                    validatorText: 'Enter First Name'),
                SizedBox(height: 20.h),
                Text(
                  "Last Name",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: 'Enter Last Name',
                    validatorText: 'Enter Last Name'),
                SizedBox(height: 20.h),
                Text(
                  "Phone Number",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: 'Enter Phone Number',
                    validatorText: 'Enter Phone Number'),
                SizedBox(height: 20.h),
                Text(
                  "Email Id",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: 'Enter Email Id',
                    validatorText: 'Enter Email Id '),
                SizedBox(height: 20.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('SMS updates'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Color.fromARGB(255, 59, 129, 214),
                          activeColor: Color(0xFF143C6D),
                        ),
                        Text(
                          'Opt Out / Opt In',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff737373)),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  "Address",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sm,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                TextFormField(
                  cursorColor: const Color(0xFFFFB600),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFF707070), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xFFFFB600), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    hintStyle:
                        const TextStyle(color: Color(0x80000000), fontSize: 14),
                    hintText: "Address",
                  ),
                  minLines: 5,
                  maxLines: null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KYCtabs extends StatefulWidget {
  const KYCtabs({super.key});

  @override
  State<KYCtabs> createState() => _KYCtabsState();
}

class _KYCtabsState extends State<KYCtabs> {
  final residentialstatustexteditingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Step 1 : Complete your KYC",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF143C6D),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Personal Information",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Provide your personal information as per your Bank Account",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 8.5,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Contact Number",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Phone Number",
                    validatorText: "Please Enter Phone Number"),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Email ID",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Email Id",
                    validatorText: "Please Enter Email Id"),
                SizedBox(height: 20.h),
                Text(
                  "Residential Status",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextDropdown(
                    items: ["1", "2", "3"],
                    controller: residentialstatustexteditingcontroller,
                    showDropDown: true),
                SizedBox(height: 20.h),
                Text(
                  "Date of Birth",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Email Id",
                    validatorText: "Please Enter Email Id"),
                SizedBox(height: 20.h),
                Text(
                  "Occupation",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Occupation",
                    validatorText: "Please Enter Occupation"),
                SizedBox(height: 20.h),
                Text(
                  "Father's Name",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextFormField(
                    hintText: "Please Enter Father's Name",
                    validatorText: "Please Enter Father's Name"),
                SizedBox(height: 40.h),
                CustomNextButton(
                  text: "Continue",
                  ontap: () {
                    Get.toNamed('/kyctab2');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class riskprofile extends StatefulWidget {
  const riskprofile({super.key});

  @override
  State<riskprofile> createState() => _riskprofileState();
}

class _riskprofileState extends State<riskprofile> {
  final famailiarity = TextEditingController();
  final investing = TextEditingController();
  final income = TextEditingController();
  final invest = TextEditingController();
  final basis = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Center(
          child: Form(
              key: _form,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/risk1.png',
                      // width: 120.w,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Enter your First name ?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextFormField(hintText: "", validatorText: ""),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Enter your age?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xff303030)),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextFormField(hintText: "", validatorText: ""),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "How would you describe your level of familiarity ?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextDropdown(items: [
                      "Beginner",
                      "Competent",
                      "Proficient",
                      "Expert"
                    ], controller: famailiarity, showDropDown: true),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "What is the primary reason you're interested in investing?",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextDropdown(items: [
                      "Building Wealth",
                      "Petirement",
                      "Major Purchase",
                      "Business Investment"
                          "Holiday"
                    ], controller: investing, showDropDown: true),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "What is your annual income ?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextDropdown(items: [
                      "Below 25 Lacs",
                      "26 to 35 Lacs",
                      "36 to 50 Lacs",
                      "Above 50 Lacs"
                    ], controller: income, showDropDown: true),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "How long do you plan to invest?",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextDropdown(items: [
                      "Less than 3 years",
                      "3 - 5 years",
                      "6 - 10 years"
                    ], controller: invest, showDropDown: true),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "How much do you hope to invest on a monthly/yearly basis?",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xff303030)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CustomTextDropdown(items: [
                      "5 Lakhs to 10 Lakhs",
                      "10 Lakhs to 25 Lakhs",
                    ], controller: basis, showDropDown: true),
                    SizedBox(
                      height: 60.h,
                    ),
                    CustomNextButton(
                        ontap: (() {
                          Navigator.pop(context);
                        }),
                        text: "Update"),
                  ]))),
    );
  }
}
