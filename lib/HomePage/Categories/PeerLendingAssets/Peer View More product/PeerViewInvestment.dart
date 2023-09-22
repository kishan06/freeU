import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/viewModel/PeerDetailsService.dart';
import 'package:get/get.dart';

class PeerViewInvestment extends StatefulWidget {
  final String slug;
  PeerViewInvestment({super.key, required this.slug});

  @override
  State<PeerViewInvestment> createState() => _PeerViewInvestmentState();
}

class _PeerViewInvestmentState extends State<PeerViewInvestment> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = PeerDetails().PeerDetailsModelAPI(widget.slug);
    super.initState();
  }

  List productDetails = [
    {
      "Company Name": [
        'Freedom Plan',
        'Fixed Term Plan',
        'Fixed Term Plan',
        'Fixed Term Plan',
        'Monthly Income Plans',
        'Monthly Income Plans'
      ],
      "header": [
        'Tenure (in Months)',
        "Minimum Investment",
        "Maximum Investment",
        "Returns",
      ],
      "content": [
        [
          'On Demand',
          '1,50,000',
          '50,00,000',
          'up to 8.25% p.a. ( for term >30 days)',
        ],
        [
          '3',
          '1,00,000',
          '50,00,000',
          'Up to 10% p.a.',
        ],
        [
          '6',
          '50,000',
          '50,00,000',
          'Up to 11% p.a.',
        ],
        [
          '12',
          '25,000',
          '50,00,000',
          'Up to 12% p.a.',
        ],
        [
          '24',
          '25,000',
          '50,00,000',
          'Up to 10% p.a.',
        ],
        [
          '36',
          '25,000',
          '50,00,000',
          'Up to 10.5% p.a.',
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
                  height: 50.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        peerDetailsObj!.data!.scheme!,
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
            sizedBoxHeight(24.h),
            SizedBox(
              height: MediaQuery.of(context).size.height - 265.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textA4856_20500("Tenure (in Months) "),
                  Divider(
                    height: 25.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  text272424_18(
                    peerDetailsObj!.data!.tenure ?? "",
                  ),
                  sizedBoxHeight(20.h),
                  textA4856_20500("Minimum Investment"),
                  Divider(
                    height: 25.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  text272424_18(
                    peerDetailsObj!.data!.minimumInvestment ?? "",
                  ),
                  sizedBoxHeight(20.h),
                  textA4856_20500("Maximum Investment"),
                  Divider(
                    height: 25.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  text272424_18(
                    peerDetailsObj!.data!.maximumInvestment ?? "",
                  ),
                  sizedBoxHeight(20.h),
                  textA4856_20500("Returns"),
                  Divider(
                    height: 25.h,
                    thickness: 1.h,
                    color: Colors.grey.shade400,
                  ),
                  text272424_18(
                    peerDetailsObj!.data!.returns ?? "",
                  ),
                  sizedBoxHeight(20.h),
                ],
              ),
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
