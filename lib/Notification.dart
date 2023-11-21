import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/Models/Notifications/Getnotification.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
// import 'package:freeu/Utils/colors.dart';
// import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Notification/Notificationapis.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/Utils/texts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String? selectedOption;
  StreamController<NotificationGetModel> NotificationController =
      StreamController();
  List<Map<String, String>> _data = [];

  late Timer timer;

  @override
  void initState() {
    // _data = [
    //   {
    //     "image": "assets/images/Group 51531.svg",
    //     "title": "Lorem Ipsum is simply dummy text of the printing ",
    //     "subtitle": "2 days ago",
    //   },
    //   {
    //     "image": "assets/images/Group 51532.svg",
    //     "title": "Lorem Ipsum is simply dummy text of the printing ",
    //     "subtitle": "2 days ago",
    //   },
    //   {
    //     "image": "assets/images/Group 51531.svg",
    //     "title": "Lorem Ipsum is simply dummy text of the printing ",
    //     "subtitle": "2 days ago",
    //   },
    //   {
    //     "image": "assets/images/Group 51535.svg",
    //     "title": "Lorem Ipsum is simply dummy text of the printing ",
    //     "subtitle": "2 days ago",
    //   },
    //   {
    //     "image": "assets/images/Group 51534.svg",
    //     "title": "Lorem Ipsum is simply dummy text of the printing ",
    //     "subtitle": "2 days ago",
    //   },
    // ];

    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      Notifications().NotificationList(streamControl: NotificationController);
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    NotificationController.close();
    timer.cancel();
    super.dispose();
  }

  String? id;

  void UploadData() async {
    final data = await Notifications().PostnotificationAPI(id);
    // Storecontactusdetails().postStorecontactusdetails(updata);
    if (data.status == ResponseStatus.SUCCESS) {
      print("Notification deleted");

      Flushbar(
        message: "Notification deleted",
        duration: const Duration(seconds: 1),
      ).show(context);
      // Timer(const Duration(seconds: 2),
      //     () => Get.offAllNamed('/EntryPoint', arguments: 0));
      return utils.showToast(data.message);
    } else {
      print("Notification notdeleted");
      return utils.showToast(data.message);
    }
  }

  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
          toolbarHeight: 90.h,
          leadingWidth: double.infinity,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxHeight(10.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                sizedBoxHeight(10.h),
                Text(
                  "Notifications",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ],
            ),
          ),
        ),

        //     CustomSignupAppBar(
        //   titleTxt: "",
        //   bottomtext: false,
        // ),

        body: controllerEntryPoint.logedIn!
            ? StreamBuilder<NotificationGetModel>(
                stream: NotificationController.stream,
                builder: (ctx, snapshot) {
                  if (snapshot.data == null) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Center(child: CircularProgressIndicator())],
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          '${snapshot.error} occured',
                          style: TextStyle(fontSize: 18.spMin),
                        ),
                      );
                    }
                  }
                  return notificationobj!.data!.isEmpty
                      ? _buildNodataBody()
                      : _buildBody(context);
                },
              )
            : Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Notification.png",
                        width: 270.w,
                        height: 270.h,
                      ),
                      sizedBoxHeight(20.h),
                      CustomNextButton(
                        text: "Login to continue",
                        ontap: () {
                          Get.toNamed("/login");
                        },
                      ),
                      sizedBoxHeight(60.h)
                    ],
                  ),
                ),
              ));
  }

  Widget _buildBody(context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: notificationobj!.data!.length ?? 0,
          // _data.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: slideRightBackground(),
              key: UniqueKey(),
              onDismissed: (direction) {
                setState(() {
                  notificationobj!.data!.removeAt(index);
                  id = notificationobj!.data![index].id ?? "NA";
                  UploadData();
                });
                // setState(() {
                // notificationobj!.data!.removeAt(index);

                // _data.removeAt(index);
                // Flushbar(
                //   message: "Notification deleted",
                //   duration: const Duration(seconds: 1),
                // ).show(context);
                // }

                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(8.24),
                  //   child: SvgPicture.asset(
                  //     _data[index]['image']!,
                  //     width: 80.w,
                  //     height: 100.h,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),

                  // SizedBox(
                  //   // width: 320.w,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         notificationobj!.data![index].message ?? "NA",
                  //         // _data[index]['title'] ?? "",
                  //         style: TextStyle(
                  //           fontSize: 16.sp,
                  //           fontWeight: FontWeight.w500,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 8,
                  //       ),
                  //       Text(
                  //         notificationobj!.data![index].time ?? "NA",
                  //         // _data[index]['subtitle']!,
                  //         style: TextStyle(
                  //           color: Color(0xFF444444),
                  //           fontSize: 14.sp,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notificationobj!.data![index].message ?? "NA",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          notificationobj!.data![index].time ?? "NA",
                          style: TextStyle(
                            color: Color(0xFF444444),
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 75.h),
                    child: InkWell(
                      onTap: () {
                        print("ontap pressed");
                        // id = notificationobj!.data![index].id ?? "NA";
                        // UploadData();
                        setState(() {
                          notificationobj!.data!.removeAt(index);
                          id = notificationobj!.data![index].id ?? "NA";
                          UploadData();

                          // _data.removeAt(index);
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

      // CustomScrollView(
      //   slivers: [
      //     SliverToBoxAdapter(
      //       child: Column(
      //         children: [
      //           // Row(
      //           //   children: [
      //           //     Padding(
      //           //       padding: EdgeInsets.symmetric(horizontal: 16.w),
      //           //       child: Text(
      //           //         "Notifications",
      //           //         textAlign: TextAlign.left,
      //           //         style: TextStyle(fontSize: 25, color: Colors.black),
      //           //       ),
      //           //     ),
      //           //   ],
      //           // ),
      //           SizedBox(
      //             height: 15,
      //           ),
      //           SizedBox(
      //             child: Padding(
      //               padding: EdgeInsets.symmetric(horizontal: 16.w),
      //               child: ListView.separated(
      //                 shrinkWrap: true,
      //                 itemCount: _data.length,
      //                 itemBuilder: (BuildContext context, int index) {
      //                   return Dismissible(
      //                     background: slideRightBackground(),
      //                     key: UniqueKey(),
      //                     onDismissed: (direction) {
      //                       setState(() {
      //                         _data.removeAt(index);
      //                         Flushbar(
      //                           message: "Notification deleted",
      //                           duration: const Duration(seconds: 1),
      //                         ).show(context);
      //                       });
      //                     },
      //                     child: Row(
      //                       children: [
      //                         ClipRRect(
      //                           borderRadius: BorderRadius.circular(8.24),
      //                           child: SvgPicture.asset(
      //                             _data[index]['image']!,
      //                             width: 80.w,
      //                             height: 100.h,
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                         Expanded(
      //                           flex: 2,
      //                           child: Padding(
      //                             padding: const EdgeInsets.only(left: 8.0),
      //                             child: Column(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.spaceEvenly,
      //                               crossAxisAlignment:
      //                                   CrossAxisAlignment.start,
      //                               children: [
      //                                 Text(
      //                                   _data[index]['title'] ?? "",
      //                                   style: TextStyle(
      //                                     fontSize: 16.sp,
      //                                     fontWeight: FontWeight.w500,
      //                                     color: Colors.black,
      //                                   ),
      //                                 ),
      //                                 SizedBox(
      //                                   height: 8,
      //                                 ),
      //                                 Text(
      //                                   _data[index]['subtitle']!,
      //                                   style: TextStyle(
      //                                     color: Color(0xFF444444),
      //                                     fontSize: 14.sp,
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding: EdgeInsets.only(bottom: 75.h),
      //                           child: InkWell(
      //                             onTap: () {
      //                               print("ontap pressed");
      //                               setState(() {
      //                                 _data.removeAt(index);
      //                                 Flushbar(
      //                                   message: "Notification deleted",
      //                                   duration: const Duration(seconds: 1),
      //                                 ).show(context);
      //                               });
      //                             },
      //                             child: SvgPicture.asset(
      //                               "assets/images/delete-svgrepo-com.svg",
      //                               width: 15,
      //                               height: 19,
      //                               alignment: Alignment.topCenter,
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   );
      //                   // );
      //                 },
      //                 separatorBuilder: (BuildContext context, int index) {
      //                   return Divider(
      //                     height: 40.h,
      //                     thickness: 1.5,
      //                   );
      //                 },
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildNodataBody() {
    return
        //  Scaffold(
        //   body:
        Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('assets/logos/NoDataFoundLottie.json'),
        Text(
          "No Data Available",
          style: TextStyle(
            color: Colors.black,
            //Color(0xFF008083),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    );

    //     Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: <Widget>[
    //       Container(
    //         height: 170,
    //         padding: EdgeInsets.all(35),
    //         // decoration: BoxDecoration(
    //         //   color: themeColor,
    //         //  // shape: BoxShape.circle,
    //         // ),
    //         child: Center(
    //           child: Lottie.asset(
    //             "assets/animation_lmrtoicn.json",
    //             fit: BoxFit.contain,
    //           ),
    //         ),
    //       ),
    //       SizedBox(height: 1
    //           // screenHeight * 0.1
    //           ),
    //       Center(
    //         child: Text(
    //           "No Data Available",
    //           style: TextStyle(
    //             color: Colors.black,
    //             //Color(0xFF008083),
    //             fontWeight: FontWeight.w600,
    //             fontSize: 20,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    // );
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
