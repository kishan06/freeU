import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class ProductsDetailsDebtFund extends StatefulWidget {
  int pageIndex;
  ProductsDetailsDebtFund({super.key, required this.pageIndex});

  @override
  State<ProductsDetailsDebtFund> createState() => _ProductsDetailsDebtFundState();
}

class _ProductsDetailsDebtFundState extends State<ProductsDetailsDebtFund> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List productDetails = [
    {
      "Company Name": [
        "Vivriti Alpha Debt Fund Enhanced",
        "Structured Debt Opportunities Fund III"
      ],
      "header": [
        "Registration No.",
        "Fund Category (I/II/III)",
        "Fund Structure (Open/Closed)",
        "Fund Strategy",
        "Fund Domicile",
        "Fund Manager Name",
        "Website of the fund",
        "Fund Manager Experience",
        "Sponsor",
        "Manager",
        "Trustee",
        "Auditor",
        "Valuer / Tax Advisor",
        "Credit Rating (if any)",
        "Open Date",
        "1st Close Date",
        "Final Close Date",
        "Tenure from Final Close",
        "Commitment Period",
        "Native Currency",
        "Target Corpus",
        "Investment Manager Contribution",
        "Minimum Capital Commitment",
        "Initial Drawdown",
        "Accepting Overseas investment?",
        "Target IRR (%)",
        "Management Fees and Carry \n- Set Up Fee \n- Management Fee \n- Performance Fee",
        "Hurdle Rate",
        "Other Expenses",
        "Focused Sectors (Industries in which they are investing)",
      ],
      "content": [
        [
          "IN/AIF2/19-20/0742",
          "II",
          "Closed",
          "Invest in Senior Secured MLDs",
          "India",
          "Mohamed Irfan",
          "https://vivritiamc.com/funds/alpha-debt-fund-enhanced/",
          "Private credit fund manager with expertise in originating, negotiating, structuring, and lifecycle management of exposures across the risk/return spectrum. Currently managing 7 live funds across the risk/return spectrum.",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "N/A",
          "ICRA A+ (SO)",
          "N/A",
          "N/A",
          "Mar-23",
          "3.5 years",
          "N/A",
          "N/A",
          "500 Cr including green shoe",
          "N/A",
          "1 Crore",
          "N/A",
          "N/A",
          "11.40% (post expenses, pre tax)",
          "N/A",
          "11.20% annualized	",
          "N/A",
          "N/A",
        ],
        [
          "IN/AIF2/17-18/0358",
          "II",
          "Closed",
          "invest across strategies in the credit space, with the overall strategy to generate high risk-adjusted rewards with downside protection",
          "India",
          "Ritesh Nambiar",
          "https://www.utimf.com/about/other-business/aif/",
          "Ritesh Nambiar is a qualified CFA, FRM and MBA Prior to joining UTI, he has worked with CRISIL and TransMarket Group Research In",
          "UTI AMC",
          "UTI Capital",
          "IDBI Trustee",
          "Affiliate of KPMG",
          "EY / PWC",
          "N/A",
          "N/A",
          "Sept 30, 2022",
          "By Sept 30, 2024 (may be extended by 12 months)",
          "4 years from Final close (1+1 extension permitted with investor approval as per regulations) ",
          "N/A",
          "Rupees",
          "Upto 15,000 mm",
          "INR 1,500 mm",
          "1 Crore",
          "N/A",
          "N/A",
          "N/A",
          "Management Fee - 1%-1.5 p.a. depending upon commitment Carried Interest - 10% with catch-up",
          "10% for less than 100 Mm Commitment and 12% for others ",
          "N/A",
          "Economic, Social and Governance",
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
            text: 'Invest now'),
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
                      return sizedBoxHeight(0);                      // Divider(
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
