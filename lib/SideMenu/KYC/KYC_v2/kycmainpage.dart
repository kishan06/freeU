import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/SideMenu/KYC/KYC_v2/kyctypes/companykyc.dart';
import 'package:freeu/SideMenu/KYC/KYC_v2/kyctypes/hufkyc.dart';
import 'package:freeu/SideMenu/KYC/KYC_v2/kyctypes/individualkyc.dart';
import 'package:freeu/SideMenu/KYC/KYC_v2/kyctypes/nrikyc.dart';
import 'package:freeu/SideMenu/KYC/KYC_v2/kyctypes/otherkyc.dart';
import 'package:freeu/SideMenu/KYC/KYC_v2/kyctypes/partnershipkyc.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/KYC_v2/Getkycstaus.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Kycmainpage extends StatefulWidget {
  const Kycmainpage({super.key});

  @override
  State<Kycmainpage> createState() => _KycmainpageState();
}

class _KycmainpageState extends State<Kycmainpage> {
  // late Future myfuture;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   myfuture = Kycstatus().Getkycstatus();
  // }

  Widget _getFilledForm(String? kycType) {
    switch (kycType) {
      case 'Company':
        return Companykycpage(
          showAppbar: false,
        );
      case 'Partnership':
        return Partnershipkycpage(
          showAppbar: false,
        );
      case 'Individual':
        return Individualkycpage(
          showAppbar: false,
        );
      case 'HUF':
        return HUFkycpage(
          showAppbar: false,
        );
      case 'NRI':
        return NRIkycpage(
          showAppbar: false,
        );
      case 'Other':
        return Otherkycpage(
          showAppbar: false,
        );
      default:
        return Text('Unknown KYC Type');
    }
  }

  bool? showAppbar;

  // Widget _getFilledForm(String? kycType, BuildContext context) {
  //   switch (kycType) {
  //     case 'Company':
  //       // return Companykycpage();
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const Companykycpage(),
  //         ),
  //       );
  //       return Container();
  //     case 'Partnership':
  //       // return Partnershipkycpage();
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const Partnershipkycpage(),
  //         ),
  //       );
  //       return Container();
  //     case 'Individual':
  //       // return Individualkycpage();
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const Individualkycpage(),
  //         ),
  //       );
  //       return Container();
  //     case 'HUF':
  //       return HUFkycpage(
  //         showAppbar: false,
  //       );
  //     // Navigator.push(
  //     //   context,
  //     //   MaterialPageRoute(
  //     //     builder: (context) => const HUFkycpage(),
  //     //   ),
  //     // );
  //     // return Container(); // Placeholder widget, you can change this to what fits your UI.
  //     case 'NRI':
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => NRIkycpage(),
  //         ),
  //       );
  //       return Container(); // Placeholder widget, you can change this to what fits your UI.
  //     case 'Other':
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => Otherkycpage(),
  //         ),
  //       );
  //       return Container(); // Placeholder widget, you can change this to what fits your UI.
  //     default:
  //       return Text('Unknown KYC Type');
  //   }
  // }

