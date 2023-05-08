// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:get/get.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Privacy policy",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
                child:    Padding(
          padding: EdgeInsets.all(16.w),
                  child: SingleChildScrollView(
                            child: Text.rich(
                              TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Investing Beyond the Norm: Understanding the Risks of Alternative Asset Classes\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Alternative assets are a type of investment that can offer potentially higher returns compared to traditional investments such as stocks, bonds, and mutual funds. However, these investments also carry a higher level of risk due to their less regulated nature and lack of liquidity. It is important to note that past performance is not indicative of future results, and there is no guarantee of profits or protection against losses.'
                          '\n\nInvestors are informed to carefully read the risk disclosures before making any investment decisions. Investors are also informed that Blue Feather’s (FreeU) Risk Disclosure policy may not contain all possible risks that can arise from investment objectives, investment strategies and asset allocations. Hence, the risks in the disclosure are just estimates, and can differ from what actually occurs.In the light of the risks involved, investors should undertake transactions only if they understand the nature of the relationship into which they are entering, and the extent of their exposure to risk. No consideration should be made without thoroughly understanding and reviewing the risks involved. If you are unsure, you must seek professional advice on the same.'
                          "\n\nInvestors who are considering investing in alternative assets should have a high-risk tolerance and be prepared to accept potential losses. It is recommended that investors carefully review all available information regarding an investment before making a decision to invest. This includes reviewing the offering documents, the investment manager's track record, and any associated risks. Investors are advised to carefully review the disclosure papers, agreements, investment documents, and other related credentials carefully and consult their legal, tax and financial advisors, if they want, to determine any possible legal, tax and financial or any other consequences of investing before making any final investment decisions."
                          '\n\nInvestors who choose to invest in alternative assets should be aware of the following risks:',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                      ),
                    ),
                    boldtxt("\n\n>  Market Risk: "),
                    lightTxt(
                      'The value of alternative assets can be affected by various factors, including changes in interest rates, geopolitical events, and economic conditions. These factors can result in price volatility and may cause the value of the investment to decrease significantly.',
                    ),
                    boldtxt('\n>  Liquidity Risk: '),
                    lightTxt(
                      'Alternative assets can be illiquid, meaning they cannot be easily sold or converted to cash. As a result, investors may not be able to sell their investment when they need to or may have to sell it at a loss.',
                    ),
                    boldtxt('\n>	Credit Risk: '),
                    lightTxt(
                      'Alternative assets are often issued by smaller or less established companies, which may have a higher risk of defaulting on their obligations. This can result in a total loss of the investment.',
                    ),
                    boldtxt('\n>  Operational Risk: '),
                    lightTxt(
                      'Alternative assets may be managed by investment managers with limited experience, which can result in poor investment decisions or mismanagement of funds.',
                    ),
                    boldtxt('\n>	Regulatory Risk: '),
                    lightTxt(
                      'Alternative assets are often subject to less regulation than traditional investments, which can lead to higher risks for investors.',
                    ),
                    boldtxt('\n>	Concentration Risk: '),
                    lightTxt(
                      'Some alternative assets may be highly concentrated in a single sector or asset class, which can increase the risk of losses if that sector or asset class experiences a downturn.',
                    ),
                    boldtxt('\n>	Complexity Risk: '),
                    lightTxt(
                      "Some alternative assets may be highly complex, with unique features or structures that are difficult to understand. This can increase the risk of misunderstandings or misinterpretations of the investment's features or risks.",
                    ),
                    boldtxt('\n>	Counterparty Risk: '),
                    lightTxt(
                      'Some alternative assets may involve counterparties or third-party service providers that are subject to their own risks, such as bankruptcy, fraud, or operational failures. This can result in losses to the investor.',
                    ),
                    boldtxt('\n>	Tax and Legal Risks: '),
                    lightTxt(
                      'Alternative assets may be subject to unique tax or legal requirements, which can be complex and subject to change. This can result in unexpected tax liabilities or legal risks.',
                    ),
                    lightTxt(
                      '\n\nApart from the risks mentioned above, other risks or uncertainties include, but are not limited to, exposure to market risks, general economic and political conditions in other countries, the monetary and interest policies of India, inflation, unanticipated turbulence in interest rates, foreign exchange rates, equity prices, the performance of the financial markets in India and globally, changes in domestic and foreign laws, regulations and taxes and changes in competition in the industry.  While risk cannot be totally eliminated, it can be mitigated through a well-designed investment strategy.'
                      '\n\nPlease note that this policy is not exhaustive and does not cover all the risks associated with alternative assets. Investors should consult with a qualified financial advisor before making any investment decisions. The goal is to ensure that investors understand the potential risks associated with their investment and can make informed decisions about whether the investment is appropriate for their needs and risk tolerance. Any product information displayed in this application must not be construed as investment advice.'
                      '\n\nBy investing in alternative assets, ',
                    ),
                    boldtxt(
                      'investors acknowledge and accept the risks associated with these investments. The investment application is not responsible for any losses incurred as a result of investing in alternative assets.',
                    ),
                  ],
                              ),
                            ),
                          ),
                ),
       
            //     SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       SizedBox(
            //         height: 15.h,
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(left: 16.w, right: 16.w),
            //         child: Column(
            //           children: [
            //             Text(
            //               '1. What Information Does the Service Collect?',
            //               textAlign: TextAlign.left,
            //               style: TextStyle(
            //                 fontSize: 18.sp,
            //                 fontFamily: 'Poppins',
            //               ),
            //             ),
            //             SizedBox(
            //               height: 13.h,
            //             ),
            //             Text(
            //               'By accessing this web site, you are agreeing to be bound by these web site Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. ',
            //               style: TextStyle(
            //                 fontSize: 14.sp,
            //                 fontFamily: 'Poppins',
            //                 color: Color(0xff131313),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20.h,
            //             ),
            //             SizedBox(
            //               width: double.infinity,
            //               child: Text(
            //                 'If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trade mark law.',
            //                 style: TextStyle(
            //                   fontSize: 14.sp,
            //                   fontFamily: 'Poppins',
            //                   color: Color(0xff131313),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(height: 20.h),
            //             Text(
            //               '2. Information You Provide About a Third Party',
            //               textAlign: TextAlign.left,
            //               style: TextStyle(
            //                 fontSize: 18.sp,
            //                 fontFamily: 'Poppins',
            //               ),
            //             ),
            //             SizedBox(
            //               height: 15.h,
            //             ),
            //             Text(
            //               'Whilst we try to ensure that the standard of the Website remains high and to maintain the continuity of it, the internet is not an inherently stable medium, and errors, omissions, interruptions of service and delays may occur at any time. ',
            //               style: TextStyle(
            //                 fontSize: 14.sp,
            //                 color: Color(0xff131313),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20.h,
            //             ),
            //             Text(
            //               'We do not accept any liability arising from any such errors, omissions, interruptions or delays or any ongoing obligation or responsibility to operate the Website (or any particular part of it) or to provide the service offered on the Website. We may vary the specification of this site from time to time without notice.',
            //               style: TextStyle(
            //                 fontSize: 14.sp,
            //                 color: Color(0xff131313),
            //               ),
            //             ),
            //             SizedBox(height: 20.h),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   '3. Revisions and Errata',
            //                   textAlign: TextAlign.left,
            //                   style: TextStyle(
            //                     fontSize: 18.sp,
            //                     fontFamily: 'Poppins',
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 15.h,
            //             ),
            //             Text(
            //               'You may only use the Website for lawful purposes when seeking employment or help with your career, when purchasing training courses or when recruiting staff. You must not under any circumstances seek to undermine the security of the Website or any information submitted to or available through it. In particular, but without limitation, you must not seek to access, alter or delete any information to which you do not have authorised access, seek to overload the system via spamming or flooding, take any action or use any device, routine or software to crash, delay, damage or otherwise interfere with the operation of the Website or attempt to decipher, disassemble or modify any of the software, coding or information comprised in the Website.',
            //               style: TextStyle(
            //                 fontSize: 14.sp,
            //                 color: Color(0xff131313),
            //               ),
            //             ),
            //             SizedBox(height: 20.h),
            //           ],
            //         ),
            //       ),
            //       sizedBoxHeight(20.h)
            //     ],
            //   ),
            // ),
            ),
          ],
        ),
      ),
    );
  }

  TextSpan boldtxt(String txt) {
    return TextSpan(
      text: txt,
      style: TextStyle(
        fontSize: 18.sp,
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
      ),
    );
  }

  TextSpan lightTxt(String txt) {
    return TextSpan(
      text: txt,
      style: TextStyle(
        fontSize: 18.sp,
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
