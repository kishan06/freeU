import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/SecuredDebtDetails.dart';
import 'package:get/get.dart';

class SecuritizedProperties2 extends StatefulWidget {
  final String slug;

  const SecuritizedProperties2({super.key, required this.slug});

  @override
  State<SecuritizedProperties2> createState() => _SecuritizedProperties2State();
}

class _SecuritizedProperties2State extends State<SecuritizedProperties2> {
  final controllerEntryPoint = Get.put(EntryPointController());
  late Future myfuture;

  @override
  void initState() {
    // TODO: implement initState
    myfuture = SecuredDebtDetails().SecuredDebtDetailsAPI(widget.slug);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomSignupAppBar(
          titleTxt: "",
          bottomtext: false,
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
          child: CustomNextButton(
              productid: secureddebtDetailsobj?.data?.productsId.toString(),
              ontap: () {
                if (controllerEntryPoint.logedIn!) {
                  investNow();
                } else {
                  // Get.toNamed("/login");
                          Get.offAllNamed('/login');
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
          },
        ));
  }

  Widget _buildBody(context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(5.w),
                Container(
                  child: SvgPicture.asset(
                    "assets/images/property.svg",
                    width: 80.w,
                    height: 54.h,
                  ),
                ),
                SizedBox(
                  width: 20.h,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      secureddebtDetailsobj!.data!.productName ?? "",
                      // "Securitized Debt Instrument",
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
                textA4856_20500("Product Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(secureddebtDetailsobj!.data!.productName ?? ""),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       "Lease X",
                //       style: TextStyle(
                //         fontWeight: FontWeight.w500,
                //         fontSize: 18.sp,
                //         color: const Color(0xff0F0C0C),
                //       ),
                //     ),
                //   ],
                // ),
                sizedBoxHeight(20.h),
                textA4856_20500("Total Deal Size"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(secureddebtDetailsobj!.data!.totalDealSize ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    secureddebtDetailsobj!.data!.minimumInvestment ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Credit Rating"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    // "No data"
                    secureddebtDetailsobj!.data!.creditRating ?? "No data"),
                sizedBoxHeight(20.h),
                textA4856_20500("Deal Tenure"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(secureddebtDetailsobj!.data!.dealTenure ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Target IRR"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(secureddebtDetailsobj!.data!.targetIrr ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Target Multiple"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    secureddebtDetailsobj!.data!.targetMultiple ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Payout Frequency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    secureddebtDetailsobj!.data!.payoutFrequency ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Principal Returned In"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    secureddebtDetailsobj!.data!.principalReturnedIn ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Average Annual Payback"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    secureddebtDetailsobj!.data!.averageAnnualPayback ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Security Enhancement"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    secureddebtDetailsobj!.data!.securityEnhancement ?? ""),
                sizedBoxHeight(20.h),
                textA4856_20500("Listing Details"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    secureddebtDetailsobj!.data!.listingDetails ?? ""),
                sizedBoxHeight(20.h),
              ],
            ),
          ],
        ),
      ),
    ));
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
