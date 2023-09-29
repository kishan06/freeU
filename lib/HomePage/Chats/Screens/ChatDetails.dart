import 'dart:async';
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
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:path/path.dart' as path;
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
  // List<Dat> message = chatmessagessobj.data;

  // List<ChatMessage> messages =
  //  [
  //   ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  //   ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent: "Hey Kriss, I am doing fine dude. wbu?",
  //       messageType: "sender"),
  //   ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(messageContent: "Hello", messageType: "sender"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "sender"),
  //   ChatMessage(messageContent: "Hello", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent: "Is there any thing wrong?", messageType: "receiver"),
  //   ChatMessage(
  //       messageContent:
  //           "Lorem ipsum dolor sit amet,consectetuer adipiscing elit",
  //       messageType: "receiver"),
  //   ChatMessage(messageContent: "...........", messageType: "sender"),
  // ];

  ScrollController myController = ScrollController();

  @override
  void dispose() {
    myController.dispose();
    timer.cancel();
    // topGainerLoserController.close();
    super.dispose();
  }

  final messageController = TextEditingController();
  String? attachimage;

  List<String> fileList = [];

  late Timer timer;

  // void UploadData() async {
  //   fileList.add(attachimage!);
  //   List<MultipartFile> multipartFiles = [];
  //   for (String file in fileList) {
  //     multipartFiles.add(
  //       await MultipartFile.fromFile(
  //         file,
  //         filename: path.basename(file),
  //       ),
  //     );
  //   }
  //   Map<String, dynamic> updata = {
  //     "message":
  //         //  null,
  //         messageController.text,
  //     "user_file": null
  //     //  multipartFiles,
  //   };
  //   final data = await Chatmessage().postChatmessage(updata);
  //   if (data.status == ResponseStatus.SUCCESS) {
  //     return utils.showToast(data.message);
  //   } else {
  //     return utils.showToast(data.message);
  //   }
  //   // }
  // }

  // void UploadData() async {
  //   try {
  //     List<MultipartFile> multipartFiles = [];

  //     // Check if attachimage is not null before adding it to fileList
  //     if (attachimage != null) {
  //       fileList.add(attachimage!);

  //       for (String file in fileList) {
  //         multipartFiles.add(
  //           await MultipartFile.fromFile(
  //             file,
  //             filename: path.basename(file),
  //           ),
  //         );
  //       }
  //     }

  //     Map<String, dynamic> updata = {
  //       "message": messageController.text,
  //       "user_file": multipartFiles,
  //     };

  //     final data = await Chatmessage().postChatmessage(updata);

  //     if (data.status == ResponseStatus.SUCCESS) {
  //       utils.showToast(data.message);
  //     } else {
  //       utils.showToast(data.message);
  //     }
  //   } catch (e) {
  //     print("Error uploading data: $e");
  //   }
  // }

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

      Map<String, dynamic> updata = {
        "message": messageController.text,
        "user_file": multipartFiles.isNotEmpty ? multipartFiles : null,
      };

      final data = await Chatmessage().postChatmessage(updata);

      if (data.status == ResponseStatus.SUCCESS) {
        utils.showToast(data.message);
      } else {
        utils.showToast(data.message);
      }
    } catch (e) {
      print("Error uploading data: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      timer = Timer.periodic(Duration(seconds: 2), (timer) {
        // top_gainer();/
        setState(() {});
      });
    }
    // Timer.periodic(Duration(seconds: 2), (timer) {
    //   // top_gainer();/
    //   setState(() {});
    // });
  }

  // StreamController<ChatGetmessagesModel> topGainerLoserController =
  //     StreamController();

  // prefix.Dio dio = new prefix.Dio();

  // Future<ResponseData> top_gainer() async {
  //   prefix.Response response;
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   try {
  //     response = await dio.get(
  //         // ApiUrls()
  //         "https://pi.betadelivery.com/freeU_investment/api/get-chat");
  //   } on Exception catch (_) {
  //     return ResponseData<dynamic>(
  //         'Oops something Went Wrong', ResponseStatus.FAILED);
  //   }

  //   if (response.statusCode == 200) {
  //     print(response.data);
  //     // var decodeddata = jsonDecode(response.data);
  //     var data = ChatGetmessagesModel.fromJson(response.data);
  //     if (!topGainerLoserController.isClosed)
  //       topGainerLoserController.sink.add(data);

  //       return ResponseData<dynamic>(
  //         "success",
  //         ResponseStatus.SUCCESS,
  //       );
  //   } else {
  //     try {
  //       return ResponseData<dynamic>(
  //           response.data['message'].toString(), ResponseStatus.FAILED);
  //     } catch (_) {
  //       return ResponseData<dynamic>(
  //           response.statusMessage!, ResponseStatus.FAILED);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // Timer(const Duration(milliseconds: 50),
    //     () => myController.jumpTo(myController.position.maxScrollExtent));
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
        body:
            // StreamBuilder<ChatGetmessagesModel>(
            //     stream: topGainerLoserController.stream,
            //     builder: (context, snapshot) {
            //       switch (snapshot.connectionState) {
            //         case ConnectionState.waiting:
            //           return Padding(
            //             padding: EdgeInsets.only(
            //                 bottom: MediaQuery.of(context).viewInsets.bottom),
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [Center(child: CircularProgressIndicator())],
            //             ),
            //           );

            //         default:
            //           if (snapshot.hasError) {
            //             return Text("Error Occured");
            //           } else {
            //             return _buildBody(snapshot.data!);
            //           }
            //       }
            //     })

            FutureBuilder(
          future: GetChat().GetChatAPI(),
          builder: (ctx, snapshot) {
            if (snapshot.data == null) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Center(child: CircularProgressIndicator())],
                ),
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
            print(snapshot.data);
            return _buildBody();
          },
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 680.h,
          child: ListView.builder(
            // reverse: true,
            controller: myController,
            itemCount: chatmessagessobj!.data!.length,
            padding: EdgeInsets.only(top: 10.h, bottom: 60.h),
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
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.r),
                                  child: Image.network(chatmessagessobj!
                                          .data?[index].profileImage ??
                                      "")
                                  // Image.asset(
                                  //     'assets/images/chat-icon.png'),
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
                              child: ProfileObj?.user?.profileImage != ''
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
                                        child:
                                            Image.asset('assets/images/1.jpg'),
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
          ),
        ),
        // ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            children: <Widget>[
              sizedBoxWidth(16.w),
              Expanded(
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
                    hintStyle: TextStyle(color: Colors.black, fontSize: 16.sp),
                    hintText: "Type a Message",
                    suffixIcon: IconButton(
                      onPressed: () {
                        ImageUploadBottomSheet().showModal(
                          context,
                          (result) {
                            print("file path is $result");
                            attachimage = result;
                            var filenameresult = extractFileName(result);
                            print("filename is $filenameresult");
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
      ],
    );
  }
}
