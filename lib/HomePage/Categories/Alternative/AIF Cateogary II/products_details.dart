import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class ProductsDetails extends StatefulWidget {
  int pageIndex;
  ProductsDetails({super.key, required this.pageIndex});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List productDetails = [
    {
      "Company Name": [
        "HDFC AMC Select AIF FOF – I".tr,
        "Edelweiss Discovery Fund".tr
      ],
      "header": [
        "Registration No.".tr,
        "Fund Category (I/II/III)".tr,
        "Fund Structure (Open/Closed)".tr,
        "Fund Strategy".tr,
        "Fund Domicile".tr,
        "Fund Manager Name".tr,
        "Website of the fund".tr,
        "Fund Manager Experience".tr,
        "Sponsor".tr,
        "Manager".tr,
        "Trustee".tr,
        "Auditor".tr,
        "Valuer / Tax Advisor".tr,
        "Credit Rating (if any)".tr,
        "Open Date".tr,
        "1st Close Date".tr,
        "Final Close Date".tr,
        "Tenure from Final Close".tr,
        "Commitment Period".tr,
        "Native Currency".tr,
        "Target Corpus".tr,
        "Investment Manager Contribution".tr,
        "Minimum Capital Commitment".tr,
        "Initial Drawdown".tr,
        "Accepting Overseas investment?".tr,
        "Target IRR (%)".tr,
        '"Management Fees and Carry  - Set Up Fee  - Management Fee  - Performance Fee"'
            .tr,
        "Hurdle Rate".tr,
        "Other Expenses".tr,
        "Focused Sectors (Industries in which they are investing)".tr,
        "Regions Covered (Geographical Locations covered by the fund)".tr
      ],
      "content": [
        [
          "N/A",
          "II",
          "Closed".tr,
          "Invest in ~ 15 VC/PE funds.Up to 50% in venture capital funds and balance in private equity funds \nMaximum exposure to co-investment opportunities will be capped at 30% of the corpus".tr,
          "N/A",
          "HDFC AMC".tr,
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "11 + 1 + 1 years".tr,
          "5 Years".tr,
          "N/A",
          "₹ 1,500 crore + green shoe of up to ₹ 1,500 crore".tr,
          "10% of Capital Commitment raised".tr,
          "1 Crore".tr,
          "N/A",
          "N/A",
          "N/A",
          "2.5% p.a. Management Fee & 20% Carry with full catchup".tr,
          "XIRR of 10% (pre-tax) on Capital Contributions received".tr,
          "N/A",
          "N/A",
          "N/A",
        ],
        [
          "IN/AIF2/21-22/1021",
          "II",
          "Closed",
          "Invest in mid-stage businesses that are leaders of emerging sectors".tr,
          "India".tr,
          "Ashish Agarwal".tr,
          "N/A",
          "Fund Manager has 16 years experience in mid stage PE.".tr,
          "N/A",
          "Edelweiss Asset Management Limited".tr,
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "Sept-2022".tr,
          "24 months from the initial close".tr,
          "N/A",
          "30M from Initial Closing".tr,
          "Rupees".tr,
          "N/A",
          "2.5% of the Fund size or INR 5 crores, whichever is lower".tr,
          "1 Crore".tr,
          "N/A",
          "N/A",
          "N/A",
          "Entry Fee - Up to 2% of commitment amount \nManagement Fee - Class A1 INR 1 crore and INR 5 crore commitment, Class A2 => INR 5 crore commitment and < INR 10 crore commitment, Class A3 => INR 10 Crore \nPerformance Fee 20% over a hurdle rate of 10%".tr,
          "N/A",
          "N/A",
          "Consumer brands and Tech-enabled B2B services".tr,
          "N/A",
        ],
      ]
    },
  ];

  // N/A

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
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                Get.toNamed("/login");
              }
            },
            text: 'Invest now'.tr),
      ),
      body: Padding(
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
                    width: MediaQuery.of(context).size.width - 132.w,
                    height: 75.h,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productDetails[0]['Company Name']
                                  [widget.pageIndex],
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 265.h,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productDetails[0]['header'][index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: const Color(0xff3A4856),
                            ),
                          ),
                          Divider(
                            height: 25.h,
                            thickness: 1.h,
                            color: Colors.grey.shade400,
                          ),
                          Text(
                            productDetails[0]['content'][widget.pageIndex]
                                [index],
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff272424)),
                          ),
                          sizedBoxHeight(28.h)
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                      // Divider(
                      //   height: 25.h,
                      //   thickness: 1.h,
                      //   color: Colors.grey.shade400,
                      // );
                    },
                    itemCount: productDetails[0]['header'].length),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text(
              //       'view ',
              //       style: TextStyle(
              //           fontWeight: FontWeight.w500,
              //           fontSize: 15.sp,
              //           color: const Color(0xff1B8DC9)),
              //     ),
              //     Text(
              //       productDetails[0]['Company Name'][widget.pageIndex],
              //       style: TextStyle(
              //           fontWeight: FontWeight.w500,
              //           fontSize: 15.sp,
              //           color: const Color(0xff1B8DC9)),
              //     )
              //   ],
              // )
            ],
          ),
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
                "Thank You For Showing Your Interest".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff0F0C0C),
                    fontSize: 30.sp,
                    fontFamily: "Poppins"),
              ),
              sizedBoxHeight(30.h),
              Text(
                "A FreeU Advisory Team will get back to you soon.".tr,
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
                  text: 'View more products'.tr)
            ],
          ),
        );
      },
    );
  }
}
