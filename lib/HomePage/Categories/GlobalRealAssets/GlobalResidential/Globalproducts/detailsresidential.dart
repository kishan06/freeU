import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/ViewModel/DetailsGlobalResidential.dart';
import 'package:get/get.dart';

class GlobalResidentialDetails extends StatefulWidget {
  // final int pageIndex;
  final String slug;

  GlobalResidentialDetails(
      {super.key,
      // required this.pageIndex
      required this.slug});

  @override
  State<GlobalResidentialDetails> createState() =>
      _GlobalResidentialDetailsState();
}

class _GlobalResidentialDetailsState extends State<GlobalResidentialDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;
    var sliderPage = 0.obs;
  final CarouselController carouselController = CarouselController();

  @override
  void initState() {
    myfuture = GlobalResidentialDetailsviewmodel()
        .GlobalResidentialDetailsviewmodelAPI(widget.slug);
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
                  Globalresidentialdetailsobj?.data?.productsId.toString(),
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
                            Globalresidentialdetailsobj!.data!.propertyName ??
                                "",
                            // "Lorem Ipsum",
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
            buildCarousel(),
            sizedBoxHeight(5.h),
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
                  Globalresidentialdetailsobj!.data!.propertyName ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Location"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.propertyLocation ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Property Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.projectType ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Transaction Type"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.transactionType ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Country"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.country ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Area (in Sq ft)"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.areaInSqFt ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Total Price"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.totalPrice ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Price per Sq Ft"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.pricePerSqFt ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("No of bedroom"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.noOfBedrooms ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("No of Restrooms"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.noOfRestrooms ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Key Features"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.facilitiesFeatures ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Amenities"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.amenities ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Furnished Status"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.furnishedStatus ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Elevators"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.elevators ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Fire Safety Measures"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.fireSafetyMeasures ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Water Facility"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.waterFacility ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Nearest Metro Station"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!
                          .data!.nearestRailwayMetroStation ??
                      "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Remarks"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  Globalresidentialdetailsobj!.data!.remarks ?? "NA",
                ),
                sizedBoxHeight(20.h),
                //  textA4856_20500("Documents"),
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

            // SizedBox(
            //   height: MediaQuery.of(context).size.height - 265.h,
            //   child: ListView.separated(
            //       itemBuilder: (context, index) {
            //         return Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               productDetails[0]['header'][index],
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 20.sp,
            //                 color: const Color(0xff3A4856),
            //               ),
            //             ),
            //             Divider(
            //               height: 25.h,
            //               thickness: 1.h,
            //               color: Colors.grey.shade400,
            //             ),
            //             Text(
            //               // productDetails[0]['content'][widget.pageIndex]
            //                   // [index],
            //                   ""
            //                   ,
            //               style: TextStyle(
            //                   fontSize: 18.sp,
            //                   color: const Color(0xff272424)),
            //             ),
            //             sizedBoxHeight(28.h)
            //           ],
            //         );
            //       },
            //       separatorBuilder: (context, index) {
            //         return SizedBox(
            //           height: 0.h,
            //         );
            //       },
            //       itemCount: productDetails[0]['header'].length),
            // ),
          ],
        ),
      ),
    );
  }

    Widget buildCarousel() {
    if (Globalresidentialdetailsobj!.data?.photos?.isNotEmpty ?? false) {
      return Column(
        children: [
          CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: Globalresidentialdetailsobj!.data?.photos?.length ?? 0,
            itemBuilder: (context, index, realIndex) {
              String? photoUrl =
                  Globalresidentialdetailsobj!.data?.photos?[index].data;

              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 159.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(photoUrl ?? ''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              height: 159.0,
              autoPlayAnimationDuration: const Duration(seconds: 3),
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  sliderPage.value = index;
                });
              },
            ),
          ),
          sizedBoxHeight(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              Globalresidentialdetailsobj!.data?.photos?.length ?? 0,
              (index) => GestureDetector(
                onTap: () => carouselController.animateToPage(index),
                child: Container(
                  decoration: BoxDecoration(
                    color: sliderPage.value == index
                        ? AppColors.blue143C6D
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  width: 12.w,
                  height: sliderPage.value == index ? 3.h : 2.h,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 3.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return SizedBox(height: 0.h);
    }
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
