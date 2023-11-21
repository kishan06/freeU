import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Models/FAQ/FaqTagsandList/faqlistQandA.dart';
import 'package:freeu/Models/FAQ/FaqTagsandList/faqtagslist.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/FAQ/NewFaqs/Faqs.dart';
import 'package:lottie/lottie.dart';

class NewFAQs extends StatefulWidget {
  const NewFAQs({super.key});

  @override
  State<NewFAQs> createState() => _NewFAQsState();
}

class _NewFAQsState extends State<NewFAQs> {
  List<PopupMenuEntry<String>> tagsList = [];
  int selectedIndex = -1;
  bool _isonce = false;
  List<int> tagsId = [];
  StreamController<FaqTagsModel> TagsController = StreamController();
  StreamController<FaqlistModel> FaqlistController = StreamController();
  List<bool> notCollapsedList = [];

  @override
  void initState() {
    var updata = {"tag_id": 1};
    Faqs().FaqtagList(streamControl: TagsController);
    Faqs().FaqFilterList(updata, streamController: FaqlistController);

    super.initState();
  }

  @override
  void dispose() {
    TagsController.close();
    super.dispose();
  }

  setTagList() {
    if (!_isonce) {
      for (var i = 0; i < faqtaglist!.data!.length; i++) {
        tagsList.add(
          PopupMenuItem(
            value: faqtaglist!.data![i].tagName!,
            // faqtaglist!.data![i].tagName!,
            child: Text(faqtaglist!.data![i].tagName!),
          ),
        );

        tagsId.add(faqtaglist!.data![i].id!);
      }
      _isonce = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                      "FAQ's",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                    sizedBoxHeight(20.h),
                    //here

                    StreamBuilder<FaqTagsModel>(
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
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w),
                                      child: Container(
                                        height: 50.h,
                                        width: 140.w,
                                        color: AppColors.blue004E84,
                                        child: PopupMenuButton<String>(
                                          constraints:
                                              const BoxConstraints.tightFor(
                                                  height: 250, width: 300),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          // icon: Icon(
                                          //   Icons.keyboard_arrow_down_rounded,
                                          //   color: Colors.white,
                                          // ),
                                          elevation: 2,
                                          offset: const Offset(0, 50),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              text16White("FAQ's"),
                                              sizedBoxWidth(5.w),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color: AppColors.white,
                                              )
                                            ],
                                          ),
                                          itemBuilder: (context) => tagsList,
                                          onSelected: (value) async {
                                            setState(() {
                                              print("selected value is $value");
                                              // searchController.text = value;

                                              selectedIndex =
                                                  tagsList.indexWhere((item) =>
                                                      item is PopupMenuItem<
                                                          String> &&
                                                      item.value == value);

                                              Faqs().FaqFilterList({
                                                "tag_id": tagsId[selectedIndex]
                                              },
                                                  streamController:
                                                      FaqlistController);

                                              // Unfocus the text field with a short delay
                                              Future.delayed(
                                                  Duration(milliseconds: 100),
                                                  () {
                                                FocusScopeNode currentFocus =
                                                    FocusScope.of(context);
                                                if (!currentFocus
                                                    .hasPrimaryFocus) {
                                                  currentFocus.unfocus();
                                                }
                                              });
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
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
        body: StreamBuilder<FaqlistModel>(
          stream: FaqlistController.stream,
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
            return faqlistqa!.data!.isEmpty
                ? _buildNodataBody()
                : SingleChildScrollView(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          return _buildBody(
                            faqlistqa!.data![index].faqQuestion,
                            faqlistqa!.data![index].faqAnswer,
                            // notCollapsedList[index]
                          );
                        },
                        separatorBuilder: (_, index) {
                          return sizedBoxHeight(10.h);
                        },
                        itemCount: faqlistqa!.data!.length ?? 0),
                  );
            // _buildBody(
            //   faqlistqa!.data![index].faqQuestion,
            //   faqlistqa!.data![index].faqAnswer.

            // );

            //  blogs!.data!.isEmpty
            //     ? _buildNodataBody()
            //     : _buildBody(
            //         context,
            //       );
          },
        )

        //  FutureBuilder(
        //   future: FAQ().GeneralFaqApi(),
        //   builder: (ctx, snapshot) {
        //     if (snapshot.data == null) {
        //       return Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [Center(child: CircularProgressIndicator())],
        //       );
        //     }
        //     if (snapshot.connectionState == ConnectionState.done) {
        //       if (snapshot.hasError) {
        //         return Center(
        //           child: Text(
        //             '${snapshot.error} occured',
        //             style: TextStyle(fontSize: 18.spMin),
        //           ),
        //         );
        //       } else {
        //         setTagList();
        //       }
        //     }
        //     return _buildBody();
        //   },
        // ),
        );
  }

  Widget _buildBody(
    question,
    answers,
  ) {
    return FaqBox(
      contentString: answers,
      titleString: question,
    );
  }

  // Widget _buildBody() {
  //   return SafeArea(
  //       child: Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       sizedBoxHeight(10.h),
  //       Padding(
  //         padding: EdgeInsets.symmetric(horizontal: 16.w),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             GestureDetector(
  //                 onTap: () {
  //                   Get.back();
  //                 },
  //                 child: Icon(
  //                   Icons.arrow_back,
  //                   size: 24.sp,
  //                   color: const Color(0xff000000),
  //                 )),
  //             SizedBox(
  //               height: 10.h,
  //             ),
  //             Text(
  //               "FAQ's",
  //               style: TextStyle(
  //                   fontFamily: "Poppins",
  //                   fontSize: 25.sp,
  //                   fontWeight: FontWeight.w500),
  //             ),
  //           ],
  //         ),
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         children: [
  //           Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 16.w),
  //             child: Container(
  //               height: 50.h,
  //               width: 140.w,
  //               color: AppColors.blue004E84,
  //               child: PopupMenuButton<String>(
  //                 constraints:
  //                     const BoxConstraints.tightFor(height: 250, width: 300),
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(20.r)),
  //                 // icon: Icon(
  //                 //   Icons.keyboard_arrow_down_rounded,
  //                 //   color: Colors.white,
  //                 // ),
  //                 elevation: 2,
  //                 offset: const Offset(0, 50),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     text16White("FAQ's"),
  //                     sizedBoxWidth(5.w),
  //                     Icon(
  //                       Icons.keyboard_arrow_down_rounded,
  //                       color: AppColors.white,
  //                     )
  //                   ],
  //                 ),
  //                 itemBuilder: (context) => tagsList,
  //                 onSelected: (value) async {
  //                   setState(() {
  //                     print("selected value is $value");
  //                     // searchController.text = value;

  //                     selectedIndex = tagsList.indexWhere((item) =>
  //                         item is PopupMenuItem<String> && item.value == value);

  //                     // Unfocus the text field with a short delay
  //                     Future.delayed(Duration(milliseconds: 100), () {
  //                       FocusScopeNode currentFocus = FocusScope.of(context);
  //                       if (!currentFocus.hasPrimaryFocus) {
  //                         currentFocus.unfocus();
  //                       }
  //                     });
  //                   });
  //                 },
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //       Expanded(
  //         child: SingleChildScrollView(
  //           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
  //           child: ListView.separated(
  //               shrinkWrap: true,
  //               physics: const NeverScrollableScrollPhysics(),
  //               itemBuilder: (_, index) {
  //                 return Column(
  //                   children: [
  //                     sizedBoxHeight(20.h),
  //                     OpenContainerWrappers(
  //                       openBuild: Fractional1(
  //                         title: generalfaq?.data?[index].tagName,
  //                         faqslist: generalfaq?.data?[index].faq,
  //                       ),
  //                       closeBuild: catTitle(
  //                           generalfaq?.data?[index].tagName ?? "",
  //                           generalfaq?.data?[index].tagImage ?? "",
  //                           AppColors.blueL_006796),
  //                     ),
  //                     Divider(
  //                         color: Colors.black.withOpacity(0.8), height: 40.h)
  //                   ],
  //                 );
  //               },
  //               separatorBuilder: (_, index) {
  //                 return sizedBoxHeight(10.h);
  //               },
  //               itemCount: 8),
  //           // child: Column(
  //           //   mainAxisAlignment: MainAxisAlignment.start,
  //           //   crossAxisAlignment: CrossAxisAlignment.start,
  //           //   children: [
  //           //     sizedBoxHeight(20.h),
  //           //     OpenContainerWrappers(
  //           //       openBuild: const Fractional1(),
  //           //       closeBuild: catTitle('Fractional Real Estate',
  //           //           'assets/newImages/cat2.png', AppColors.blueL_006796),
  //           //     ),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
  //           //     // sizedBoxHeight(15.h),
  //           //     OpenContainerWrappers(
  //           //         openBuild: const PeerFAQ(),
  //           //         closeBuild: catTitle('Peer to Peer Lending',
  //           //             'assets/newImages/cat3.png', AppColors.greenL_089435)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

  //           //     OpenContainerWrappers(
  //           //         openBuild: const InvoiceFAQ(),
  //           //         closeBuild: catTitle('Invoice discounting',
  //           //             'assets/newImages/cat4.png', AppColors.purpleL_474E88)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

  //           //     OpenContainerWrappers(
  //           //         openBuild: const AlternativeFAQ(),
  //           //         closeBuild: catTitle('Alternative Investment Fund',
  //           //             'assets/newImages/cat1.png', AppColors.redL_BE0F02)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

  //           //     OpenContainerWrappers(
  //           //         openBuild: const CleanGreenFAQ(),
  //           //         closeBuild: catTitle('Clean and Green Assets',
  //           //             'assets/newImages/cat7.png', AppColors.redL_BE0F02)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),

  //           //     OpenContainerWrappers(
  //           //         openBuild: const SecuritizedFAQ(),
  //           //         closeBuild: catTitle('Securitized Debt Instrument',
  //           //             'assets/newImages/cat9.png', AppColors.greenL_089435)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
  //           //     OpenContainerWrappers(
  //           //         openBuild: const RevenueFAQ(),
  //           //         closeBuild: catTitle('Revenue Based Financing',
  //           //             'assets/newImages/cat5.png', AppColors.brownL_973926)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
  //           //     OpenContainerWrappers(
  //           //         openBuild: const HighYeldFAQ(),
  //           //         closeBuild: catTitle(
  //           //             'High Yield Finance',
  //           //             'assets/newImages/cat10.png',
  //           //             AppColors.purpleL_474E88)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
  //           //     OpenContainerWrappers(
  //           //         openBuild: const LeasingFAQ(),
  //           //         closeBuild: catTitle('Asset backed leasing',
  //           //             'assets/newImages/cat6.png', AppColors.pinkL_E6088B)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
  //           //     OpenContainerWrappers(
  //           //         openBuild: const VentureDebtFAQ(),
  //           //         closeBuild: catTitle('Venture Debt',
  //           //             'assets/newImages/cat8.png', AppColors.blueL_006796)),
  //           //     Divider(color: Colors.black.withOpacity(0.8), height: 40.h),
  //           //     sizedBoxHeight(15.h),
  //           //   ],
  //           // ),
  //         ),
  //       ),
  //     ],
  //   ));
  // }

  // Widget catTitle(String title, String image, Color color) {
  //   return SizedBox(
  //     width: double.infinity - 32.w,
  //     // height: 80.h,
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         Image.network(
  //           image,
  //           height: 45.h,
  //           width: 45.h,
  //           color: color,
  //         ),
  //         sizedBoxWidth(20.w),
  //         Flexible(
  //           child: Text(
  //             title,
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontSize: 18.sp,
  //               fontWeight: FontWeight.w500,
  //               fontFamily: "Poppins",
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

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

class FaqBox extends StatefulWidget {
  final String titleString;
  final String contentString;
  FaqBox({super.key, required this.titleString, required this.contentString});

  @override
  State<FaqBox> createState() => _FaqBoxState();
}

class _FaqBoxState extends State<FaqBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              isExpanded ? null : Border.all(color: const Color(0xffCCCCCC)),
          color: isExpanded ? const Color(0xff143C6D) : Colors.white,
          borderRadius: BorderRadius.circular(10.r)),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(15.h),
        initiallyExpanded: isExpanded,
        onExpansionChanged: (bool expanding) {
          setState(() {
            isExpanded = expanding;
          });
        },
        trailing: Icon(
          isExpanded
              ? Icons.remove_circle_outline_rounded
              : Icons.add_circle_outline_rounded,
          size: 18.sp,
          color: isExpanded ? Colors.white : Colors.black,
        ),
        title: Text(
          widget.titleString,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20.sp,
              color: isExpanded ? Colors.white : Colors.black),
        ),
        children: <Widget>[
          Text(
            widget.contentString,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
