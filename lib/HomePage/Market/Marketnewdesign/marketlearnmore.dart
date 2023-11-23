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

class Marketplacelearnmore extends StatefulWidget {
  final String slug;
  Marketplacelearnmore({super.key, required this.slug});

  @override
  State<Marketplacelearnmore> createState() => _MarketplacelearnmoreState();
}

class _MarketplacelearnmoreState extends State<Marketplacelearnmore> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = Marketplace().Getmarketlearnmore(widget.slug);
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
                      getmarketlearnmoreobj!.data!.nameOfTheAifFund ?? "NA",
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
                textA4856_20500("Name Of The AIF Fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.nameOfTheAifFund ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Category"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.fundCategory ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Structure"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.fundStructure ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Type Of Fund"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(getmarketlearnmoreobj!.data!.typeOfFund ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Strategy"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.fundStrategy ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.fundManagerName ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Fund Manager Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.fundManagerName ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Sponsor"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(getmarketlearnmoreobj!.data!.sponsor ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.creditRating ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Total Capital Commitment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.totalCapitalCommitment ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Uncalled Capital Commitment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.uncalledCapitalCommitment ??
                        "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Date Of Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.dateOfFinalClose ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Tenure From Final Close"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.tenureFromFinalClose ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("Current NAV/ Latest NAV"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.currentOrLatestNav ?? "NA"),
                sizedBoxHeight(20.h),
                textA4856_20500("No. Of Units Held"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    getmarketlearnmoreobj!.data!.noOfUnitsHeld.toString()),
                sizedBoxHeight(20.h),
                textA4856_20500("No. Of Units To Sell"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(getmarketlearnmoreobj!
                    .data!.noOfUnitsYouWishToSell
                    .toString()),
                sizedBoxHeight(20.h),
                textA4856_20500("Expected Sale Per Unit"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(getmarketlearnmoreobj!.data!.expectedSalePerUnit
                    .toString()),
                sizedBoxHeight(20.h),
                Padding(
                    padding: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 10.h),
                    child: getmarketlearnmoreobj?.invested == false
                        ? CustomNextButton(
                            // productid:
                            //     peerDetailsObj?.data?.productsId.toString(),
                            ontap: () {
                              if (controllerEntryPoint.logedIn!) {
                                // investNow();
                                Get.toNamed("/marketplaceform");
                              } else {
                                // Get.toNamed("/login");
                          Get.offAllNamed('/login');
                              }
                            },
                            text: 'Invest now',
                          )
                        : CustomNextButton(
                            // productid:
                            //     peerDetailsObj?.data?.productsId.toString(),
                            ontap: () {
                              if (controllerEntryPoint.logedIn!) {
                                // investNow();
                                // Get.toNamed("/marketplaceform");
                                Get.offAllNamed('/EntryPoint', arguments: 2);
                              } else {
                                // Get.toNamed("/login");
                            Get.offAllNamed("/login");
                              }
                            },
                            text: 'Show investment',
                          )),
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
