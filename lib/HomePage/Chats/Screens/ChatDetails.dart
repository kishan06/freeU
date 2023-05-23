import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/HomePage/Chats/Model/ChatMessageModel.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(messageContent: "Hello", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(messageContent: "Hello", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "receiver"),
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet,consectetuer adipiscing elit",
        messageType: "receiver"),
    ChatMessage(messageContent: "...........", messageType: "sender"),
  ];
  ScrollController myController = ScrollController();

  @override
  void initState() {
    // _scrollDown();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 50),
        () => myController.jumpTo(myController.position.maxScrollExtent));
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 6.w),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  // CircleAvatar(
                  //   backgroundImage: const AssetImage('assets/images/1.jpg'),
                  //   maxRadius: 20.r,
                  // ),
                  // SizedBox(
                  //   width: 12.w,
                  // ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Kartikey gautam",
                          style: TextStyle(
                            fontSize: 22.sp,
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        // Text(
                        //   "Online",
                        //   style: TextStyle(
                        //       color: Colors.grey.shade600, fontSize: 13.sp),
                        // ),
                      ],
                    ),
                  ),
                  OpenContainerWrappers(
                    closeBuild: IconButton(
                      onPressed: null,
                      icon: SizedBox(
                        width: 20.w,
                        height: 25.h,
                        child: SvgPicture.asset(
                          'assets/images/notification-bell-svgrepo-com.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    openBuild: const NotificationPage(),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              controller: myController,
              itemCount: messages.length,
              padding: EdgeInsets.only(top: 10.h, bottom: 60.h),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return messages[index].messageType == "receiver"
                    ? Padding(
                        padding: EdgeInsets.only(
                            left: 14.w, top: 10.h, bottom: 10.h, right: 90.w),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 55.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.r),
                                  child: Image.asset(
                                      'assets/images/chat-icon.png'),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Flexible(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.r),
                                        topLeft: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r),
                                      ),
                                      color: const Color(0xFFCFEFFF)),
                                  padding: EdgeInsets.all(16.h),
                                  child: Text(
                                    messages[index].messageContent,
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            right: 14.w, top: 10.h, bottom: 10.h, left: 60.w),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Flexible(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.r),
                                      bottomLeft: Radius.circular(20.r),
                                      topRight: Radius.circular(20.r),
                                    ),
                                    color: const Color(0xff002A5B),
                                  ),
                                  padding: EdgeInsets.all(16.h),
                                  child: Text(
                                    messages[index].messageContent,
                                    style: TextStyle(
                                        fontSize: 18.sp, color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              SizedBox(
                                height: 55.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.r),
                                  child: Image.asset('assets/images/1.jpg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 60.h,
                //
                // width: double.infinity,
                // color: Colors.white,
                child: Row(
                  children: <Widget>[
                    sizedBoxWidth(16.w),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(fontSize: 16.sp),
                        // cursorColor: const Color(0xFFFFB600),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.h),
                          filled: true,
                          fillColor: const Color(0xffF6F8FA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xffCCCCCC), width: 1.w),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xffCCCCCC), width: 1.w),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xffCCCCCC), width: 1.w),
                          ),
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16.sp),
                          hintText: "Type a Message",
                          suffixIcon: Icon(
                            Icons.attach_file,
                            color: Colors.black,
                            size: 23.h,
                          ),
                          prefixIcon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.black,
                            size: 23.h,
                          ),
                        ),
                        minLines: 1,
                        maxLines: 1,
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.all(10.h),
                    //   height: 60.h,
                    //   decoration: BoxDecoration(
                    //     color: const Color(0xffF6F8FA),
                    //     borderRadius: BorderRadius.circular(10.r),
                    //   ),
                    //   child: Row(
                    //     children: [Text('Send')],
                    //   ),
                    // ),
                    sizedBoxWidth(12.w),
                    Container(
                        width: 90.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Color(0xff1B8DC9),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: Text(
                          'Send',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ))),
                    sizedBoxWidth(16.w),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
