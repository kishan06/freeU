import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/signupAppbar.dart';

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
        "image": "assets/images/Group 51531.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51535.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
      {
        "image": "assets/images/Group 51534.svg",
        "title": "Lorem Ipsum is simply dummy text of the printing .",
        "subtitle": "2 days ago",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSignupAppBar(
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
                        child: const Text(
                          "Notifications",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
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
                            child: Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
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
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                _data[index]['subtitle']!,
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF444444),
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
                                          padding:
                                              const EdgeInsets.only(right: 7.0),
                                          child: InkWell(
                                            onTap: () {
                                              print("ontap pressed");
                                              setState(() {
                                                _data.removeAt(index);
                                                Flushbar(
                                                  message:
                                                      "Notification deleted",
                                                  duration: const Duration(
                                                      seconds: 1),
                                                ).show(context);
                                              });
                                            },
                                            child: SvgPicture.asset(
                                              "assets/images/delete-svgrepo-com.svg",
                                              width: 15,
                                              height: 19,
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
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const <Widget>[
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
        children: const [
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
      endActionPane: const ActionPane(
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
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            color: const Color(0xFF444444),
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
