import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/Marketplace/Getmarketplace.dart';
import 'package:freeu/viewModel/PeerDetailsService.dart';
import 'package:get/get.dart';

class Fractionalestatelearnmore extends StatefulWidget {
  final String slug;
  Fractionalestatelearnmore({super.key, required this.slug});

  @override
  State<Fractionalestatelearnmore> createState() => _FractionalestatelearnmoreState();
}

class _FractionalestatelearnmoreState extends State<Fractionalestatelearnmore> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = Marketplace().Getfractionallearnmore(widget.slug);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
      //   child: CustomNextButton(
      //       productid: peerDetailsObj?.data?.productsId.toString(),
      //       ontap: () {
      //         if (controllerEntryPoint.logedIn!) {
      //           // investNow();
      //           Get.toNamed("/marketplaceform");
      //         } else {
      //           Get.toNamed("/login");
      //         }
      //       },
      //       text: 'Invest now'),
      // ),
      body: FutureBuilder(
          future: myfuture,
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
            return _buildBody(
              context,
            );
          }),
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // sizedBoxHeight(10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // sizedBoxWidth(5.w),
                // SizedBox(
                //   width: 20.h,
                // ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      getfractionallearnmoreobj!.data!.propertyName ?? "NA",
                      // getmarketlearnmoreobj!.data!.nameOfTheAifFund ?? "NA",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            sizedBoxHeight(24.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textA4856_20500("Property Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    // getmarketlearnmoreobj!.data!.nameOfTheAifFund ?? ""
                    getfractionallearnmoreobj!.data!.propertyName ?? "NA",
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Address"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.propertyAddress ?? "NA",
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Grade"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.propertyGrade ?? "NA",
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Asset Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.assetType ?? "NA",

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Annual Rental Yield Earned"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.annualRentalYieldEarned ?? "NA",
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Rental Escalation"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.rentalEscalation ?? "NA",
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fractional Real Estate Platform"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.fractionalRealEstatePlatform ?? "NA",
                   
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Date Of Investment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.dateOfInvestment ?? "NA",

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Original Amount Invested"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.originalAmountInvested ?? "NA",
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Current Market Value Of The Property"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.currentMarketValueOfTheProperty ?? "NA",
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Expected Selling Price"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getfractionallearnmoreobj!.data!.expectedSellingPrice ?? "NA",
                   
                   ),
                sizedBoxHeight(20.h),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 10.h),
                  child: 
                  getfractionallearnmoreobj?.invested == false
  ? CustomNextButton(
      productid: peerDetailsObj?.data?.productsId.toString(),
      ontap: () {
        if (controllerEntryPoint.logedIn!) {
          // investNow();
          Get.toNamed("/marketplaceform");
        } else {
          Get.toNamed("/login");
        }
      },
      text: 'Invest now',
    )
  : CustomNextButton(
      productid: peerDetailsObj?.data?.productsId.toString(),
      ontap: () {
        if (controllerEntryPoint.logedIn!) {
          // investNow();
          // Get.toNamed("/marketplaceform");
          Get.offAllNamed('/EntryPoint', arguments: 2);
        } else {
          Get.toNamed("/login");
        }
      },
      text: 'Show investment',
    )

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void investNow() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/images/thankyouinvestment.svg"),
              Text(
                "Thank You For Showing Your Interest",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff0F0C0C),
                    fontSize: 30.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              Text(
                "A FreeU Advisory Team will get back to you soon.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff272424),
                    fontSize: 20.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              CustomNextButton(
                  ontap: () {
                    Get.back();
                    Get.back();
                  },
                  text: 'View more products')
            ],
          ),
        );
      },
    );
  }
}
