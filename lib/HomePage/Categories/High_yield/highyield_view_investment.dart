import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/HomePage/Categories/High_yield/model/highyield_prods_model.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/HighyieldDetails.dart';
import 'package:get/get.dart';

class HighYieldViewInvestment extends StatefulWidget {
  // final HighYieldProds highYieldProds;
  final String slug;

  HighYieldViewInvestment({super.key, required this.slug
      // required this.highYieldProds
      });

  @override
  State<HighYieldViewInvestment> createState() =>
      _HighYieldViewInvestmentState();
}

class _HighYieldViewInvestmentState extends State<HighYieldViewInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());
  late Future myfuture;

  @override
  void initState() {
    myfuture = HighyieldsDetails().HighyieldsDetailsAPI(widget.slug);
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
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      highyieldDetailsobj!.data!.securityName ?? "",
                      // widget.highYieldProds.securityName,
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
                textA4856_20500("Security Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.securityType ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("ISIN"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.isin ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Issuer Company"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.issuerCompany ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Issue size"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.issueSize ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Issue Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.issueType ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Listing details"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.listingDetails ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Rating category"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.ratingCategory ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Minimum Investment"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.minimumInvestment ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Coupon Rate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.couponRate ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Yield to Maturity"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.yieldToMaturity ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Interest payment frequency"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.interestPaymentFrequency ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Allotment Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.allotmentDate ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Maturity Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.maturityDate ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Maturity Date"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  highyieldDetailsobj!.data!.maturityDate ?? "",
                ),
                sizedBoxHeight(20.h),
              ],
            )
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
