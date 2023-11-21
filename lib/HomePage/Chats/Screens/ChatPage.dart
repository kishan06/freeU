import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Chats/Model/ChatUserModel.dart';
import 'package:freeu/HomePage/Chats/Widgets/ConversationList.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Freeu Support",
      messageText: "You can talk with us",
      imageURL: "assets/images/1.jpg",
      time: "",
    ),
    // ChatUsers(
    //   name: "Glady's Murphy",
    //   messageText: "That's Great",
    //   imageURL: "assets/images/1.jpg",
    //   time: "Yesterday",
    // ),
    // ChatUsers(
    //   name: "Jorge Henry",
    //   messageText: "Hey where are you?",
    //   imageURL: "assets/images/1.jpg",
    //   time: "31 Mar",
    // ),
    // ChatUsers(
    //   name: "Philip Fox",
    //   messageText: "Busy! Call me in 20 mins",
    //   imageURL: "assets/images/1.jpg",
    //   time: "28 Mar",
    // ),
    // ChatUsers(
    //   name: "Debra Hawkins",
    //   messageText: "Thankyou, It's awesome",
    //   imageURL: "assets/images/1.jpg",
    //   time: "23 Mar",
    // ),
    // ChatUsers(
    //   name: "Jacob Pena",
    //   messageText: "will update you in evening",
    //   imageURL: "assets/images/1.jpg",
    //   time: "17 Mar",
    // ),
    // ChatUsers(
    //   name: "Andrey Jones",
    //   messageText: "Can you please share the file?",
    //   imageURL: "assets/images/1.jpg",
    //   time: "24 Feb",
    // ),
    // ChatUsers(
    //   name: "John Wick",
    //   messageText: "How are you?",
    //   imageURL: "assets/images/1.jpg",
    //   time: "18 Feb",
    // ),
    // ChatUsers(
    //   name: "Fany Wick",
    //   messageText: "Where are you?",
    //   imageURL: "assets/images/1.jpg",
    //   time: "20 Feb",
    // ),
  ];

  final controllerEntryPoint = Get.put(EntryPointController());

  DateTime timebackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            sizedBoxWidth(45.w),
            sizedBoxWidth(5.w),
            Text(
              'Chats',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
          ],
        ),
        actions: [
          // OpenContainerWrappers(
          //   closeBuild: IconButton(
          //     onPressed: null,
          //     icon: SizedBox(
          //       width: 20.w,
          //       height: 25.h,
          //       child: SvgPicture.asset(
          //         'assets/images/notification-bell-svgrepo-com.svg',
          //         fit: BoxFit.fill,
          //       ),
          //     ),
          //   ),
          //   openBuild: const NotificationPage(),
          // ),
          InkWell(
            onTap: () {
              Get.toNamed("/notificationpage");
            },
            child: Padding(
              padding: EdgeInsets.only(right: 16.w, top: 15.5, bottom: 15.5),
              child: SvgPicture.asset(
                'assets/images/notification-bell-svgrepo-com.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // sizedBoxWidth(5.w)
        ],
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: SafeArea(child: GetBuilder<EntryPointController>(builder: (_) {
        return controllerEntryPoint.logedIn!
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Chats",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade600, fontSize: 16.sp),
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
                              ListView.separated(
                                separatorBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
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
                                    isMessageRead:
                                        (index == 0 || index == 3 || index == 2)
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
              )
            : Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Chat_1.png",
                        // "assets/images/investmentguest.png",
                        width: 270.w,
                        height: 270.h,
                      ),
                      sizedBoxHeight(15.h),
                      CustomNextButton(
                        text: "Login to continue",
                        ontap: () {
                          Get.toNamed("/login");
                        },
                      )
                    ],
                  ),
                ),
              );
      })),
    );
  }
}
