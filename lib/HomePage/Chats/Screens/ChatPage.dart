import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeu/HomePage/Chats/Model/ChatUserModel.dart';
import 'package:freeu/HomePage/Chats/Widgets/ConversationList.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:freeu/common/bottombar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "assets/images/1.jpg",
      time: "Now",
    ),
    ChatUsers(
      name: "Glady's Murphy",
      messageText: "That's Great",
      imageURL: "assets/images/1.jpg",
      time: "Yesterday",
    ),
    ChatUsers(
      name: "Jorge Henry",
      messageText: "Hey where are you?",
      imageURL: "assets/images/1.jpg",
      time: "31 Mar",
    ),
    ChatUsers(
      name: "Philip Fox",
      messageText: "Busy! Call me in 20 mins",
      imageURL: "assets/images/1.jpg",
      time: "28 Mar",
    ),
    ChatUsers(
      name: "Debra Hawkins",
      messageText: "Thankyou, It's awesome",
      imageURL: "assets/images/1.jpg",
      time: "23 Mar",
    ),
    ChatUsers(
      name: "Jacob Pena",
      messageText: "will update you in evening",
      imageURL: "assets/images/1.jpg",
      time: "17 Mar",
    ),
    ChatUsers(
      name: "Andrey Jones",
      messageText: "Can you please share the file?",
      imageURL: "assets/images/1.jpg",
      time: "24 Feb",
    ),
    ChatUsers(
      name: "John Wick",
      messageText: "How are you?",
      imageURL: "assets/images/1.jpg",
      time: "18 Feb",
    ),
    ChatUsers(
      name: "Fany Wick",
      messageText: "Where are you?",
      imageURL: "assets/images/1.jpg",
      time: "20 Feb",
    ),
  ];

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
            Get.toNamed('/myprofile');
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
  
  DateTime timebackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()  => _backbuttonpressed(context),
      // async {
      //   // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      //   final difference = DateTime.now().difference(timebackPressed);
      //   final isExitWarning = difference >= Duration(seconds: 2);

      //   timebackPressed = DateTime.now();

      //   if (isExitWarning) {
      //     const message = "Press back again to exit";
      //     // print("reached here");
      //     Fluttertoast.showToast(
      //       msg: message,
      //       fontSize: 18,
      //     );

      //     return false;
      //   } else {
      //     Fluttertoast.cancel();

      //     SystemNavigator.pop();
      //     return true;
      //   }
      // },
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              sizedBoxWidth(45.w),
              // IconButton(
              //   onPressed: () {
              //     _key.currentState!.openDrawer();
              //   },
              //   icon: SizedBox(
              //     height: 20.h,
              //     width: 25.w,
              //     child: SvgPicture.asset(
              //       "assets/images/menu.svg",
              //       // height: 20.h,
              //       // width: 10.w,
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              //   // color: Colors.red,
              //   // iconSize: 100.h,
              // ),
            
              sizedBoxWidth(5.w),
              Text(
                'Chats',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.sp,
                    // fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Spacer(),
              Icon(
                Icons.more_vert_rounded,
                color: Colors.blueAccent,
                size: 25.sp,
              ),
              // IconButton(
              //   onPressed: () {
              //     Get.toNamed('/notificationpage');
              //   },
              //   icon: SizedBox(
              //     width: 18.w,
              //     height: 25.h,
              //     child: SvgPicture.asset(
              //       'assets/images/notification-bell-svgrepo-com.svg',
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              //   // iconSize: 22,
              //   // color: const Color(0xFF303030),
              // ),
            ],
          ),
          // backgroundColor: Color(0xFFF5F8FA),
          elevation: 0,
          shadowColor: Colors.black,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
        ),
        
        // drawer: NavDrawer(),
        // bottomNavigationBar:
        //     CreateBottomBar(stateBottomNav, "Bottombarchat", context),
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(120.h),
        //   child: Column(
        //     children: [
        //       AppBar(
        //         title: Text(
        //           'Chats',
        //           softWrap: true,
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //               fontFamily: 'Poppins',
        //               fontSize: 22.sp,
        //               fontWeight: FontWeight.w400,
        //               color: Colors.black),
        //         ),
        //         backgroundColor: Colors.white,
        //         elevation: 0,
        //         shadowColor: Colors.black,
        //         automaticallyImplyLeading: false,
        //         titleSpacing: 0,
        //         leading: Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {
        //                 _key.currentState!.openDrawer();
        //               },
        //               icon: SvgPicture.asset("assets/images/menu.svg"),
        //               color: Colors.black,
        //               iconSize: 25.sp,
        //             ),
        //           ],
        //         ),
        //         actions: [
        //           Icon(
        //             Icons.more_vert_rounded,
        //             color: Colors.blueAccent,
        //             size: 25.sp,
        //           ),
        //         ],
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 16.w, right: 16.w),
        //         child: TextField(
        //           decoration: InputDecoration(
        //             hintText: "Search Chats",
        //             hintStyle:
        //                 TextStyle(color: Colors.grey.shade600, fontSize: 16.sp),
        //             prefixIcon: Icon(
        //               Icons.search,
        //               color: Colors.black,
        //               size: 20.sp,
        //             ),
        //             filled: true,
        //             fillColor: Colors.white,
        //             contentPadding: EdgeInsets.all(10.h),
        //             enabledBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(10.sp),
        //               borderSide: BorderSide(
        //                 color: Colors.grey.shade400,
        //               ),
        //             ),
        //             focusedBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(10.sp),
        //               borderSide: BorderSide(
        //                 color: Colors.grey.shade400,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
    
        // bottomNavigationBar:
        //     CreateBottomBar(stateBottomNav, "Bottombarchat", context),
    
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Chats",
                  hintStyle:
                      TextStyle(color: Colors.grey.shade600, fontSize: 16.sp),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20.sp,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10.h),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
    
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // CustomAppBarWithNotification(titleTxt: "Chats"),
            
                        ListView.separated(
                          separatorBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Divider(
                                thickness: 1.2.h,
                              ),
                            );
                          },
                          itemCount: chatUsers.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 16.h),
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ConversationList(
                              name: chatUsers[index].name,
                              messageText: chatUsers[index].messageText,
                              imageUrl: chatUsers[index].imageURL,
                              time: chatUsers[index].time,
                              isMessageRead: (index == 0 || index == 3 || index == 2)
                                  ? true
                                  : false,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
    Future<bool> _backbuttonpressed(BuildContext context) async {
    bool exitapp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:  EdgeInsets.all(15.w),
          child: AlertDialog(
             shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          insetPadding: const EdgeInsets.symmetric(vertical: 10),
            title:Text(
            "Exit App",
            style: TextStyle(
                fontFamily: 'Studio Pro',
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: const Color(0xff3B3F43)),
          ),
            content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Are you sure you want to Exit App?",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16.sp,
                  color: const Color(0xff54595F)),
            ),
          ),
            actions: [
             InkWell(
              onTap: () {
                Get.back();
              },
              child: Text(
                "No",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xff000000)),
              ),
            ),
            sizedBoxWidth(15.sp),
            InkWell(
              onTap: () {
                SystemNavigator.pop();
              },
              child: Text(
                "Yes",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xffB90101)),
              ),
            ),
            sizedBoxWidth(15.sp),
            ],
          ),
        );
      },
    );
    return exitapp ?? false;
  }
}
