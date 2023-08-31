import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/Notification.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/Categories%20Common%20Files/cat_common_main.dart';
import 'package:freeu/common/Other%20Commons/page_animation.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/viewModel/Categoriesmainlist.dart';
import 'package:get/get.dart';
import 'Alternative/AlternativeCategories.dart';
import 'Alternative/Fractionalproperties.dart';
import 'Alternative/Fractionalrealestate.dart';
import 'AlternativeInvestment.dart';
import 'CleanGreen/CleanGreenViewMore.dart';
import 'CleanGreen/clean green view more product/CleanGreenViewMoreProduct.dart';
import 'High_yield/High_yield_Learn.dart';
import 'High_yield/high_yield_more_products.dart';
import 'InvoiceDiscounting/DiscountinglearnMore.dart';
import 'InvoiceDiscounting/Invoiceproperties.dart';
import 'Lease_based_Categories/Lease view more product/LeaseViewMoreProduct.dart';
import 'Lease_based_Categories/Lease_based_learn.dart';
import 'PeerLendingAssets/Peer View More product/PeerViewMoreProduct.dart';
import 'PeerLendingAssets/PeerLearnMore.dart';
import '../../common/Categories Common Files/coming_soon.dart';
import 'SecuredDebt/SecuritizedViewMore.dart';
import 'SecuredDebt/Securitizedproperties.dart';
import 'Venture debt/VentureDebtViewMore.dart';
import 'Venture debt/VentureProduct/ViewMoreProdcutVenture.dart';
import 'revenue_based_financing/revenue_based_learn_more.dart';
import 'revenue_based_financing/revenueproperties.dart';

class CategoriesMain extends StatefulWidget {
  const CategoriesMain({super.key});

  @override
  State<CategoriesMain> createState() => _CategoriesMainState();
}

