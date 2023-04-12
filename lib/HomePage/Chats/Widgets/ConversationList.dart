// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Chats/Screens/ChatDetails.dart';
import 'package:freeu/common/page_animation.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  ConversationList(
      {Key? key,
      required this.name,
      required this.messageText,
      required this.imageUrl,
      required this.time,
      required this.isMessageRead})
      : super(key: key);
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return OpenContainerWrappers(
            closeBuild: Container(
              padding:
                  EdgeInsets.only(left: 16.w, right: 16.w, top: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(widget.imageUrl),
                          maxRadius: 30.r,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.name,
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  widget.messageText,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.grey.shade800,
                                      fontWeight: widget.isMessageRead
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.time,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: widget.isMessageRead
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ],
              ),
            ),
            openBuild: ChatDetailPage())
        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) {
        //       return const ChatDetailPage();
        //     }));
        //   },
        //   child:

        // )
        ;
  }
}
