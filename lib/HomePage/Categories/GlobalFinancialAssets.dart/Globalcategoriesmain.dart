import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/BondsAssets/bondassetsmain.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Bonds/bondslearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/ETFs/etfslearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/ETFs/etfsproduct/etfsproduct.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Equities/equitieslearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/Equities/equitiesproduct/equitiesproduct.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/HedgeFunds/HedgeFundsproducts/hedgefundsproducts.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/HedgeFunds/hedgelearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/MutualFunds/Mutualfundsproducts.dart/mutualproducts.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/MutualFunds/mutualfundslearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/PrivateEquityFunds/privateequityLearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/PrivateEquityFunds/privateproductstab/privateequityproducts.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/REITs/Reitsproduct/reitsproduct.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/REITs/reitsLearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/VentureCapitalFund/venturelearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/VentureCapitalFund/ventureproductstab/ventureproductstab.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/VentureDebtFunds/venturedebtproducts/venturedebtproducts.dart';
import 'package:freeu/HomePage/Categories/GlobalFinancialAssets.dart/VentureDebtFunds/venturelearnmore.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Categories%20Common%20Files/cat_common_main.dart';
import 'package:freeu/common/Categories%20Common%20Files/coming_soon.dart';
import 'package:freeu/common/Globalfinancialassets.dart/global_common_main.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/Categoriesmainlist.dart';
import 'package:get/get.dart';

class Globalcategoriesmain extends StatefulWidget {
  const Globalcategoriesmain({super.key});

  @override
  State<Globalcategoriesmain> createState() => _GlobalcategoriesmainState();
}

class _GlobalcategoriesmainState extends State<Globalcategoriesmain> {
  int selectIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  late Future myfuture;
  @override
  void initState() {
    // TODO: implement initState
    myfuture = Categorieslist().CategorieslistAPI();
    super.initState();
  }

  HomePage home = const HomePage();