class _CategoriesMainState extends State<CategoriesMain> {
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
          "Alternative Investment Funds",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat2.png",
      "title": "Fractional Real Estate",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat3.png",
      "title": "Peer- Peer lending",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat4.png",
      "title": "Invoice Discounting",
    },
    {
      "colorL": AppColors.brownL_973926,
      "colorD": AppColors.brownD_4C1D13,
      "bgImage": "assets/newImages/bgBrown.svg",
      "imageUrl": "assets/newImages/cat5.png",
      "title": "Revenue based Financing",
    },
    {
      "colorL": AppColors.pinkL_E6088B,
      "colorD": AppColors.pinkD_730446,
      "bgImage": "assets/newImages/bgPink.svg",
      "imageUrl": "assets/newImages/cat6.png",
      "title": "Lease based Financing",
    },
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat7.png",
      "title": "Clean and Green Assets",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat8.png",
      "title": "Venture Debt",
    },
    {
      "colorL": AppColors.greenL_089435,
      "colorD": AppColors.greenD_044A1B,
      "bgImage": "assets/newImages/bgGreen.svg",
      "imageUrl": "assets/newImages/cat9.png",
      "title": "Secured Debt",
    },
    {
      "colorL": AppColors.purpleL_474E88,
      "colorD": AppColors.purpleD_242744,
      "bgImage": "assets/newImages/bgPurple (2).svg",
      "imageUrl": "assets/newImages/cat10.png",
      "title": "High Yield Finance",
    },
    {
      "colorL": AppColors.brownL_973926,
      "colorD": AppColors.brownD_4C1D13,
      "bgImage": "assets/newImages/bgBrown.svg",
      "imageUrl": "assets/newImages/cat11.png",
      "title": "International Financial Investment",
    },
    {
      "colorL": AppColors.pinkL_E6088B,
      "colorD": AppColors.pinkD_730446,
      "bgImage": "assets/newImages/bgPink.svg",
      "imageUrl": "assets/newImages/cat12.png",
      "title": "International Real Estate",
    },
    {
      "colorL": AppColors.redL_BE0F02,
      "colorD": AppColors.redD_5F0801,
      "bgImage": "assets/newImages/bgRed.svg",
      "imageUrl": "assets/newImages/cat13.png",
      "title": "Startup’s",
    },
    {
      "colorL": AppColors.blueL_006796,
      "colorD": AppColors.blueD_00344B,
      "bgImage": "assets/newImages/bgBlue.svg",
      "imageUrl": "assets/newImages/cat8.png",
      "title": "Unlisted stocks",
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
          return CatCommonMain(
            title: "Alternative Investment Funds",
            description:
                """Alternate Investment Funds or AIFs are privately pooled investment vehicles that collect funds from investors, under specific guidelines of the SEBI (Securities and Exchange Board of India). It includes venture debt, hedge funds, real estate funds, PIPE investments, private equity, etc.""",
            expectedReturn: "~ 12-24% p.a.",
            suggestedHorizon: 'More than 5 Years',
            minInvestment: '1 Crore',
            bottomButtonTitle: 'View AIF Categories',
            backgroundColor: AppColors.redL_BE0F02,
            learnMoreRoute: const AlternativeInsvestment(),
            bottomButtonRoute: const AlternativeCategories(),
          );
        }
      case 1:
        {
          return CatCommonMain(
              title: "Fractional Real Estate",
              description:
                  "Fractional Real Estate investing allows investors to buy fractions of a real estate property, and get returns on it like rent, capital appreciation, etc. The investors split the cost, and share any profit that comes from that asset without the hassle of paperwork, property maintenance, etc.",
              expectedReturn: "~ 11-13% p.a.",
              suggestedHorizon: "More than 4 Years",
              minInvestment: "25,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.blueL_006796,
              learnMoreRoute: FractionalRealEstate2(),
              bottomButtonRoute: const Fractionalproperties());
        }
      case 2:
        {
          return CatCommonMain(
              title: "Peer to Peer Lending",
              description:
                  "Peer to Peer lending connects the borrowers (investors) to the lenders directly, under a loan agreement, without having to go through any financial institutions like banks.",
              expectedReturn: "~ 9-12% p.a.",
              suggestedHorizon: "~ 3-36 months",
              minInvestment: "1,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.greenL_089435,
              learnMoreRoute: const PeerLearnMore(),
              bottomButtonRoute: const PeerViewMoreProduct());
        }
      case 3:
        {
          return CatCommonMain(
              title: "Invoice Discounting",
              description:
                  "Invoice Discounting is the financial practice of using a company's unpaid invoices to get a working cash flow and fulfill its immediate financial needs.",
              expectedReturn: "~ 12-18% p.a.",
              suggestedHorizon: "~ 3-18 months",
              minInvestment: "1,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.purpleL_474E88,
              learnMoreRoute: const DiscountingLearnMore(),
              bottomButtonRoute: const InvoiceProperties());
        }
      case 4:
        {
          return CatCommonMain(
              title: "Revenue-based Financing",
              description:
                  "Revenue-based financing is an investment done to help small and rising startups grow their business with the invested capital, in return for a fixed percentage of their ongoing gross revenues, measured mainly as monthly revenues.",
              expectedReturn: "~ 12-16% p.a.",
              suggestedHorizon: "~ 1-4 years",
              minInvestment: "5,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.brownL_973926,
              learnMoreRoute: RevenueBasedLearnMore(),
              bottomButtonRoute: const RevenueProperties());
        }
      case 5:
        {
          return CatCommonMain(
              title: "Lease based Financing",
              description:
                  "This is a kind of financing where the lender (lessor) gives another person, the lessee, the right to use an asset against periodical payments.",
              expectedReturn: "~ 12-16% p.a.",
              suggestedHorizon: "~ 12-36 months",
              minInvestment: "1,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.pinkL_E6088B,
              learnMoreRoute: LeaseBasedLearn(),
              bottomButtonRoute: const LeaseViewMoreProduct());
        }
      case 6:
        {
          return CatCommonMain(
              title: "Clean and Green Assets",
              description:
                  "Clean and Green Asset investing is the method of investing in environmentally conscious, sustainable, and socially conscious companies.",
              expectedReturn: "~ 9-12% p.a.",
              suggestedHorizon: "~ 6-36 months",
              minInvestment: "50,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.redL_BE0F02,
              learnMoreRoute: CleanGreenViewMore(),
              bottomButtonRoute: const CleanGreenViewMoreProduct());
        }
      case 7:
        {
          return CatCommonMain(
              title: "Venture Debt",
              description:
                  "Venture Debt is a debt provided to venture capital-backed companies to raise working capital, to fulfill their financial shortfalls.",
              expectedReturn: "~ 12-18% p.a.",
              suggestedHorizon: "~ 12-36 months",
              minInvestment: "5,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.blueL_006796,
              learnMoreRoute: const VentureDebtViewMore(),
              bottomButtonRoute: const VeiwMoreProductVenture());
        }
      case 8:
        {
          return CatCommonMain(
              title: "Securitized Debt Instruments",
              description:
                  "Securitization involves the creation of a pool of assets from illiquid financial assets which are repackaged or bundled into marketable securities. Securitized Debt Instruments are financial securities such as bonds/certificates that are created by securitizing individual loans (debt).",
              expectedReturn: "~ 12-16% p.a.",
              suggestedHorizon: "More than 3 Years",
              minInvestment: "5,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.greenL_089435,
              learnMoreRoute: SecuritizedViewMore(),
              bottomButtonRoute: const SecuritizedProperties());
        }
      case 9:
        {
          return CatCommonMain(
              title: "High Yield Fixed Income",
              description:
                  "High-yield bonds or junk bonds are bonds that pay higher rates of interest, because of their low credit rates, compared to investment-grade bonds. Due to their higher chances to default, they pay a higher yield to compensate investors - hence called High yield Bonds.",
              expectedReturn: "~ 12-18% p.a.",
              suggestedHorizon: "~ 1-5 years",
              minInvestment: "1,00,000",
              bottomButtonTitle: "View more product",
              backgroundColor: AppColors.purpleL_474E88,
              learnMoreRoute: HighYieldLearn(),
              bottomButtonRoute: const HighYieldMoreProduct());
        }
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
