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
                  sizedBoxHeight(15.h),
                  leasebase1(),
                  sizedBoxHeight(15.h),
                  leasebase2(),
                  sizedBoxHeight(15.h),
                  leasebase3(),
                  sizedBoxHeight(15.h),
                  leasebase4(),
                  sizedBoxHeight(15.h),
                  leasebase5(),
                  sizedBoxHeight(15.h),
                  faqAccod('How does lease-based financing work? ',
                      'In a lease-based financing arrangement, the leasing company purchases the asset and leases it to the company in exchange for regular lease payments. The lease payments typically include a finance charge that covers the cost of the asset plus interest, and the lease term is usually shorter than the expected useful life of the asset.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'How does lease-based financing differ from traditional financing? ',
                      'Lease-based financing is distinct from traditional financing as the company leases the asset instead of owning it. It requires less upfront capital and provides greater equipment flexibility. However, it can be more expensive overall due to finance charges and interest payments.'),
                  sizedBoxHeight(15.h),
                  faqAccod('Who provides lease-based financing? ',
                      'Lease-based financing can be provided by banks, leasing companies, and other financial institutions.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What types of assets can be leased through lease-based financing? ',
                      'Almost any type of asset can be leased through lease-based financing, including equipment, machinery, vehicles, and real estate.'),
                  sizedBoxHeight(15.h),
                  faqAccod('Is lease-based financing a secured investment?',
                      'Lease-based financing is considered secure as it is backed by assets as collateral.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Is ownership of the asset preserved in lease-based financing?',
                      'Yes. the lessor (person leasing) will transfer all risk and rewards associated with ownership of the asset to the lessee (borrower) but without transferring the asset’s ownership.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Is there a default risk with lease-backed financing?',
                      'In the event that a company fails to repay a lease rental investment, the investor may have the right to take legal action to recover the outstanding amount. While there is no 100% guarantee, most platforms have safeguards in place for reclaiming the asset and for releasing the same.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Taxation (Add this above existing info given within) ',
                      '''The rentals earned from lease-based financing investments are taxable under the head “Income from Other Sources". The applicable tax rate depends on the investor's income tax slab. '''),
                  sizedBoxHeight(15.h),
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
          ),
        ),
      ],
    );
  }

  Widget faqAccod(String heading, String content) {
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
          heading,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        contentChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: const Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(15.h),
            Text(
              content,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
