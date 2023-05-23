import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class LeaseBasedLearn extends StatefulWidget {
  const LeaseBasedLearn({super.key});

  @override
  State<LeaseBasedLearn> createState() => _LeaseBasedLearnState();
}

class _LeaseBasedLearnState extends State<LeaseBasedLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/leaseproducts");
          },
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      // AppBar(
      //   backgroundColor: Color(0xFFFFFFFF),
      //   elevation: 0,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //     ),
      //     iconSize: 26,
      //     color: Colors.black,
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Lease based Financing",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  sizedBoxHeight(30.h),
                  leasebase0(),
                  sizedBoxHeight(20.h),
                  leasebase1(),
                  sizedBoxHeight(20.h),
                  leasebase2(),
                  sizedBoxHeight(20.h),
                  leasebase3(),
                  sizedBoxHeight(20.h),
                  leasebase4(),
                  sizedBoxHeight(20.h),
                  leasebase5(),
                  sizedBoxHeight(30.h),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget leasebase0() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          'What is lease-based financing?',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.pinkL_E6088B,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.pinkL_E6088B,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "Lease-based financing, also known as leasing, is a type of financing that allows individuals or businesses to acquire the use of an asset (such as a car, equipment, or property) without purchasing it outright.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            ),
            sizedBoxHeight(10.h),
            Text(
              "It is a contractual agreement where the owner of the asset grants the other party the right to use the asset in return for periodic payments. The owner of the asset is known as the Lessor, the user of the asset is known as Lessee and the rent paid is known as Lease rentals.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            ),
            sizedBoxHeight(10.h),
            Text(
              "At the end of the lease term, the lessee typically has the option to purchase the asset, renew the lease, or return the asset to the lessor. The terms and conditions of a lease-based financing agreement can vary depending on the type of asset being leased, the duration of the lease, and other factors.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget leasebase1() {
    List bulletPoints = [
      {
        "bold": "Reduced upfront costs:",
        "sent":
            "With lease-based financing, businesses can acquire the use of assets without having to make a significant upfront investment. This can be particularly beneficial for small businesses with limited cash flow.",
      },
      {
        "bold": "Cash flow management:",
        "sent":
            "Lease payments are typically fixed and predictable, making it easier for businesses to plan their finances and manage their cash flows.",
      },
      {
        "bold": "Tax benefits:",
        "sent":
            "In many cases, lease payments can be tax-deductible, which can help businesses reduce their tax liability.",
      },
      {
        "bold": "Flexibility:",
        "sent":
            "Lease-based financing arrangements are usually flexible, allowing businesses to choose from a range of lease terms and payment options that suit their specific needs. At the end of the lease term, the lessee typically has the option to purchase the asset, renew the lease, or return the asset to the lessor.",
      },
      {
        "bold": "Asset management:",
        "sent":
            "In some cases, the lessor may be responsible for maintaining the asset and obtaining insurance for it, which can reduce the administrative burden on the lessee.",
      },
      {
        "bold": "No ownership transfer:",
        "sent":
            "Lease-based financing does not involve ownership transfer, which means that businesses can use assets without having to worry about disposing of them at the end of the lease term.",
      },
      {
        "bold": "Improved liquidity:",
        "sent":
            "Lease-based financing can help businesses to conserve their cash reserves, freeing up liquidity for other purposes, such as expanding their operations or investing in new projects.",
      },
      {
        "bold": "Up-to-date technology:",
        "sent":
            "Lease-based financing can help businesses access the latest equipment or technology, without having to worry about the cost of upgrades or obsolescence.",
      },
      {
        "bold": "Risk management:",
        "sent":
            "Lease-based financing can help businesses to manage risk, as they are not required to purchase an asset outright and can return it at the end of the lease term if it is no longer needed.",
      },
      {
        "bold": "Stable, regular passive income:",
        "sent":
            "The lessor (asset owner) gets the rentals for the entire duration of the lease, as per the contract, consistently assuring a stable, regular income.",
      },
      {
        "bold": "High Growth Possibilities:",
        "sent":
            "Most of the time, the lease rental is higher than the interest paid on the asset’s financing. Leasing is stable, cost-effective, and in high demand. It is not dependent on the market, or on the economy.",
      },
    ];
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        //showAccordion: true,
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          'Advantages of Lease based financing ',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.pinkL_E6088B,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.pinkL_E6088B,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(
                      bulletPoints[index]["sent"], bulletPoints[index]["bold"]);
                })
            // Text.rich(
            //   TextSpan(children: [
            //     TextSpan(
            //         text: "> Reduced upfront costs:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " With \n   lease-based financing, businesses \n   can acquire the use of assets \n   without having to make a \n   significant upfront investment. \n   This can be particularly beneficial \n   for small businesses with limited \n   cash flow.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Cash flow management:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " Lease \n   payments are typically fixed and \n   predictable, making it easier for \n   businesses to plan their finances \n   and manage their cash flows.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Tax benefits:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " In many cases, lease \n   payments can be tax-deductible, \n   which can help businesses reduce \n   their tax liability.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Flexibility:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " Lease-based financing \n   arrangements are usually flexible, \n   allowing businesses to choose \n   from a range of lease terms and \n   payment options that suit their \n   specific needs. At the end of the \n   lease term, the lessee typically \n   has the option to purchase the \n   asset, renew the lease, or return \n   the asset to the lessor.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Asset management:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " In some \n   cases, the lessor may be \n   responsible for maintaining the \n   asset and obtaining insurance for \n   it, which can reduce the \n   administrative burden on the \n   lessee.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> No ownership transfer:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " Lease-\n   based financing does not involve \n   ownership transfer, which means \n   that businesses can use assets \n   without having to worry about \n   disposing of them at the end of \n   the lease term.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Improved liquidity:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " Lease-based \n   financing can help businesses to \n   conserve their cash reserves, \n   freeing up liquidity for other \n   purposes, such as expanding their \n   operations or investing in new \n   projects.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Up-to-date technology:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " Lease-\n   based financing can help \n   businesses access the latest \n   equipment or technology, without \n   having to worry about the cost of \n   upgrades or obsolescence.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Risk management:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " Lease-based \n   financing can help businesses to \n   manage risk, as they are not \n   required to purchase an asset \n   outright and can return it at the \n   end of the lease term if it is no \n   longer needed.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Stable, regular passive income:\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             "   The lessor (asset owner) gets the \n   rentals for the entire duration of \n   the lease, as per the contract, \n   consistently assuring a stable, \n   regular income.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> High Growth Possibilities:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " Most of \n   the time, the lease rental is higher \n   than the interest paid on the \n   asset’s financing. Leasing is stable, \n   cost-effective, and in high \n   demand. It is not dependent on \n   the market, or on the economy.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }

  Widget leasebase2() {
    List bulletPoints = [
      {
        "bold": "Unprofitable during inflation:",
        "sent":
            "The rent amount is always fixed, and hence as per the contract, even if the asset leased out goes up in value in the market, the lessor cannot increase the rent. And hence, loses out on profitability.",
      },
      {
        "bold": "Asset damage probability:",
        "sent":
            "The asset is under temporary lease by the lessee, and hence the possibility of misuse and damage is greater. Sometimes, the owner cannot rent it again due to damage by the lessee, after the lease period is over.",
      },
      {
        "bold": "Higher overall cost:",
        "sent":
            "Lease-based financing can be more expensive than purchasing an asset outright, due to the interest charged on lease payments.",
      },
      {
        "bold": "Ownership limitations:",
        "sent":
            "Since the lessor retains ownership of the asset throughout the lease term, the lessee may not be able to make significant changes to the asset or sell it.",
      },
      {
        "bold": "Restrictions on use:",
        "sent":
            "The lessor may impose restrictions on how the asset is used, which could limit the lessee's ability to utilize the asset to its full potential.",
      },
      {
        "bold": "Obligation to continue payments:",
        "sent":
            "The lessee is obligated to continue making lease payments for the entire lease term, even if the asset is no longer needed.",
      },
      {
        "bold": "Penalties for early termination:",
        "sent":
            "If the lessee terminates the lease early, they may be subject to penalties or fees, which could add to the overall cost of the lease.",
      },
      {
        "bold": "Potential for hidden costs:",
        "sent":
            "The lease agreement may include additional costs, such as insurance or maintenance fees, which could add to the overall cost of the lease.",
      },
    ];
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          'Disadvantages of Lease based financing',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.pinkL_E6088B,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.pinkL_E6088B,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(
                      bulletPoints[index]["sent"], bulletPoints[index]["bold"]);
                })
          ],
        ),
      ),
    );
  }

  Widget leasebase3() {
    List bulletPoints = [
      {
        "number": "1.",
        "bold": " Asset selection:",
        "sent":
            "The lessee chooses the asset they wish to lease from the lessor.",
      },
      {
        "number": "2.",
        "bold": " Negotiation:",
        "sent":
            "The lessee and lessor negotiate the terms of the lease, including the lease tenure, lease payments, and any other conditions or restrictions.",
      },
      {
        "number": "3.",
        "bold": " Documentation:",
        "sent":
            "Once the terms are agreed upon, the lease agreement is documented and signed by both parties.",
      },
      {
        "number": "4.",
        "bold": " Payment:",
        "sent":
            "The lessee makes periodic payments to the lessor for the use of the asset, typically in the form of monthly lease payments.",
      },
      {
        "number": "5.",
        "bold": " Asset maintenance:",
        "sent":
            "The lessor is responsible for maintaining and repairing the asset throughout the lease term unless otherwise specified in the lease agreement.",
      },
      {
        "number": "6.",
        "bold": " End of lease:",
        "sent":
            "At the end of the lease term, the lessee may have the option to purchase the asset, renew the lease, or return the asset to the lessor.",
      },
    ];
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          'Structuring of Lease Transactions',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.pinkL_E6088B,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.pinkL_E6088B,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              "The structure of lease-based financing typically involves the following steps:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            sizedBoxHeight(15.h),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletNumbers(
                    bulletPoints[index]["sent"],
                    bulletPoints[index]["bold"],
                    bulletPoints[index]["number"],
                  );
                }),
            sizedBoxHeight(10.h),
            Text(
              "The structure of lease-based financing may vary depending on the type of lease agreement, such as an operating lease or finance lease, and the specific terms negotiated between the lessee and lessor.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget leasebase4() {
    List bulletPoints = [
      {
        "bold": "Finance Lease:",
        "sent":
            "A finance lease is a long-term lease agreement where the lessee (the person or company leasing the asset) has the option to purchase the asset at the end of the lease term. It is often used for expensive assets such as machinery, equipment, and vehicles. Under a finance lease, the lessee is responsible for maintaining the asset and paying for any repairs or maintenance costs. From an accounting perspective, finance leases are recorded in the books of the lessee as a liability and the leased asset is recorded as an asset on the balance sheet.",
      },
      {
        "bold": "Operating Lease:",
        "sent":
            "An operating lease is a shorter-term lease agreement where the lessor (the person or company leasing the asset) retains ownership of the asset throughout the lease term. It is often used for assets that are regularly updated or replaced, such as technology equipment or vehicles. Under an operating lease, the lessor is responsible for maintaining the asset and paying for any repairs or maintenance costs. From an accounting perspective, operating leases are not recorded as a liability on the balance sheet. Instead, the lease payments are recorded as an expense in the income statement.",
      },
    ];
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          "Different Types of Leases",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.pinkL_E6088B,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.pinkL_E6088B,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              '''
Finance leases and operating leases are two types of leases used in the business world. The main differences between them are the length of the lease term, ownership of the leased asset, and the accounting treatment.
''',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
            sizedBoxHeight(15.h),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bulletPoints.length,
                itemBuilder: (context, index) {
                  return bulletText(
                    bulletPoints[index]["sent"],
                    bulletPoints[index]["bold"],
                  );
                }),

            // Text.rich(
            //   TextSpan(children: [
            //     TextSpan(
            //         text: "> Diversification:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " The inclusion of \n   high-yield fixed-income securities \n   in a portfolio may increase \n   diversification due to their low \n   correlation with investment \n   grades fixed-income sectors, such \n   as Treasuries and highly rated \n   corporate debt.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Enhanced Current Income:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " High-\n   yield bonds typically offer higher \n   yields than investment-grade \n   bonds or other fixed-income \n   securities. This means that \n   investors can earn more income \n   from these securities than they \n   would from lower-yielding bonds.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Capital appreciation:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " High-yield \n   bonds have the potential for \n   capital appreciation if the credit \n   quality of the issuer improves. This \n   can result in higher prices for the\n   bonds, leading to capital gains for \n   investors. The events that can \n   potentially increase demand for \n   the bond, leading to a rise in its \n   price include upgrades in credit \n   ratings, positive earnings reports, \n   changes in management, merger \n   or acquisition announcements, \n   favorable developments in the \n   issuer's product line, or other \n   market-related events.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Inflation protection:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             " High-yield \n   fixed-income securities can \n   provide a hedge against inflation, \n   as their yields are often tied to \n   inflation expectations.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //     TextSpan(
            //         text: "> Relatively low duration:",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600)),
            //     TextSpan(
            //         text:
            //             "High-yield \n   bonds usually have a relatively \n   low duration because of their \n   shorter maturities. These bonds \n   are commonly issued for terms of \n   10 years or less and may be \n   callable after four or five years. \n   Their prices are typically more \n   sensitive to changes in the \n   economic environment and \n   corporate earnings than \n   to day-to-day fluctuations in \n   interest rates.\n",
            //         style: TextStyle(
            //             fontSize: 18.sp,
            //             color: Colors.black,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w500)),
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }

  Widget leasebase5() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        titleBorderRadius: BorderRadius.circular(5.r),
        contentBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        margin: const EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(10.h),
        contentPadding: EdgeInsets.all(10.w),
        expandedTitleBackgroundColor: Colors.white,
        contentBackgroundColor: Colors.white,
        titleChild: Text(
          'Taxation',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.pinkL_E6088B,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.pinkL_E6088B,
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              '''The lessor can claim depreciation of the asset as an expense.  The lease rentals will be taxed as income in the hands of lessor. Consequently, the lessee, cannot claim depreciation expense but will be entitled to claim expense for lease rentals paid. 
As per the Supreme Court pronouncement, only the lessor is the legal owner and is eligible to claim depreciation on the leased asset, even though the asset is accounted for in the books of the lessee as per the provisions of the Companies Act. 
''',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bulletText(String sent, String bold) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "> ",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: bold,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: sent,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    )),
              ],
            ),
            // sent,
            // style: TextStyle(
            //   color: Colors.black,
            //   fontFamily: "Poppins",
            //   fontSize: 18.sp,
          ),
        ),
      ],
    );
  }

  Widget bulletNumbers(String sent, String bold, String number) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          number,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                // TextSpan(
                //     text: number,
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontFamily: "Poppins",
                //       fontSize: 18.sp,
                //     )),
                TextSpan(
                    text: bold,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: sent,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 18.sp,
                    )),
              ],
            ),
            // sent,
            // style: TextStyle(
            //   color: Colors.black,
            //   fontFamily: "Poppins",
            //   fontSize: 18.sp,
          ),
        ),
      ],
    );
  }
}
