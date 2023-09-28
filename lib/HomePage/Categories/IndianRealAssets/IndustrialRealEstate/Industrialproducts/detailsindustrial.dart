import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/DetailsIndianIndustrial.dart';
import 'package:get/get.dart';

class IndustrialDetails extends StatefulWidget {
  // final int pageIndex;
  final String slug;

  IndustrialDetails(
      {super.key,
      // required this.pageIndex
      required this.slug});

  @override
  State<IndustrialDetails> createState() => _IndustrialDetailsState();
}

class _IndustrialDetailsState extends State<IndustrialDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture =
        IndianIndustrialDetails().IndianIndustrialDetailsAPI(widget.slug);
    super.initState();
  }

  List productDetails = [
    {
      "Company Name": [
        'Evert Fleet',
        'Omega Seiki',
      ],
      "header": [
        'Asset Class',
        'Underlying Asset',
        'Sector',
        'Mobility Platform',
        'Total Deal Size',
        'Minimum Investment',
        'Tenure',
        'Payout Frequency',
        'Pre-tax Return',
      ],
      "content": [
        [
          'Asset Backed Leasing',
          'Cars',
          'Urban Mobility',
          'Uber',
          '5,04,00,000',
          '1,00,000',
          '36 M',
          'Monthly',
          '17.50%',
        ],
        [
          'Leasing',
          'Three Wheelers',
          'Urban Mobility',
          'Yatra',
          '2,10,00,000',
          '70,000',
          '36 M',
          'Monthly',
          '21.50%',
        ],
      ]
    },
  ];

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
              productid:
                  IndianIndustrialdetailsobj?.data?.productsId.toString(),
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
                sizedBoxWidth(5.w),
                SvgPicture.asset(
                  "assets/images/property.svg",
                  width: 80.w,
                  height: 54.h,
                ),
                SizedBox(
                  width: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 138.w,
                  height: 75.h,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizedBoxHeight(10.h),
                          Text(
                            IndianIndustrialdetailsobj!.data!.propertyName ??
                                "",
                            // leasefinancingdetailsobj!.data!.company ?? "",
                            style: TextStyle(
                                fontSize: 22.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
            sizedBoxHeight(24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                textA4856_20500("Property Name and Details"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.propertyName ?? "NA",
                  // leasefinancingdetailsobj!.data!.assetClass ?? "",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Location"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.propertyLocation ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Transaction Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.transactionType ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.projectType ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Code"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                    // leasefinancingdetailsobj!.data!.totalDealSize ?? "",
                    "NA"
                    // IndianIndustrialdetailsobj!.data!.prope ?? "",

                    ),
                sizedBoxHeight(20.h),
                textA4856_20500("Total Price"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.totalPrice ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Price per sq ft"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.pricePerSqFt ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Booking Amount"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.bookingAmount ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Built Up Area"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.builtUpArea ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Carpet Area"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.carpetArea ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Nearest Railway/Metro Station"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!
                          .data!.nearestRailwayMetroStation ??
                      "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Occupancy certificate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.occupancyCertificate ??
                      "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Commencent Certificate"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.commencementCertificate ??
                      "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Price is Negotiable?"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.priceNegotiable ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Age of construction"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.constructionAge ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Water availability"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.waterFacility ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Status of Electricity"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.electricityStatus ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Maintenance Fees"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.maintenanceFees ?? "NA",
                ),
                sizedBoxHeight(20.h),

                textA4856_20500("Fire Safety Measures"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.fireSafetyMeasures ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Pre-Leased"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.preLeased ?? "NA",
                ),
                sizedBoxHeight(20.h),

                textA4856_20500("Tenant Details, if any"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.tenantDetails ?? "NA",
                ),
                sizedBoxHeight(20.h),

                textA4856_20500("Facilities/Features"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.facilitiesFeatures ?? "NA",
                ),
                sizedBoxHeight(20.h),

                textA4856_20500("Remarks"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  IndianIndustrialdetailsobj!.data!.remarks ?? "NA",
                ),
                sizedBoxHeight(20.h),
                // textA4856_20500("Documents"),
                // Divider(
                //   height: 25.h,
                //   thickness: 1.h,
                //   color: Colors.grey.shade400,
                // ),
                // text272424_18(
                //   // leasefinancingdetailsobj!.data!.preTaxReturn ?? "",
                // "NA"

                // ),
                // sizedBoxHeight(20.h),
              ],
            )
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
