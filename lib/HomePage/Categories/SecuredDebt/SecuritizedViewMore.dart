import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class SecuritizedViewMore extends StatefulWidget {
  const SecuritizedViewMore({super.key});

  @override
  State<SecuritizedViewMore> createState() => _SecuritizedViewMoreState();
}

class _SecuritizedViewMoreState extends State<SecuritizedViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Categories',
          ontap: () {
            Get.toNamed("/securedebtproducts");
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
                  "Securitized Debt Instrument",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  sizedBoxHeight(20.h),
                  faqAccod(
                      'Securitization',
                      'Securitization involves creation of pool of assets from illiquid financial assets which are repackaged or rebundled into marketable securities. It is the process of conversion of illiquid assets into liquid asset.'
                          '\n\nIlliquid financial assets refer to the future loans and receivable such as automobile loans, credit card receivables, residential mortgages, etc.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Securitized Debt Instrument',
                      'Securitized Debt Instrument are the financial securities such as bonds/certificates that are created by securitizing individual loans (debt).'
                          '\n\nThere are 2 types of such products'
                          '\n\no	Asset-Backed Securities (ABS) - The underlying assets are usually of a lower ticket size e.g., personal loans, auto loans, etc'
                          '\n\no	Mortgage-Backed Securities (MBS) - The underlying are home loans or commercial property loans.'),
                  sizedBoxHeight(15.h),
                  faqAccod('Need for Securitization',
                      'Companies making credit sale might have huge balances blocked under receivables head, due to which they face liquidity crunch. They might not prefer taking working capital loans as it would affect their debt/equity ratio. Therefore, to solve the liquidity issue and also avoid any impact on balance sheet numbers these companies enter into the process of Securitization.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Key Players of Securitization',
                      'o	Asset Originator – The bank or financial institution that has lent money to borrowers in the form of loans.'
                          '\n\no	Issuing Entity (Special Purpose Vehicle) – The SPV is a legal entity that purchases the illiquid asset from the asset originator at a discount and issues financial instruments using these assets as a collateral.'
                          '\n\no	Investors – The investors will purchase financial instrument from the SPV and be entitled to earning fixed returns. The fixed income is passed to the investors when the original borrower pays the loan instalments to the asset originator.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'The Process of Securitization',
                      'The Process of securitization involves identifying the illiquid assets, combining them into a pool and then converting them into investment instruments.'
                          '\n\nThe asset originator sells the assets to the Special Purpose Vehicle. The SPV creates a pool of such illiquid assets, and issues bonds to retail investors. The yields on such bond can vary depending on the amounts of risk. These are also called as mortgage-backed security and if the borrower defaults, the asset would be foreclosed to recover some part of the loan funds. These instruments are called as securitized because of the action of going after the assets when someone defaults on the loan.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Advantages',
                      'o	The originator gets off balance sheet financing. When loans and receivables are securitized, it releases a portion of capital that is tied up in these assets and this increased liquidity will help in expanding the business of the company. Therefore, such arrangements don’t impact the existing financial ratios.'
                          '\n\no	The securitized debt instrument helps in generating non-market linked returns. These instruments are created by pooling a basket of loans and hence default by a single borrower will not make the entire bond as worthless. This helps in increasing diversification and reducing the risk.'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Features',
                      'o	Issued in compliance with SEBI regulatory framework'
                          '\n\no	Listed on the stock exchange'
                          '\n\no	Rated by a SEBI-registered rating agency'
                          '\n\no	Offers inflation-beating returns'
                          '\n\no	Available at smaller ticket sizes with no minimum net worth requirements'),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Types of Securitized Instruments',
                      'Pass Through Certificates (PTCs)'
                          '\n\nA Pass-Through Certificate is a type of certificate that an investor receives for certain mortgage-backed securities held by the issuer. This certificate is similar to bonds and debentures issued by banks and companies to investors, but differs in that it is issued against underlying securities. The SPV issues "Pass Through Certificates" in a pass-through structure, which are participation certificates that allow investors to have a direct stake in the performance of the securitized assets. The SPV transfers the entire receipt of cash in the form of interest or principal repayment from the assets sold. All cash flows including prepayment of principal is proportionately distributed among all the security holders.'
                          "\n\nPay Through Security (PTS)"
                          "\n\nThe structure of the PTS (pay-through-structure) overcomes the limitations of single maturity in pass-through certificates. This structure allows the issuer to restructure receivables flow, providing investors with a range of investment maturities, yields, and risks. The PTS structure frees the issuer of assets-backed debt from the limitations of the pass-through structure, which only serves as a conduit for the sale of ownership interest in the receivables. In contrast, in a PTS structure, the issuer typically owns the receivables and sells the debt backed by the assets. Consequently, the issuer of debt can restructure the cash flow from the receivable into payments on several debt tranches with different maturities."
                          "\n\nStripped Securities"
                          "\n\nThe investor generally receives a combination of principal and interest which can be stripped into two portions of Interest and Principal. Those two securities are names as Interest Only (IO) Securities and Principal Only (PO) Securities. Accordingly, the holder of IO security receives only interest and holder of PO security only receives principal."),
                  sizedBoxHeight(15.h),
                  faqAccod(
                      'Taxation',
                      'As per section 115TCA of the Income Tax Act, income arising from investment in securitization trust shall be taxable in the hands of the investor. Such income shall be taxable on either accrual or receipt whichever is earlier. The nature of taxable income in the hands of investor is assumed to be the same as that in the hands of SPV.'
                          '\n\nIn this case of Securitized debt instrument, investors will have to pay tax on the interest earned based on their applicable marginal tax rates. TDS would be deducted by the issuer before distributing the interest.   As per Section 194LBC, TDS will be deducted on the interest income at 25% (in case of Resident Individuals) and 30% (in case of Non-Individual/ Entities domiciled in India)'),
                  sizedBoxHeight(15.h)
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
