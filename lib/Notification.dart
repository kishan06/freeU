// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  List<Map<String, String>> _data = [];
  @override
  void initState() {
    _data = [
      {
        "image": "assets/images/Group 51531.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51532.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51533.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51534.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51535.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //var result = data.removeLast();

    //data.remove(1);

    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F8FA),
        elevation: 0,
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
        // title: Text(
        //   "Notification",
        //   style: TextStyle(color: Color(0xFF242323)),
        // ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
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
                      height: MediaQuery.of(context).size.height * 0.57,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
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
                                  //_data[index].remove(index);
                                });
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.24),
                                            child: SvgPicture.asset(
                                              _data[index]['image']!,
                                              width: 80,
                                              height: 80,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Column(
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
                                        Expanded(
                                          flex: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 7.0),
                                            child: InkWell(
                                              onTap: () {
                                                print("ontap pressed");
                                                setState(() {
                                                  // String? value1 =
                                                  //     _data[index]['title'];
                                                  // _data.removeWhere(value);

                                                  _data.removeAt(index);
                                                  // data[index]['title']!,
                                                });
                                              },

                                              //(() => ontap()),
                                              child: SvgPicture.asset(
                                                "assets/images/delete-svgrepo-com.svg",

                                                width: 15,
                                                height: 19,
                                                //fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                            // );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              thickness: 1.5,
                            );
                          },

                          //children: [
                          // Slidable(
                          //   key: const ValueKey(0),
                          //   startActionPane: ActionPane(
                          //     motion: const ScrollMotion(),
                          //     dismissible: DismissiblePane(onDismissed: () {}),
                          //     children: [
                          //       SlidableAction(
                          //         onPressed: doNothing,
                          //         backgroundColor: Color(0xFFFE4A49),
                          //         foregroundColor: Colors.white,
                          //         icon: Icons.delete,
                          //         label: 'Delete',
                          //       ),
                          //     ],
                          //   ),
                          //   endActionPane: ActionPane(
                          //     motion: ScrollMotion(),
                          //     children: [
                          //       SlidableAction(
                          //         onPressed: doNothing,
                          //         backgroundColor: Color(0xFFFE4A49),
                          //         foregroundColor: Colors.white,
                          //         icon: Icons.delete,
                          //         label: 'Delete',
                          //       ),
                          //     ],
                          //   ),
                          //   child: ListTile(
                          //     title: Container(
                          //       decoration: BoxDecoration(
                          //         color: Color.fromARGB(225, 192, 222, 255),
                          //         borderRadius: BorderRadius.circular(10),
                          //       ),
                          //       child: Padding(
                          //         padding: const EdgeInsets.symmetric(
                          //             horizontal: 10, vertical: 10),
                          //         child: Column(
                          //           mainAxisAlignment: MainAxisAlignment.center,
                          //           crossAxisAlignment:
                          //               CrossAxisAlignment.start,
                          //           children: [
                          //             Text(
                          //               'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                          //               style: TextStyle(
                          //                 color: Color(0xFF000000),
                          //                 fontSize: 15.sm,
                          //                 fontFamily: 'Poppins',
                          //               ),
                          //             ),
                          //             SizedBox(
                          //               height: 10.h,
                          //             ),
                          //             Text(
                          //               '5 mins ago',
                          //               textAlign: TextAlign.start,
                          //               style: TextStyle(
                          //                 color: Color(0xFF000000),
                          //                 fontSize: 12.sm,
                          //                 fontFamily: 'Poppins',
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          //SizedBox(height: 10.h),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of the printing .',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(height: 10.h),
                          // Divider(
                          //   thickness: 1,
                          //   color: Colors.grey,
                          // ),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of the printing .',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(height: 10.h),
                          // Divider(
                          //   thickness: 1,
                          //   color: Colors.grey,
                          // ),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of the printing .',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(height: 10.h),
                          // Divider(
                          //   thickness: 1,
                          //   color: Colors.grey,
                          // ),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of the printing .',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(height: 10.h),
                          // Divider(
                          //   thickness: 1,
                          //   color: Colors.grey,
                          // ),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of the printing .',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(height: 10.h),
                          // Divider(
                          //   thickness: 1,
                          //   color: Colors.grey,
                          // ),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of the printing .',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(height: 10.h),
                          // Divider(
                          //   thickness: 1,
                          //   color: Colors.grey,
                          // ),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(height: 10.h),
                          // Slidebar(
                          //   image: '',
                          //   title:
                          //       'Lorem Ipsum is simply dummy text of typesetting industry. Lorem Ipsum has been',
                          //   subtitle: '2 days ago',
                          // ),
                          // SizedBox(
                          //   height: 70.h,
                          // )
                          // ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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

class Slidebar extends StatelessWidget {
  const Slidebar({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.ontap,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String image;
  //final void Function()? onTap;
  final GestureTapCallback ontap;
  // final onatap
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
            // borderRadius: BorderRadius.),
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
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.24),
                    child: SvgPicture.asset(
                      image,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
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
                          subtitle,
                          style: TextStyle(
                            color: Color(0xFF444444),
                            fontSize: 14.sm,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7.0),
                    child: InkWell(
                      onTap: (() => ontap()),
                      child: SvgPicture.asset(
                        "assets/images/delete-svgrepo-com.svg",

                        width: 15,
                        height: 19,
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}

//onPressed: () { setState(() {value -= 1; _selectedList.removeAt(index - 1);  }); },
