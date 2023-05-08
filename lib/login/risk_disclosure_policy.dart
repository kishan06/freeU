import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RiskDisclosurePolicy extends StatelessWidget {
  const RiskDisclosurePolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
