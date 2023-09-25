import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/FAQ2/FAQ2.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CommercialLearnmore extends StatefulWidget {
  const CommercialLearnmore({super.key});

  @override
  State<CommercialLearnmore> createState() => _CommercialLearnmoreState();
}

class _CommercialLearnmoreState extends State<CommercialLearnmore> {
  List AlternativeData = [
    {
      "question": "What are Bonds?",
      "ans":
          "Bonds is a type of investment fund that is registered with the Securities and Exchange Board of India (SEBI). They are privately pooled investment vehicles generally set up by high-net-worth individuals, Indian or foreign, as per a defined investment policy. Bonds are distinctly different from traditional investment vehicles like mutual funds, or ETFs, and invest in non-traditional avenues such as venture capital, private equity, hedge funds, managed futures, etc, to make a profit, or benefit investors. Bonds provide an opportunity for investors to participate in alternative investments and diversify their portfolios, while also offering fund managers greater flexibility in their investment strategies."
    },
    {
      "question": "Who can invest in Bonds?",
      "ans":
          "Any investor whether Indian, foreign, or non-resident Indian can invest in an Bonds, as long as she/he has the required funds for investment, and is willing to take a risk on the unlisted and illiquid securities. To invest in an Bonds investor must provide proof of income, PAN card, and ID proof",
    },
    {
      "question": "What is the minimum amount needed to invest in Bonds?",
      "ans":
          '''All Bonds categories in India except "angel fund" need a minimum investment of Rs. 1 crore, whereas, for the angel fund, that amount is Rs. 25 lakhs.  In the case of an employee or director of Bonds, the minimum value of investment shall be Rs. 25 lakhs.''',
    },
    {
      "question": "In which formats can an Bonds be set up?",
      "ans":
          "The Bonds funds are set up in the form of a trust, limited liability partnership (LLP), or corporate body."
    },
    {
      "question": "Size of the Bonds scheme",
      "ans":
          "Each Bonds scheme should have a minimum corpus of Rs. 20 crores (Rs. 10 crores for angel funds). Along with that, there is also a cap on the number of investors each scheme can have. Most schemes cannot have more than 1000 investors, whereas angel funds can cater to a maximum of 200 investors."
    },
    {"question": "", "ans": ""},
    {"question": "", "ans": ""},
    {
      "question": "Alternative Investment Funds v/s Mutual Funds",
      "ans":
          '''Alternative Investment Funds offer a higher degree of flexibility than mutual funds as they invest in unlisted shares and also use shorting and leverage
For HNIs who are looking to diversify their portfolios and increase long-term returns on their investments while willing to take a considerable risk, Bonds seem like decent investment alternatives. But for those who can take low to high risk, mutual funds are the way to go. The decision between alternative investment funds and mutual funds should be based on your investment objectives, available capital, and long-term intentions.
 '''
    },
    {
      "question": "Difference between Bonds and PMS",
      "ans":
          "In Portfolio Management System (PMS), each investor portfolio is different, and it’s a customized offering. PMS cannot pool money from different investors to create an investment fund. PMS investors can also choose to exit their investments anytime they want. On the other hand, Bonds pool money from investors and have a lock-in period ranging from 3 to 5 years."
    },
    {
      "question": "How to invest in an Bonds?",
      "ans":
          "Proof of income, PAN card, and ID proof are required to invest in an Bonds. The minimum investment amount for Bonds is INR 1 crore, while for angel funds, it is INR 25 lakhs."
    },
    {
      "question": "Who regulates the Bonds?",
      "ans":
          "The regulation of Alternative Investment Funds (Bonds) in India is done by the Securities and Exchange Board of India (SEBI).  Investors can address their complaints against Bonds at the SEBI-regulated web-based centralized grievance redress system called SCORES or SEBI Complaint Redress System."
    },
    {
      "question": "How is an Bonds tenure calculated?",
      "ans":
          "The tenure of any scheme of the Bonds is calculated from the date of the final closing of the scheme."
    },
    {
      "question": "What is the general fee structure under the Bonds scheme?",
      "ans":
          "The fee structure under the Bonds scheme includes a one-time setup fee (if applicable) and two types of compensation: a flat management fee charged proportionately every month based on the funds managed, and a performance-based fee computed based on a pre-agreed proportion of the profit earned over and above a predetermined threshold return."
    },
    {
      "question": "Can an Bonds accept investments from more than one investor?",
      "ans":
          "An Bonds accepts two individuals as joint partners for a minimum investment of one crore rupees. Joint investors may include an investor and their spouse, parent, or child. Only two persons can act as joint investors for an Bonds, and for any other investors acting as joint investors, the minimum investment amount of INR 1 crore shall apply."
    },
    {
      "question":
          "What is the taxation on the secondary sale of Bonds units by investors?",
      "ans":
          "When an investor exits an Bonds by a transfer of units or partnership interests to another investor (this transaction is called a ‘secondary transfer’), gains on the sale of units may be taxable directly in the hands of the investors. The taxability of gains on the sale of Bonds units during a secondary transfer will depend on the holding period of the units. If the holding period is more than 36 months, the sale would be categorized as a long-term capital gain and taxed at 20% with indexation. If the holding period is less than 36 months, it would be considered a short-term capital gain and taxed at the applicable slab rates."
    },
  ];

    Future? myfuture;

  @override
  void initState() {
    myfuture = FAQ2().IndianCommercialLearn();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 5.h, 16.w, 10.h),
        child: CustomNextButton(
          text: 'View Commercial Assets',
          ontap: () {
            Get.toNamed("/commercialproducts");
          },
        ),
      ),
      body: 
      FutureBuilder(
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
          return _buildBody();
        },
      ),
      // Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 16.w),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Flexible(
      //             child: Text(
      //               "Commercial Real Estate",
      //               style: TextStyle(
      //                   fontFamily: "Poppins",
      //                   fontSize: 25.sp,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Expanded(
      //           child: ListView.separated(
      //               itemBuilder: (context, index) {
      //                 if (index == 5) {
      //                   return faqAccod4();
      //                 } else if (index == 6) {
      //                   return faqAccod5();
      //                 } else {
      //                   return faqAccod1(AlternativeData[index]["question"],
      //                       AlternativeData[index]["ans"]);
      //                 }
      //               },
      //               separatorBuilder: (context, index) {
      //                 return sizedBoxHeight(20.h);
      //               },
      //               itemCount: AlternativeData.length)),
      //     ],
      //   ),
      // ),
    );
  }


  Widget _buildBody() {
    return Padding(
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
                  "Commercial Real Estate",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          sizedBoxHeight(20.h),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return indiancommerciallearn(
                    indiancommercial!.data![index].faqQuestion ?? "",
                    indiancommercial!.data![index].faqAnswer ?? "",
                  );
                },
                separatorBuilder: (context, index) {
                  return sizedBoxHeight(20.h);
                },
                itemCount: indiancommercial!.data!.length),
          ),
        ],
      ),
    );
  }

  Widget indiancommerciallearn(String question, String ans) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: GFAccordion(
        showAccordion: false,
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
          question,
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
                  color: Color(0xFF143C6D),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF143C6D),
                      borderRadius: BorderRadius.circular(100.r)),
                  height: 8,
                  width: 8,
                )
              ],
            ),
            sizedBoxHeight(16.h),
            Text(
              ans,
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
