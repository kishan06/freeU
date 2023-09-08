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

class Indianrealassetsmain extends StatefulWidget {
  const Indianrealassetsmain({super.key});

  @override
  State<Indianrealassetsmain> createState() => _IndianrealassetsmainState();
}

class _IndianrealassetsmainState extends State<Indianrealassetsmain> {
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
                """Residential Real Estate comprises properties designed for individuals or families to live in. It includes apartments, houses, villas, and condominiums. Residential buildings have essential amenities like kitchens, bathrooms, and bedrooms and can be multifamily or single-family structures. The residential real estate market involves buying, selling, leasing, or renting properties for residential purposes.""",
            expectedReturn: "~ 2%-14% (in USD Terms)",
            suggestedHorizon: 'Less than 1 Year to Perpetual',
            minInvestment: '''\$10,000 (₹8,25,000)''',
            bottomButtonTitle: 'View Bonds Assets',
            backgroundColor: AppColors.redL_BE0F02,
            learnMoreRoute: const ResidentialLearnmore(),
            bottomButtonRoute: const Residentialproductstab(),
          );
        }
      case 1:
        {
          return GlobalCommonmain(
              title: "Commercial Real Estate",
              description:
                  "Commercial Real Estate refers to properties intended for business or commercial activities. It includes office buildings, retail spaces, shopping malls, hotels, and warehouses. The commercial real estate market involves buying, selling, leasing, or renting properties to facilitate commerce and generate income. Commercial buildings are laid out according to use, some with meeting rooms, display floors, offices, perhaps retail space, storage space, loading docks, and other features.",
              expectedReturn: "~ 6%-12% (in USD Terms)",
              suggestedHorizon: "3+ Years",
              minInvestment: "\$5,000 (₹4,12,500)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.blueL_006796,
              learnMoreRoute: CommercialLearnmore(),
              bottomButtonRoute: const Commercialproductstab());
        }
      case 2:
        {
          return GlobalCommonmain(
              title: "Industrial Real Estate",
              description:
                  "Industrial Real Estate refers to properties used for industrial or manufacturing purposes. It includes factories, warehouses, distribution centers, and industrial parks. The industrial real estate market involves purchasing, selling, leasing, or developing properties to support industrial operations and logistics. Industrial buildings are typically characterized by their large, open spaces, resembling warehouses. They are designed to accommodate factory floors where machinery operates, supervisory office spaces, break rooms, bathrooms, and storage areas. They adhere to fire protection and life safety requirements.",
              expectedReturn: "~10-15% (in USD Terms)",
              suggestedHorizon: "3+ Years",
              minInvestment: "\$100 (₹8,250)",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.greenL_089435,
              learnMoreRoute: const IndustrialLearnmore(),
              bottomButtonRoute: const Industrialproductstab());
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