  final controllerEntryPoint = Get.put(EntryPointController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        body: controllerEntryPoint.logedIn!
            ? FutureBuilder(
                future: Kycstatus().Getkycstatus(),
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
                  if (getkycstatusobj!.data!.status == 'Rejected') {
                    print("kyc is rejected : ${getkycstatusobj!.data!.status}");
                    return _getFilledForm(getkycstatusobj!.data!.kycType);
                  } else if (getkycstatusobj!.data!.status! == "New") {
                    print(
                        "KYC Type is not empty: ${getkycstatusobj!.data!.kycType}");
                    return _buildDataBody();
                  } else if (getkycstatusobj!.data!.status == 'Approved') {
                    return _buildDataBody();
                  } else if (getkycstatusobj!.data!.status == 'No KYC Found') {
                    print("KYC Type is empty");
                    return _buildBody(context);
                  } else {
                    return Center(
                      child: Text(
                        'Unknown status: ${getkycstatusobj!.data!.status}',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    );
                  }
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
                        "assets/images/Device.png",
                        width: 270.w,
                        height: 270.h,
                      ),
                      sizedBoxHeight(20.h),
                      CustomNextButton(
                        text: "Login to continue",
                        ontap: () {
                          // Get.toNamed("/login");
                            Get.offAllNamed("/login");
                        },
                      ),
                      sizedBoxHeight(60.h)
                    ],
                  ),
                ),
              ));
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "KYC",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 25.sp),
          ),
          sizedBoxHeight(10.h),
          Text(
            "Select which kyc you want to do",
            style: TextStyle(
                fontSize: 22.sp,
                color: Color(0xFF143C6D),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
          sizedBoxHeight(10.h),
          OpenContainerWrappers(
              closeBuild: CustomListTiles(
                title: "Company KYC",
                // ontap: () {
                //   // Get.toNamed("/companykycpage");
                // },
              ),
              openBuild: Companykycpage()),
          // Divider(color: Colors.black.withOpacity(0.8), height: 30.h),
          sizedBoxHeight(30.h),
          OpenContainerWrappers(
              closeBuild: CustomListTiles(
                title: "Partnership KYC",
                // ontap: () {
                //   Get.toNamed("/partnershipkycpage");
                // },
              ),
              openBuild: Partnershipkycpage()),
          // Divider(color: Colors.black.withOpacity(0.8), height: 30.h),
          sizedBoxHeight(30.h),
          OpenContainerWrappers(
              closeBuild: CustomListTiles(
                title: "Other KYC",
                // ontap: () {
                //   Get.toNamed("/otherkycpage");
                // },
              ),
              openBuild: Otherkycpage()),
          // Divider(color: Colors.black.withOpacity(0.8), height: 30.h),
          sizedBoxHeight(30.h),
          OpenContainerWrappers(
              closeBuild: CustomListTiles(
                title: "Individual KYC",
                // ontap: () {
                //   Get.toNamed("/individualkycpage");
                // },
              ),
              openBuild: Individualkycpage()),
          // Divider(color: Colors.black.withOpacity(0.8), height: 30.h),
          sizedBoxHeight(30.h),
          OpenContainerWrappers(
              closeBuild: CustomListTiles(
                title: "HUF KYC",
                // ontap: () {
                //   Get.toNamed("/hufkycpage");
                // },
              ),
              openBuild: HUFkycpage()),
          // Divider(color: Colors.black.withOpacity(0.8), height: 30.h),
          sizedBoxHeight(30.h),
          OpenContainerWrappers(
              closeBuild: CustomListTiles(
                title: "NRi KYC",
                // ontap: () {
                //   Get.toNamed("/nrikycpage");
                // },
              ),
              openBuild: NRIkycpage()),
          // Divider(color: Colors.black.withOpacity(0.8), height: 30.h),
          sizedBoxHeight(30.h),
        ],
      ),
    );
  }

  Widget _buildDataBody() {
    return getkycstatusobj!.data!.status == "Approved"
        ? Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/customSuccessKYC.json'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 260.w,
                      child: Center(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Your ",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.blue002A5B,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: getkycstatusobj!.data!.kycType ?? "",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.blue002A5B,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: " KYC has been",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.blue002A5B,
                                fontWeight: FontWeight.w500),
                          )
                        ])),
                      ),
                    ),
                  ],
                ),
                Text(
                  "approved",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.blue002A5B,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center, // Center align the text
                ),
              ],
            ),
          )
        : Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/customSuccessKYC.json'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 260.w,
                      child: Center(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Your ",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.blue002A5B,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: getkycstatusobj!.data!.kycType ?? "",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.blue002A5B,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: " KYC has been",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.blue002A5B,
                                fontWeight: FontWeight.w500),
                          )
                        ])),
                      ),
                    ),
                  ],
                ),
                Text(
                  "submitted for review",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.blue002A5B,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center, // Center align the text
                ),
              ],
            ),
          );
  }
}

class CustomListTiles extends StatelessWidget {
  CustomListTiles({
    Key? key,
    required this.title,
    // this.ontap,
  }) : super(key: key);

  final String title;

  // final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   ontap!.call();
      // },
      child: SizedBox(
        child: Container(
          // color: AppColors.blue002A5B,
          // decoration: ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: AppColors.blue002A5B, // Set border radius here
            border: Border.all(
              color: Colors.black, // Set border color here
              width: 1.0, // Set border width here
            ),
          ),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
