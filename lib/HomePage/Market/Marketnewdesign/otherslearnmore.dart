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

class Otherslearnmore extends StatefulWidget {
  final String slug;
  Otherslearnmore({super.key, required this.slug});

  @override
  State<Otherslearnmore> createState() => _OtherslearnmoreState();
}

class _OtherslearnmoreState extends State<Otherslearnmore> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = Marketplace().Getotherslearnmore(widget.slug);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
            productid: peerDetailsObj?.data?.productsId.toString(),
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                Get.toNamed("/login");
              }
            },
            text: 'Invest now'),
      ),
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
                      getotherslearnmoreobj!.data!.securityName ?? "NA",
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
                textA4856_20500("Product Category"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.productCategory ?? "NA",


                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Security Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    // getfractionallearnmoreobj!.data!.propertyAddress ?? "NA",
                      getotherslearnmoreobj!.data!.securityName ?? "NA",
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Instrument Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.instrumentType ?? "NA",
                   
                   
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Instrument Issuer"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.instrumentIssuer ?? "NA",
                   
                   

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("ISIN"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.isin ?? "NA",
                   
                    
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.creditRating ?? "NA",
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Listed"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.listed ?? "NA",
                   
                   
                   
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Date Of Original Investment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.dateOfOriginalInvestment.toString(),
                   

                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Amount Invested"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.amountInvested.toString(),
                   
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("No. Of Units Held"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.noOfUnitsHeld.toString(),
                  
                    
                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Payout Frequency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.payoutFrequency.toString(),
                   
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Face Value Per Unit"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.faceValuePerUnit.toString(),
                   
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Coupon Rate (%)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.couponRateInPct.toString(),
                    
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Principal Repaid"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.principalRepaid.toString(),

                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Maturity Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.maturityDate.toString(),
                   
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("No. Of Units For Sale"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.noOfUnitsOfferedForSale.toString(),
   
                   ),
                sizedBoxHeight(20.h),
                textA4856_20500("Expected Sale Price Per Unit"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                      getotherslearnmoreobj!.data!.expectedSalePricePerUnit.toString(),
   
                   ),
                sizedBoxHeight(20.h),
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
