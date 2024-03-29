import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
// import 'package:dio/dio.dart' as prefix;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Models/Chat/ChatModel.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/ExtractPath.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/ViewModel/Profile/Getprofile.dart';
import 'package:freeu/common/Other%20Commons/PhotoSelectionBottomSheet.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/Chat/getchat.dart';
import 'package:freeu/Utils/Dialogs.dart';
import 'package:freeu/viewModel/Chat/postchatmessage.dart';
import 'package:get/get.dart' as GetX hide MultipartFile, FormData;
import 'package:get/get_core/src/get_main.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../controllers/network_api.dart';

// import '../../../Global.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  int chatItems = 5;

  ScrollController myController = ScrollController();

  @override
  void dispose() {
    myController.dispose();
    timer.cancel();
    // timer.cancel();
    // topGainerLoserController.close();
    super.dispose();
  }

  final messageController = TextEditingController();
  String? attachimage;

  List<String> fileList = [];

  late Timer timer;

  void UploadData() async {
    try {
      List<MultipartFile> multipartFiles = [];

      // Check if attachimage is not null before adding it to fileList
      if (attachimage != null) {
        fileList.add(attachimage!);

        for (String file in fileList) {
          multipartFiles.add(
            await MultipartFile.fromFile(
              file,
              filename: path.basename(file),
            ),
          );
        }
      }

      FormData formData = FormData.fromMap({
        "message": messageController.text,
        "user_file": multipartFiles.isNotEmpty ? multipartFiles : null,
      });

      final data = await Chatmessage().postChatmessage(formData);

      if (data.status == ResponseStatus.SUCCESS) {
        //utils.showToast(data.message);
        fileList.clear();
        attachimage = null;
      } else {
        utils.showToast(data.message);
      }
    } catch (e) {
      print("Error uploading data: $e");
    }
  }

  Future<void> downloadImage(String image) async {
    final Dio dio = Dio();
    final appDir = await getApplicationDocumentsDirectory();
    final String fileName = image.split('/').last;
    ;
    final File file = File('${appDir.path}/$fileName');
    try {
      await dio.download(image, file.path);
      //print("url is ${ApiUrls.Getimage + "/${image}"}");

      // // Save image to gallery
      await ImageGallerySaver.saveFile(file.path);

      // // Open the downloaded image
      // OpenFile.open(file.path);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Image downloaded and saved to gallery successfully'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to download or save image'),
        ),
      );
    }
  }

  Future? myfuture;
  @override
  void initState() {
    super.initState();
    if (mounted) {
      timer = Timer.periodic(Duration(seconds: 2), (timer) {
        // top_gainer();/
        setState(() {});
      });
    }
  }

  _scrollToEndOfList() {
    if (myController.hasClients)
      myController.jumpTo(
        myController.position.maxScrollExtent,
        // duration: Duration(milliseconds: 1),
        // curve: Curves.easeOut,
      );
  }

  List<Data>? revDataList = [];
  _reverseList() {
    revDataList = chatmessagessobj!.data!.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            top: 15, bottom: MediaQuery.of(context).viewInsets.bottom + 15),
        child: Row(
          children: <Widget>[
            sizedBoxWidth(16.w),
            SizedBox(
              width: screenWidth * 0.65,
              child: TextFormField(
                controller: messageController,
                style: TextStyle(fontSize: 16.sp),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.h),
                  filled: true,
                  fillColor: const Color(0xffF6F8FA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(color: const Color(0xffCCCCCC), width: 1.w),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(color: const Color(0xffCCCCCC), width: 1.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(color: const Color(0xffCCCCCC), width: 1.w),
                  ),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16.sp),
                  hintText: "Type a Message",
                  suffixIcon: IconButton(
                    onPressed: () {
                      ImageUploadBottomSheet().showModal(
                        context,
                        (result) {
                          attachimage = result;
                          var filenameresult = extractFileName(result);
                          messageController.text = filenameresult;
                        },
                      );
                    },
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.black,
                      size: 23.h,
                    ),
                  ),
                  // prefixIcon: Icon(
                  //   Icons.emoji_emotions_outlined,
                  //   color: Colors.black,
                  //   size: 23.h,
                  // ),
                ),
                // minLines: 1,
                // maxLines: 1,
              ),
            ),
            sizedBoxWidth(12.w),
            GestureDetector(
              // onTap: () => _chatItemsAdd(),
              onTap: () {
                setState(() {
                  UploadData();
                  messageController.clear();
                });
              },
              // => UploadData(),

              child: Container(
                  width: 90.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: Color(0xff1B8DC9),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ))),
            ),
            sizedBoxWidth(16.w),
          ],
        ),
      ),
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        // myusername!,
                        "Support",
                        style: TextStyle(
                          fontSize: 22.sp,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                    ],
                  ),
                ),
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
                    padding: EdgeInsets.only(right: 16.w),
                    child: SvgPicture.asset(
                      'assets/images/notification-bell-svgrepo-com.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: GetChat().GetChatAPI(),
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
          //  _scrollToEndOfList();
          //  _reverseList();
          return _buildBody1(screenWidth);
        },
      ),
    );
  }

  Widget _buildBody1(screenWidth) {
    return ListView.builder(
      reverse: true,
      shrinkWrap: true,
      controller: myController,
      itemCount: chatmessagessobj!.data!.length,
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return chatmessagessobj!.data?[index].by == "Admin"
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
                          // width: 55.w,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(25.r),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/chat-icon.png"),
                                // NetworkImage(chatmessagessobj!
                                //         .data?[index].profileImage ??
                                //     ""),
                                // Image.network(
                                //     ProfileObj!.user!.profileImage!),
                                radius: 25.r,
                              ),
                            ),
                          )
                          // ClipRRect(
                          //     borderRadius: BorderRadius.circular(25.r),
                          //     child: Image.network(chatmessagessobj!
                          //             .data?[index].profileImage ??
                          //         "")
                          //     // Image.asset(
                          //     //     'assets/images/chat-icon.png'),
                          //     ),
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
                            chatmessagessobj!.data?[index].message ?? "",
                            // messages[index].messageContent,
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : chatmessagessobj!.data?[index].file != null
                ? Padding(
                    // Image message layout
                    padding: EdgeInsets.only(
                      right: 14.w,
                      top: 10.h,
                      bottom: 10.h,
                      left: 60.w,
                    ),
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
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      downloadImage(
                                          chatmessagessobj!.data?[index].file ??
                                              "");
                                      // _downloadAndDisplayImage(chatmessagessobj!
                                      //         .data?[index].file ??
                                      //     "");
                                    },
                                    icon: Icon(
                                      Icons.downloading_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  sizedBoxWidth(2.w),
                                  Text(
                                    "Download file",
                                    // messages[index].messageContent,
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: AppColors.white),
                                  ),
                                ],
                              ),

                              // Image.network(
                              //   chatmessagessobj!.data?[index].file ?? "",
                              //   width: 100.w, // Adjust this as per your design
                              //   height: 100.h, // Adjust this as per your design
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            height: 55.h,
                            child: ProfileObj?.user?.profileImage != null
                                ? ClipOval(
                                    child: SizedBox.fromSize(
                                      size: Size.fromRadius(25.r),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          ProfileObj!.user!.profileImage!,
                                        ),
                                        radius: 25.r,
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 50.w,
                                    width: 50.w,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      child: Image.asset(
                                        // 'assets/images/1.jpg'
                                        'assets/images/profie.png',
                                        fit: BoxFit.fill,
                                      ),
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
                                chatmessagessobj!.data?[index].message ?? "",
                                // messages[index].messageContent,
                                style: TextStyle(
                                    fontSize: 18.sp, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            height: 55.h,
                            child: ProfileObj?.user?.profileImage != null
                                ? ClipOval(
                                    child: SizedBox.fromSize(
                                      size: Size.fromRadius(25.r),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            ProfileObj!.user!.profileImage!),
                                        radius: 25.r,
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 50.w,
                                    width: 50.w,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      child: Image.asset(
                                        // 'assets/images/1.jpg'
                                        'assets/images/profie.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(100.r),
                            //   child: Image.asset('assets/images/1.jpg'),
                            // ),
                          ),
                        ],
                      ),
                    ),
                  );
      },
    );
  }
}