  List categoryData = [
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat1.png",
      "title":
          // categorieslistObj!.data!.categoryName ?? ""
          "Bonds",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat2.png",
      "title": "Mutual Funds",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat3.png",
      "title": "Equity Stocks",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat4.png",
      "title": "Venture Capital Funds",
    },
    {
      "colorL": AppColors.brownL_973926,
      "colorD": AppColors.brownD_4C1D13,
      "bgImage": "assets/newImages/bgBrown.svg",
      "imageUrl": "assets/newImages/cat5.png",
      "title": "Private Equity Funds",
    },
    {
      "colorL": AppColors.pinkL_E6088B,
      "colorD": AppColors.pinkD_730446,
      "bgImage": "assets/newImages/bgPink.svg",
      "imageUrl": "assets/newImages/cat6.png",
      "title": "Venture Debt Funds",
    },
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat7.png",
      "title": "Hedge Funds",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat8.png",
      "title": "ETFs",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat9.png",
      "title": "REITs",
    },
    // {
    //   "colorL": AppColors.purpleL_474E88,
    //   "colorD": AppColors.purpleD_242744,
    //   "bgImage": "assets/newImages/bgPurple (2).svg",
    //   "imageUrl": "assets/newImages/cat10.png",
    //   "title": "High Yield Finance",
    // },
    // {
    //   "colorL": AppColors.brownL_973926,
    //   "colorD": AppColors.brownD_4C1D13,
    //   "bgImage": "assets/newImages/bgBrown.svg",
    //   "imageUrl": "assets/newImages/cat11.png",
    //   "title": "International Financial Investment",
    // },
    // {
    //   "colorL": AppColors.pinkL_E6088B,
    //   "colorD": AppColors.pinkD_730446,
    //   "bgImage": "assets/newImages/bgPink.svg",
    //   "imageUrl": "assets/newImages/cat12.png",
    //   "title": "International Real Estate",
    // },
    // {
    //   "colorL": AppColors.redL_BE0F02,
    //   "colorD": AppColors.redD_5F0801,
    //   "bgImage": "assets/newImages/bgRed.svg",
    //   "imageUrl": "assets/newImages/cat13.png",
    //   "title": "Startup’s",
    // },
    // {
    //   "colorL": AppColors.blueL_006796,
    //   "colorD": AppColors.blueD_00344B,
    //   "bgImage": "assets/newImages/bgBlue.svg",
    //   "imageUrl": "assets/newImages/cat8.png",
    //   "title": "Unlisted stocks",
    // },
  ];

  PageController indicatorcontroller = PageController(
    viewportFraction: 0.95,
  );
  PageController categoriescontroller = PageController(
    viewportFraction: 0.55,
  );
  PageController investmentcontroller = PageController(
    viewportFraction: 0.9,
  );
  PageController pickcontroller = PageController(
    viewportFraction: 0.75,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              sizedBoxWidth(10.w),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              sizedBoxWidth(10.w),
              Text(
                'Categories',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.sp,
                    color: Colors.black),
              ),
              const Spacer(),
              // Icon(
              //   Icons.filter_alt_outlined,
              //   color: Colors.black,
              // ),
              OpenContainerWrappers(
                closeBuild: IconButton(
                  onPressed: null,
                  icon: SizedBox(
                    width: 20.w,
                    height: 25.h,
                    child: SvgPicture.asset(
                      'assets/images/notification-bell-svgrepo-com.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                openBuild: const NotificationPage(),
              ),
            ],
          ),
          elevation: 0,
          shadowColor: Colors.black,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
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
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 20.h),
      child: GridView.builder(
        itemCount: categoryData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 169 / 133,
          crossAxisCount: 2,
          crossAxisSpacing: 15.w,
          mainAxisSpacing: 15.w,
        ),
        itemBuilder: (BuildContext context, int index) {
          return OpenContainerWrappers(
            closeBuild: categoryCard(
              color1: categoryData[index]["colorL"],
              color2: categoryData[index]["colorD"],
              bgImage: categoryData[index]["bgImage"],
              image: categoryData[index]["imageUrl"],
              text: categoryData[index]["title"],
            ),
            openBuild: navigate(index),
          );
        },
      ),
    );
  }

  Widget navigate(int index) {
    switch (index) {
      case 0:
        {
          return GlobalCommonmain(
            title: "Bonds",
            description:
                """International bonds are debt securities issued by foreign governments or corporations to raise funds from global investors. They can be in the form of government bonds issued by foreign governments or corporate bonds issued by foreign companies, both seeking financing from international markets. International Bonds allow an investor to gain exposure to different bond types according to their risk, and enable diversification of sovereign risk.""",
            expectedReturn: "~ 2%-14% (in USD Terms)",
            suggestedHorizon: 'Less than 1 Year to Perpetual',
            minInvestment: '''\$10,000 (₹8,25,000)''',
            bottomButtonTitle: 'View Bonds Assets',
            backgroundColor: AppColors.redL_BE0F02,
            learnMoreRoute: const BondsLearnmore(),
            bottomButtonRoute: const BondsAssetsmain(),
          );
        }
      case 1:
        {
          return GlobalCommonmain(
              title: "Mutual Funds",
              description:
                  "International mutual funds are investment vehicles that offer diversification across global markets. They include Multi-Asset Funds, REITs, Fixed Income Funds and Equity Funds. They provide access to a wide range of international securities, helping investors spread risk and potentially enhance returns. They also enable exposure to different economies, industries, and currencies, increasing portfolio resilience and offering potential growth opportunities.",
              expectedReturn: "~ 6%-12% (in USD Terms)",
              suggestedHorizon: "3+ Years",
              minInvestment: "\$5,000 (₹4,12,500)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.blueL_006796,
              learnMoreRoute: MutualFundsLearnmore(),
              bottomButtonRoute: const MutualFundsproducts());
        }
      case 2:
        {
          return GlobalCommonmain(
              title: "Equity Stocks ",
              description:
                  "Global equity stocks refer to stocks or shares of companies traded on international stock exchanges. Investing in individual stocks offers the potential for higher returns compared to mutual funds due to the focused exposure to specific companies. However, it comes with higher risk as it concentrates investment in a single company and exposes investors to company-specific risks & opportunities.",
              expectedReturn: "~10-15% (in USD Terms)",
              suggestedHorizon: "3+ Years",
              minInvestment: "\$100 (₹8,250)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.greenL_089435,
              learnMoreRoute: const EquitiesLearnmore(),
              bottomButtonRoute: const Equitiesproducts());
        }
      case 3:
        {
          return GlobalCommonmain(
              title: "Venture Capital Funds",
              description:
                  "Global venture capital funds are investment vehicles that provide funding to startups and early-stage companies around the world. They offer benefits such as potential high returns and participation in cutting-edge innovation. Global venture capital funds specialize in diverse sectors and geographies, providing investors with exposure to a broad range of opportunities. Compared to Indian venture capital, global venture capital offers access to a wider pool of startups, a larger market, and potential for global scalability.",
              expectedReturn: "~15-24% (in USD Terms)",
              suggestedHorizon: "More than 6 Years",
              minInvestment: "\$100,000 (₹82,50,000)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.purpleL_474E88,
              learnMoreRoute: const VenturecapitalLearnmore(),
              bottomButtonRoute: const Venturecapitalproducts());
        }
      case 4:
        {
          return GlobalCommonmain(
              title: "Private Equity Funds",
              description:
                  "Private equity funds pool capital from investors to acquire ownership in private companies, offering benefits like potential high returns and portfolio diversification. Investing in private equities provides access to private markets, unique investment opportunities, and the ability to actively participate in the growth and success of non-publicly traded companies. However, they typically require longer investment horizons, have higher minimum investment requirements, and limited liquidity compared to public equity funds.",
              expectedReturn: "~15-24% (in USD Terms)",
              suggestedHorizon: "More than 6 Years",
              minInvestment: "\$100,000 (₹82,50,000)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.brownL_973926,
              learnMoreRoute: PrivateEquityLearnmore(),
              bottomButtonRoute: const PrivateEquityproducts());
        }
      case 5:
        {
          return GlobalCommonmain(
              title: "Venture Debt Funds",
              description:
                  "This is a kind of financing where the lender (lessor) gives another person, the lessee, the right to use an asset against periodical payments.",
              expectedReturn: "~ 12-16% p.a.",
              suggestedHorizon: "~ 12-36 months",
              minInvestment: "1,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.pinkL_E6088B,
              learnMoreRoute: VentureDebtLearnmore(),
              bottomButtonRoute: const VentureDebtproducts());
        }
      case 6:
        {
          return GlobalCommonmain(
              title: "Hedge Funds",
              description:
                  "Hedge funds are alternative investment vehicles that aim to generate high returns through various strategies, such as long-short equity, global macro, and event-driven. They offer potential benefits like flexibility, active management, and the ability to profit in both rising and falling markets. Unlike mutual funds, hedge funds have more flexibility in investment strategies, including short-selling and derivatives, and can use leverage to potentially enhance returns. However, they also come with higher risk and typically require higher investment minimums.",
              expectedReturn: "~15-24% (in USD Terms)",
              suggestedHorizon: "More than 8 Years",
              minInvestment: "\$50,000 (₹41,25,000)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.redL_BE0F02,
              learnMoreRoute: HedgeFundsLearnmore(),
              bottomButtonRoute: const HedgeFundsproducts());
        }
      case 7:
        {
          return GlobalCommonmain(
              title: "Exchange-traded Funds (ETFs)",
              description:
                  "ETFs, or Exchange-Traded Funds, are investment funds that are traded on stock exchanges, like individual stocks. They are designed to track the performance of a specific index, sector, commodity, or asset class. Global ETFs offer investors the opportunity to access a wide range of international markets and sectors. These ETFs provide diversification across multiple countries, offering exposure to various economies and industries. They are known for their low costs, liquidity, transparency, and flexibility in trading, making them a popular choice for investors seeking global market exposure",
              expectedReturn: "~6%-12% (in USD Terms)",
              suggestedHorizon: "More than 3 Years",
              minInvestment: "\$100 (₹8,250)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.blueL_006796,
              learnMoreRoute: const ETFsLearnmore(),
              bottomButtonRoute: const ETFsproducts());
        }
      case 8:
        {
          return GlobalCommonmain(
              title: "Real Estate Investment Trusts (REITs)",
              description:
                  "Global REITs are investment vehicles that give access to managed income-generating real estate properties worldwide. They offer investors diversification, stable income, and potential growth opportunities in international real estate markets. Moreover, they can serve as a hedge against inflation, as rental income and property values tend to rise with inflationary pressures and provide a hedge against domestic economic downturns by tapping into global real estate markets.",
              expectedReturn: "~ 6%-10% (in USD Terms)",
              suggestedHorizon: "More than 5 Years",
              minInvestment: "\$1,000 (₹82,500)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.greenL_089435,
              learnMoreRoute: REITsLearnmore(),
              bottomButtonRoute: const REITsproducts());
        }
      // case 9:
      //   {
      //     return GlobalCommonmain(
      //         title: "High Yield Fixed Income",
      //         description:
      //             "High-yield bonds or junk bonds are bonds that pay higher rates of interest, because of their low credit rates, compared to investment-grade bonds. Due to their higher chances to default, they pay a higher yield to compensate investors - hence called High yield Bonds.",
      //         expectedReturn: "~ 12-18% p.a.",
      //         suggestedHorizon: "~ 1-5 years",
      //         minInvestment: "1,00,000",
      //         bottomButtonTitle: "View more product",
      //         backgroundColor: AppColors.purpleL_474E88,
      //         learnMoreRoute: BondsLearnmore(),
      //         bottomButtonRoute: const BondsAssetsmain());
      //   }
      default:
        {
          return ComingSoon();
        }
    }
  }

  Widget categoryCard(
      {required Color color1,
      required Color color2,
      required String bgImage,
      required String image,
      required String text}) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2]),
            borderRadius: BorderRadius.circular(10.h),
          ),
        ),
        Positioned(
          right: 0,
          child: SvgPicture.asset(
            bgImage,
            width: 65.w,
            height: 133.h,
          ),
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  image,
                  height: 45.h,
                  width: 45.h,
                ),
                text16White(text)
              ],
            ),
          ),
        )
      ],
    );
  }
}
