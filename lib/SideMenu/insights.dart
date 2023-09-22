import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Models/Insights/BlogsModel.dart';
import 'package:freeu/Models/Insights/TagsModel.dart';
import 'package:freeu/SideMenu/InsightsInner.dart';
import 'package:freeu/ViewModel/Blogs/BlogsApis.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lottie/lottie.dart';

class Insights extends StatefulWidget {
  const Insights({super.key});

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  final insightsdrpdown = TextEditingController();

  StreamController<TagsModel> TagsController = StreamController();
  StreamController<BlogsModel> BlogsController = StreamController();
  List<PopupMenuEntry<String>> tagsList = [];
  List<int> tagsId = [];
  bool _isonce = false;
  final searchController = TextEditingController();
  int selectedIndex = -1;
  @override
  void initState() {
    var updata = {"search": null, "tag_id": null};
    BlogApis().BlogSearchAndFilter(updata, streamController: BlogsController);
    BlogApis().TagList(streamControl: TagsController);
    super.initState();
  }

  @override
  void dispose() {
    TagsController.close();
    super.dispose();
  }

  setTagList() {
    if (!_isonce) {
      for (var i = 0; i < tags!.data!.length; i++) {
        tagsList.add(
          PopupMenuItem(
            value: tags!.data![i].tagName!,
            child: Text(tags!.data![i].tagName!),
          ),
        );

        tagsId.add(tags!.data![i].id!);
      }
      _isonce = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                elevation: 0,
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Insights',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                    sizedBoxHeight(20.h),
                    //here

                    StreamBuilder<TagsModel>(
                        stream: TagsController.stream,
                        builder: (context, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return Center(child: Container());

                            default:
                              if (snapshot.hasError) {
                                return Text("Error Occured");
                              } else {
                                setTagList();
                                return TextFormField(
                                  controller: searchController,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                  ),
                                  cursorColor: const Color(0xFF1B8DC9),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.h),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 233, 233, 233),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(47.r),
                                      borderSide: BorderSide(
                                          color: Color(0xffFBFBFB), width: 1),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(47.r),
                                      borderSide: BorderSide(
                                          color: Color(0xffFBFBFB), width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(47.r),
                                      borderSide: BorderSide(
                                          color: Color(0xffFBFBFB), width: 1),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(47.r),
                                      borderSide: const BorderSide(
                                          color: Colors.red, width: 1),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(47.r),
                                      borderSide: const BorderSide(
                                          color: Colors.red, width: 1),
                                    ),
                                    hintStyle: TextStyle(
                                        color: Color(0x80000000),
                                        fontSize: 16.sp,
                                        fontFamily: "Poppins"),
                                    hintText: 'Search',
                                    prefixIcon: Icon(
                                      Icons.search_outlined,
                                      color: Colors.black,
                                    ),
                                    suffixIcon: PopupMenuButton<String>(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.r)),
                                      // constraints: BoxConstraints.expand(height: 150,
                                      // ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Colors.black,
                                      ),
                                      itemBuilder: (context) => tagsList,
                                      onSelected: (value) {
                                        setState(() {
                                          print("selected value is $value");
                                          searchController.text = value;

                                          selectedIndex = tagsList.indexWhere(
                                              (item) =>
                                                  item is PopupMenuItem<
                                                      String> &&
                                                  item.value == value);

                                          BlogApis().BlogSearchAndFilter({
                                            "search": null,
                                            "tag_id": tagsId[selectedIndex]
                                          }, streamController: BlogsController);
                                        });
                                      },
                                    ),
                                  ),
                                  onChanged: (value) {
                                    BlogApis().BlogSearchAndFilter(
                                        {"search": value, "tag_id": null},
                                        streamController: BlogsController);
                                  },
                                );
                              }
                          }
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
        body: StreamBuilder<BlogsModel>(
          stream: BlogsController.stream,
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
            return blogs!.data!.isEmpty
                ? _buildNodataBody()
                : _buildBody(
                    context,
                  );
          },
        ));
  }

  Widget _buildBody(context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, number) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Material(
                    borderRadius: BorderRadius.circular(18.r),
                    elevation: 1,
                    child: Container(
                      margin: EdgeInsets.all(14.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            blogs?.data?[number].blogTitle ?? "",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "Poppins",
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          sizedBoxHeight(6.h),
                          SizedBox(
                            width: double.infinity,
                            //height: 100.h,
                            child: Image.network(
                              blogs!.data![number].blogImage!.trim(),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 15.sp,
                                color: Color(0xff707070),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                blogs?.data?[number].date ?? "",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15.sp,
                                    color: Color(0xff707070)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          SizedBox(
                              height: 45.h,
                              child: Html(
                                  data: blogs!.data![number].blogDescription)),
                          // Text(
                          //   'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh . . .',
                          //   style: TextStyle(
                          //     fontFamily: "Poppins",
                          //     fontSize: 16.sp,
                          //     color: Color(0xFF707070),
                          //   ),
                          // ),
                          SizedBox(
                            height: 20.h,
                          ),
                          OpenContainerWrappers(
                              closeBuild: Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF143C6D),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 7),
                                    child: Center(
                                      child: Text(
                                        'Read More',
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 18.sp,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  )),
                              openBuild: InsightsInner(
                                postDate: blogs?.data?[number].date,
                                postDescription:
                                    blogs!.data![number].blogDescription,
                                postTitle: blogs!.data![number].blogTitle,
                                image: blogs!.data![number].blogImage!.trim(),
                                minsToRead: blogs!.data![number].minutesToRead,
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return sizedBoxHeight(20.h);
              },
              itemCount: blogs?.data?.length ?? 0),
        ),
      ],
    );
  }

  Widget _buildNodataBody() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              padding: EdgeInsets.all(35),
              // decoration: BoxDecoration(
              //   color: themeColor,
              //  // shape: BoxShape.circle,
              // ),
              child: Center(
                child: Lottie.asset(
                  "assets/animation_lmrtoicn.json",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 1
                // screenHeight * 0.1
                ),
            Center(
              child: Text(
                "No Data Available",
                style: TextStyle(
                  color: Colors.black,
                  //Color(0xFF008083),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
