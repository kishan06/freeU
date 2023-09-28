import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/ViewModel/GlobalfinancialFunds/DetailsEquities.dart';
import 'package:get/get.dart';

class EquitiesDetails extends StatefulWidget {
  // final int pageIndex;
  final String slug;

  EquitiesDetails(
      {super.key,
      // required this.pageIndex
      required this.slug});

  @override
  State<EquitiesDetails> createState() => _EquitiesDetailsState();
}

class _EquitiesDetailsState extends State<EquitiesDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  late Future myfuture;

  @override
  void initState() {
    myfuture = EquitiesStocksDetails().EquitiesStocksDetailsAPI(widget.slug);
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
              productid: EquitiesstocksdetailsObj?.data?.productsId.toString(),
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
                            EquitiesstocksdetailsObj!.data!.name ?? "",
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
                textA4856_20500("Stock Name"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.name ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Ticker"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.ticker ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Exchange"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.exchange ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("About Company"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.about ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Industry"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.industry ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Market Cap"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.marketCap ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("P/E Ratio"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.peRatio ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Dividend Yield"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.dividendYield ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Beta"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.beta ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("Returns"),
                sizedBoxHeight(10.h),
                textA4856_20500("1 Month Return"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.month1Return ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("6 Month Return"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.month6Return ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("1 Year Return"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.year1Return ?? "NA",
                ),
                sizedBoxHeight(20.h),
                textA4856_20500("3 Year Return"),
                Divider(
                  height: 25.h,
                  thickness: 1.h,
                  color: Colors.grey.shade400,
                ),
                text272424_18(
                  EquitiesstocksdetailsObj!.data!.year3Return ?? "NA",
                ),
                sizedBoxHeight(20.h),
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
