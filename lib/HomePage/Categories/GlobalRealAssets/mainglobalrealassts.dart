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
import 'package:freeu/HomePage/Categories/GlobalRealAssets/GlobalCommercialAssets/Globalcommercialproducts/productscommercialglobal.dart';
import 'package:freeu/HomePage/Categories/GlobalRealAssets/GlobalCommercialAssets/globalcommercialLearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalRealAssets/GlobalIndustrialasset.dart/Gloablindusproducts.dart/productsindustrialglobal.dart';
import 'package:freeu/HomePage/Categories/GlobalRealAssets/GlobalIndustrialasset.dart/globalindustrialLearnmore.dart';
import 'package:freeu/HomePage/Categories/GlobalRealAssets/GlobalResidential/Globalproducts/productresiglobal.dart';
import 'package:freeu/HomePage/Categories/GlobalRealAssets/GlobalResidential/globalresilearnmore.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/CommercialRealEstate/Commercialproducts/productcommercial.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/CommercialRealEstate/commerlearnmore.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/IndustrialRealEstate/Industrialproducts/productindustrial.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/IndustrialRealEstate/industlearnmore.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/Residentialrelestate/residentiallearnmore.dart';
import 'package:freeu/HomePage/Categories/IndianRealAssets/Residentialrelestate/residentproducts.dart/productsresidential.dart';
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

class Globalrealassetsmain extends StatefulWidget {
  const Globalrealassetsmain({super.key});

  @override
  State<Globalrealassetsmain> createState() => _GlobalrealassetsmainState();
}

class _GlobalrealassetsmainState extends State<Globalrealassetsmain> {
  int selectIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  // late Future myfuture;
  @override
  void initState() {
    // TODO: implement initState
    // myfuture = Categorieslist().CategorieslistAPI();
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
          "Residential Real Estate",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat2.png",
      "title": "Commercial Real Estate",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat3.png",
      "title": "Industrial Real Estate",
    },
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
                  fontFamily: 'Poppins', fontSize: 22.sp, color: Colors.black),
            ),
            const Spacer(),
            // Icon(
            //   Icons.filter_alt_outlined,
            //   color: Colors.black,
            // ),
            // OpenContainerWrappers(
            //   closeBuild: IconButton(
            //     onPressed: null,
            //     icon: SizedBox(
            //       width: 20.w,
            //       height: 25.h,
            //       child: SvgPicture.asset(
            //         'assets/images/notification-bell-svgrepo-com.svg',
            //         fit: BoxFit.fill,
            //       ),
            //     ),
            //   ),
            //   openBuild: const NotificationPage(),
            // ),

            InkWell(
              onTap: () {
                Get.toNamed("/notificationpage");
              },
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: SvgPicture.asset(
                  'assets/images/notification-bell-svgrepo-com.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: _buildBody(context),
      // FutureBuilder(
      //   future: myfuture,
      //   builder: (ctx, snapshot) {
      //     if (snapshot.data == null) {
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [Center(child: CircularProgressIndicator())],
      //       );
      //     }
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       if (snapshot.hasError) {
      //         return Center(
      //           child: Text(
      //             '${snapshot.error} occured',
      //             style: TextStyle(fontSize: 18.spMin),
      //           ),
      //         );
      //       }
      //     }
      //     return _buildBody(
      //       context,
      //     );
      //   },
      // )
    );
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
            title: "Residential Real Estate",
            description:
                """International residential real estate refers to the market for residential properties located in different countries, which are primarily purchased or rented by individuals for personal use or investment purposes. It offers an opportunity for individuals to own homes or properties in foreign locations, either as a vacation home, a second residence, or for potential rental income. It provides investors with a wide range of benefits such as diversification, potential capital appreciation, rental income, hedge against economic or political risks in their home country, lifestyle choices, and means of obtaining residency or citizenship in certain countries.""",
            expectedReturn: "~ 2%-14% (in USD Terms)",
            suggestedHorizon: 'Less than 1 Year to Perpetual',
            minInvestment: '''\$10,000 (₹8,25,000)''',
            bottomButtonTitle: 'View Bonds Assets',
            backgroundColor: AppColors.redL_BE0F02,
            learnMoreRoute: const GlobalResidentLearnmore(),
            bottomButtonRoute: const GlobalResidentialproductstab(),
          );
        }
      case 1:
        {
          return GlobalCommonmain(
              title: "Commercial Real Estate",
              description:
                  "International commercial real estate refers to the market for commercial properties located in different countries, catering to businesses seeking office buildings, retail spaces, hotels, malls, and warehouses. It offers investors and businesses the opportunity to expand their operations and investment portfolios beyond their domestic borders Investing in international commercial real estate provides several benefits, including portfolio diversification, potential capital appreciation, income generation through rental yields, access to emerging markets and industries, and exposure to international business trends and practices. It also enables companies to establish regional headquarters, secure distribution centers, and tap into new customer bases.",
              expectedReturn: "~ 6%-12% (in USD Terms)",
              suggestedHorizon: "3+ Years",
              minInvestment: "\$5,000 (₹4,12,500)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.blueL_006796,
              learnMoreRoute: GlobalCommercialLearnmore(),
              bottomButtonRoute: const GlobalCommercialproductstab());
        }
      case 2:
        {
          return GlobalCommonmain(
              title: "Industrial Real Estate",
              description:
                  "International industrial real estate refers to the market for industrial properties located in different countries, serving as essential infrastructure for manufacturing, logistics, warehousing, factories, and distribution activities. Investing in international industrial real estate provides businesses and investors with opportunities for global expansion, operational efficiency, and access to diverse markets. It offers several advantages, including cost optimization, proximity to suppliers and customers, establishing a presence in strategic locations, regulatory advantages, and access to skilled labour in different regions. ",
              expectedReturn: "~10-15% (in USD Terms)",
              suggestedHorizon: "3+ Years",
              minInvestment: "\$100 (₹8,250)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.greenL_089435,
              learnMoreRoute: const GlobalIndustrialLearnmore(),
              bottomButtonRoute: const GlobalIndustrialproductstab());
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
