import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/signupAppbar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String? selectedOption;
  List<Map<String, String>> _data = [];
  @override
  void initState() {
    _data = [
      {
        "image": "assets/images/Group 51531.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing ",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51532.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing ",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51531.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing ",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51535.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing ",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51534.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing ",
        "subtitle": "2 days ago",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Text(
                          "Notifications",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: _data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Dismissible(
                            background: slideRightBackground(),
                            key: UniqueKey(),
                            onDismissed: (direction) {
                              setState(() {
                                _data.removeAt(index);
                                Flushbar(
                                  message: "Notification deleted",
                                  duration: const Duration(seconds: 1),
                                ).show(context);
                              });
                            },
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.24),
                                  child: SvgPicture.asset(
                                    _data[index]['image']!,
                                    width: 80.w,
                                    height: 100.h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _data[index]['title'] ?? "",
                                          style: TextStyle(
                                            fontSize: 16.sm,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          _data[index]['subtitle']!,
                                          style: TextStyle(
                                            color: Color(0xFF444444),
                                            fontSize: 14.sm,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 75.h),
                                  child: InkWell(
                                    onTap: () {
                                      print("ontap pressed");
                                      setState(() {
                                        _data.removeAt(index);
                                        Flushbar(
                                          message: "Notification deleted",
                                          duration: const Duration(seconds: 1),
                                        ).show(context);
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      "assets/images/delete-svgrepo-com.svg",
                                      width: 15,
                                      height: 19,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                          // );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            height: 40.h,
                            thickness: 1.5,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget slideRightBackground() {
  return Container(
    color: Colors.red,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(
            Icons.close_outlined,
            color: Colors.white,
          ),
          Text(
            "Remove",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
    ),
  );
}
