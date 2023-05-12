import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class RealEstateDetails extends StatefulWidget {
  int pageIndex;

  RealEstateDetails({super.key, required this.pageIndex});

  @override
  State<RealEstateDetails> createState() => _RealEstateDetailsState();
}

class _RealEstateDetailsState extends State<RealEstateDetails> {
  final controllerEntryPoint = Get.put(EntryPointController());

  List realdetails = [
    {
      "Company Name": [
        'Sundaram High Yield Secured Real Estate Fund III',
      ],
      "header": [
        'Registration No.',
        "Fund Category (I/II/III)",
        "Fund Structure (Open/Closed)",
        "Fund Strategy",
        "Fund Domicile",
        "Fund Manager Name",
        "Website of the fund",
        "Fund Manager Experience",
        "Sponsor",
        "Manager",
        'Trustee',
        'Auditor',
        'Valuer / Tax Advisor',
        'Credit Rating',
        'Open Date',
        '1st Close Date',
        'Final Close Date',
        'Tenure from Final Close',
        'Commitment Period',
        'Native Currency',
        'Target Corpus',
        'Investment Manager Contribution',
        'Minimum Capital Commitment',
        'Initial Drawdown',
        'Accepting Overseas investment?',
        'Target IRR (%)',
        '''Management Fees and Carry
- Set Up Fee
- Management Fee
- Performance Fee''',
        'Hurdle Rate',
        'Other Expenses',
        'Focused Real estate Sectors',
        'RERA Complied property (Yes/No)',
        'Regions Covered (Geographical Locations covered by the fund)',
      ],
      "content": [
        [
          'IN/AIF2/17-18/0340',
          'II',
          'Closed',
          '''The main investment objective of the Fund is to undertake activities of a Category II AIF and invest in high yielding
 debentures and mezzanine securities (including equities), of Indian entities involved with real asset industries that
 may include (but not limited to) real estate (residential, commercial, retail), logistics (warehouses, supply chain
 facilities, data centers, etc.), hotels (including hostels, resorts) and health care facilities (hospitals, senior care
 homes, etc.).''',
          'India',
          "Sundaram Alternate Assets Limited",
          "https://www.sundaramalternates.com/",
          'N/A',
          'Sundaram Finance',
          'Sundaram Alternate Assets Limited',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          'N/A',
          '5 years (extendable by up to 2 years with approval of two-thirds majority of investors by value)',
          'N/A',
          '''INR 7.5 bn (~USD 100 million) green shoe option to
 accept additional INR 2.5 bn (~USD 35 million)''',
          'N/A',
          'N/A',
          '''50% of Capital Commitment; subsequent drawdowns on an as needed basis''',
          'N/A',
          'Target Gross IRR: 18-22% p.a.',
          '''Set up fees – Up to 2% in each case
Administrative expenses - Up to 0.50% p.a.
Performance Fee (without catch up) - 20%''',
          '12%',
          'N/A',
          '''Real estate, logistics, hotels and healthcare
Focus on residential, hybrid and commercial projects
• ~70-75%: focused on self-liquidating projects / secured asset cash flows and ~25-30%: backed by commercial assets / other collaterals with back-ended redemption structures''',
          'Yes',
          '''Predominantly South India - Tamil Nadu, Karnataka, Telangana, Kerala, Andhra Pradesh
Opportunistic co-investments with large investors in Maharashtra & NCR''',
        ],
      ]
    }
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
            ontap: () {
              if (controllerEntryPoint.logedIn!) {
                investNow();
              } else {
                Get.toNamed("/login");
              }
            },
            text: 'Invest now'),
      ),
      body: SafeArea(
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
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2.w,
                          blurRadius: 2.h,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/alternative (6).png",
                      width: 80.w,
                      height: 54.h,
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Flexible(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 132.w,
                      height: 75.h,
                      child: Text(
                        realdetails[0]['Company Name'][widget.pageIndex],
                        // "HDFC AMC Select AIF FOF - 1",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w500),
                      ),
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
                            realdetails[0]['header'][index],
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
                            realdetails[0]['content'][widget.pageIndex][index],
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff272424)),
                          ),
                          sizedBoxHeight(28.h)
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 0.h,
                      );
                      // Di
                    },
                    itemCount: realdetails[0]['header'].length),
              ),
            ],
          ),
        ),
      )),
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
                    // Get.toNamed("/fractionalpropertiespage");
                  },
                  text: 'View more products')
            ],
          ),
        );
      },
    );
  }
}
