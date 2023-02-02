// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  Future showPlusoption() async {
    FocusScope.of(context).unfocus();
    final data = await showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          // child: const Add_details(),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );

    if (data != null) {
      setState(() {
        selectedOption = data;
      });
    }
  }

  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
            ),
            iconSize: 22,
            color: Color(0xFF6B6B6B),
          ),
          title: Text(
            "Notification",
            style: TextStyle(color: Color(0xFF242323)),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: ListView(shrinkWrap: false, children: [
                            Slidebar(
                              text:
                                  'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                              date: '2 days ago',
                            ),
                            SizedBox(height: 10.h),
                            Slidebar(
                              text:
                                  'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                              date: '2 days ago',
                            ),
                            SizedBox(height: 10.h),
                            Slidebar(
                              text:
                                  'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                              date: '2 days ago',
                            ),
                            SizedBox(height: 10.h),
                            Slidebar(
                              text:
                                  'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                              date: '2 days ago',
                            ),
                            SizedBox(height: 10.h),
                            Slidebar(
                              text:
                                  'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                              date: '2 days ago',
                            ),
                            SizedBox(height: 10.h),
                            Slidebar(
                              text:
                                  'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                              date: '2 days ago',
                            ),
                          ])),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Slidebar extends StatelessWidget {
  const Slidebar({
    Key? key,
    required this.text,
    required this.date,
  }) : super(key: key);
  final String text;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
          title: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF707070),
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                date,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

void doNothing(BuildContext context) {}
