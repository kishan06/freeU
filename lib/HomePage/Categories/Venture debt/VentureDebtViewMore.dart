import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class VentureDebtViewMore extends StatefulWidget {
  const VentureDebtViewMore({super.key});

  @override
  State<VentureDebtViewMore> createState() => _VentureDebtViewMoreState();
}

class _VentureDebtViewMoreState extends State<VentureDebtViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/ventureviewproduct");
          },
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomSignupAppBar(
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
                Text(
                  "Venture Debt",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  sizedBoxHeight(20.h),
                  faqAccod('What are Venture-backed companies?',
                      'Venture Capital funds invest in startups that have proved to be a product-market fit and have an established unit-economic model i.e., the equation of revenue and cost per customer or unit sold being profitable. The Startup is in a stage where they have proved their initial success and now only need funding to scale up the company. These companies are less risky than seed-stage startups which still do not have an established product or brand, but riskier than publicly-listed companies.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What is Venture Debt?',
                      "Venture debt is typically provided by specialized lenders that understand the risks and opportunities of investing in startups, and is based on several factors, including the company's revenue, cash flow, growth potential, and quality of its venture capital investors. Venture debt can be a useful alternative to equity financing, as it allows companies to raise capital without diluting existing shareholders. It can also be an innovative non-dilutive solution for smaller financing needs, such as inventory financing and working capital needs, which may be too expensive to finance with equity. However, venture debt can be more expensive than traditional debt financing, and carries the risk of default or bankruptcy."
                          '\n\nOpportunity for Investors: It is an attractive medium-term fixed-income opportunity for investors to make higher fixed returns than Corporate Debt and gain exposure to venture-capital companies without the equity route.'
                          '\n\nOpportunity for Startups: Less dilutive and a cheaper source of financing as compared to equity financing. It is also cheaper than NBFC Loans which range between 16%-24% interest p.a. It helps the startup extend Cash Runway, Minimizes dilution, Finances Growth, and Finances acquisitions.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What is the difference between Venture Debt and Venture Capital?',
                      'The Risk-reward profile is different. Underlying investments for Venture Debt are tightly structured loans with 1-3 Year durations. This enables investors to get their money back much faster as cash from loan repayments is distributed back to them. However, the returns are relatively lower due to fixed rates. For VC Capital, investment is equity in high-growth, returns can be extremely high but will receive returns much later.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What are the general investment risks involved?',
                      '•	Credit risk – The borrower’s ability to pay interest periodically and principal upon maturity.'
                          '\n\n•	Liquidity risk - Ability to exit the investment before the tenure. Unlisted bonds are difficult to sell given the absence of a robust retail marketplace for the same.'
                          '\n\n•	Structure risk - The structure of an instrument helps identify what recourse an investor has in case of a default. A secured NCD/bond represents a lower risk compared to an unsecured product.'
                          '\nA fundamental risk involved in credit opportunities is the risk of 100% loss of capital due to default.'),
                  sizedBoxHeight(15.h),
                  faqAccod('Who can invest in Venture debt?',
                      'Only Resident Indians can invest in Venture Debt. NRIs cannot invest through an NRO account.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Through what Instrument will investments be made in Venture Debt?',
                      'Non-convertible Debentures'),
                  sizedBoxHeight(15.h),
                  faqAccod('What will be the applicable tax on the NCD?',
                      "The interest on taxation is taxed as per the investor's tax slab."),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What are the aspects to be analyzed in a Venture-Debt investment opportunity?',
                      "1.	Financial metrics: Lenders will evaluate the company's financial performance, including revenue growth, gross margins, profitability, and cash flow. They will also consider the company's burn rate, or how quickly it is spending cash, to ensure that it has enough cash to meet its financial obligations."
                          "\n\n2.	Market opportunity: Lenders will assess the size of the company's target market and the growth potential. They may also consider the competitive landscape and the company's ability to differentiate itself from competitors."
                          "\n\n3.	Management team: Lenders will evaluate the experience and track record of the company's management team, including their ability to execute the company's strategy and vision."
                          "\n\n4.	Equity financing: Lenders will consider the amount of equity financing the company has raised, as this indicates the level of support and confidence that existing investors have in the company."
                          "\n\n5.	Venture capital investors: Lenders will also consider the quality of the company's venture capital investors, as this can serve as an indication of the company's potential for success."
                          "\n\n6.	Debt structure: Lenders will evaluate the company's existing debt structure, including any outstanding loans or lines of credit, to determine the level of risk associated with the investment."
                          "\n\n7.	Exit strategy: Lenders will also consider the company's exit strategy, or how it plans to provide a return on investment for its investors. This may include a plan to go public, be acquired, or generate cash flow through operations."
                          '\n\n\nOverall, lenders will evaluate a combination of quantitative and qualitative factors to determine whether a company is a good fit for venture debt financing. By considering these factors, lenders can assess the level of risk associated with the investment and determine the appropriate terms and conditions for the loan.'),
                  sizedBoxHeight(15.h),
                  faqAccod('How does venture debt work? ',
                      '''Venture debt is typically available to startups and high-growth companies that have already raised equity financing from venture capitalists or angel investors. The lender may evaluate the company's financials, business plan, and growth prospects before approving the loan. In exchange for the loan, the lender receives interest payments and other fees. '''),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'What are the general investment risks involved? (Add above existing content) ',
                      '''Startups and high-growth companies are more prone to failure, which makes venture debt riskier than other forms of debt financing. The lender may charge higher interest rates and fees to compensate for the higher risk. In case of loan default, the lender may seize the company's assets, which can have a negative impact on its operations.'''),
                  sizedBoxHeight(15.h),
                ],
              ),
            )),
          ],
        ),
      ),
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
