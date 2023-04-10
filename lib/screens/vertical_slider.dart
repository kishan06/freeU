// import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/HomePage/Categories/Alternative/PrivateEquity.dart';
import 'package:freeu/HomePage/Categories/Alternative/PrivateEquityfund.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:get/get.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:snoozz_2/colors/colors.dart';
// import 'package:snoozz_2/controllers/nft_data_controller.dart';
// import 'package:snoozz_2/text/text.dart';
// import 'package:snoozz_2/widgets/sized_box.dart';

// import '../../widgets/shimmer_container.dart';

class VerticalSlider extends StatefulWidget {
  const VerticalSlider({super.key});

  @override
  State<VerticalSlider> createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {

  List verticalSliderData = [
    {
      "title":"01. Private Equity Fund",
      "des":"Private Equity Funds is a collective investment scheme used to invest in equities and debts, managed by the Private Equity Firm, or LLP. These PE funds invest in unlisted companies and secure a share of the ownership.",
      "IRR":"~ 15-24 % p.a.",
      "SIH":"More than 8 Years",
      // "MI":"1 Crore",
      "color": AppColors.blue004E84
    },
    {
      "title":"02. Debt Fund",
      "des":"Debt Funds invest in debt instruments of a preferably high-growth potential company (both listed or unlisted), investing the funds in different company bonds, debentures, and other money market instruments.",
      "IRR":"~ 12-16 % p.a.",
      "SIH":"More than 4 Years",
      // "MI":"1 Crore",
      "color": AppColors.pink873762
    },
    {
      "title":"03. Private Real Estate Fund",
      "des":"Real Estate AIF under category II helps various real estate properties across India, mainly from High-Net-Worth investors intending to grow and spread their capital through non-traditional investment routes.",
      "IRR":"~15-24% p.a.",
      "SIH":"More than 6 Years",
      // "MI":"1 Crore",
      "color": AppColors.blue002A5B
    },
    {
      "title":"04. Fund for Distressed Asset",
      "des":"Real Estate AIF under category II helps various real estate properties across India, mainly from High-Net-Worth investors intending to grow and spread their capital through non-traditional investment routes.",
      "IRR":"~15-24% p.a.",
      "SIH":"More than 6 Years",
      // "MI":"1 Crore",
      "color": AppColors.green008A5B
    },
  ];
  // NftDataController controller = Get.put(NftDataController());

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // if (controller.nsfData == null) {
      // controller.apiForNft();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppColors.transparent,
        body: 
        Stack(
          children: [
            PageView.builder(
              itemCount: 6,
              scrollDirection:Axis.vertical,
              itemBuilder: (context, index) {
                return PrvateEquity();
              }),

            Positioned(
              top: 6.h,
              left: 4.w,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                ),
                iconSize: 26.w,
                color: Color(0XFFFFFFFF),
              ),
            ),
          ],
        )
        // CarouselSlider.builder(
        //   itemCount: 4,
        //   itemBuilder: (context, index, realIndex) {
        //     return PrvateEquity();
        //     // if (controller.nftData != null) {
        //     //   final itemInfo = controller.nftData![index];
        //     //   var original = itemInfo["price"];
        //     //   var stringPrice = original.toString();
        //     //   var priceDouble = double.parse(stringPrice);
      
        //     //   return insideSlider(  
        //     //     nftName: itemInfo["name"],
        //     //     description: itemInfo["des"],
        //     //     userName: itemInfo["uname"],
        //     //     imageUrl: itemInfo["hash_id"],
        //     //     likeStatus: itemInfo["like_status"],
        //     //     totalLikes: itemInfo["total_likes"],
        //     //     price: priceDouble,
        //     //     onTap: (){
        //     //       print("clicked");
        //     //       controller.apiForLike(nftId: itemInfo["id"]);
        //     //     }
        //     //   );
        //     // } else {
        //     //   return shimmerContainerExplore();
        //     // }
        //   },
        //   options: CarouselOptions(
        //     enableInfiniteScroll: false,
      
        //     viewportFraction: 1, 
        //     height: double.infinity, 
        //     aspectRatio: 0,
        //     scrollDirection: Axis.vertical
        //   ),
        // ),
   
      )
    );
  }



  // Widget insideSlider({
  //     String? nftName, 
  //     String? description, 
  //     String? userName, 
  //     String? imageUrl,
  //     int? likeStatus, 
  //     int? totalLikes, 
  //     required double price, 
  //     void Function()? onTap
  //   }){
  //     return Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Stack(
  //           // clipBehavior: Clip.none,
  //           // fit: StackFit.loose,
  //           // alignment: Alignment.center,
  //           // mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Container(
  //               // color: Colors.red.withOpacity(0.5),
  //               // height: MediaQuery.of(context).size.height,
  //               height: (MediaQuery.of(context).size.width - 10.w) + 80.h,
  //               // width: MediaQuery.of(context).size.width,
  //             ), 

  //             Positioned(
  //               top: 0.h,
  //               // right: 0,
  //               child: Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 10.w),
  //                 child: Container(
  //                   height: MediaQuery.of(context).size.width - 10.w,
  //                   width: MediaQuery.of(context).size.width - 20.w,
                        
  //                   decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(30.h),
  //                     image: DecorationImage(
  //                       image: NetworkImage("https://gateway.pinata.cloud/ipfs//$imageUrl"),
  //                       fit: BoxFit.fill
  //                     )
  //                   ),
  //                 ),
  //               ),
  //             ),
          
  //             Positioned(
  //               bottom: -0.h,
  //               child: Container(
  //                 // height: 175.h,
  //                 width: MediaQuery.of(context).size.width,
  //                 child: Padding(
  //                   padding: EdgeInsets.symmetric(horizontal: 10.w),
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Row(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Column(
  //                             children: [
  //                               Container(
  //                                 width: 70.h,
  //                                 height: 70.h,
  //                                 decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(35.h),
  //                                   image: const DecorationImage(
  //                                     image: AssetImage("assets/images/1.png"),
  //                                     fit: BoxFit.fill
  //                                   )
  //                                 ),
  //                               ),
                    
  //                               sizedBoxHeight(5.h),
                    
  //                               textWhite15W500("@$userName"),
                    
  //                             ],
  //                           ),
                            
  //                           const Spacer(),
                        
  //                           Column(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             crossAxisAlignment: CrossAxisAlignment.end,
  //                             children: [
                    
  //                               textWhite13W500("Price"),
                        
  //                               SizedBox(height: 4.h),
                        
  //                               textWhite17("$price Snoozz")
  //                             ],
  //                           ),          
  //                         ],
  //                       ),
                    
  //                       sizedBoxHeight(10.h),
                    
  //                       textWhite17(nftName!),
                    
                    
  //                       Row(
  //                         children: [
  //                           textWhite15W500("$description"),
                    
  //                           const Spacer(),
  //                           Row(
  //                             children: [
  //                               InkWell(
  //                                 onTap: onTap,
  //                                 child: Icon(likeStatus == 0 ? Icons.favorite_border_rounded : Icons.favorite_rounded,
  //                                   size: 25.h,
  //                                   color: likeStatus == 0 ? AppColors.white : AppColors.red,
  //                                 ),
  //                               ),
  //                               textWhite15W500(totalLikes.toString()),
  //                             ],
  //                           ),
  //                         ],
  //                       ),
  //                     ],
  //                   )
  //                   .frosted(
  //                     frostColor: AppColors.colorGrey500.withOpacity(0.1),
  //                     borderRadius: BorderRadius.circular(20.h),
  //                     padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
  //                     // mar
  //                     blur: 5,
  //                   ),
  //                 ),
  //               )
  //               // .frosted(
  //               //   height: 155.h,
  //               //   frostColor: AppColors.colorGrey500.withOpacity(0.1),
  //               //   borderRadius: BorderRadius.circular(20.h),
  //               //   padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
  //               //   blur: 5,
  //               // ),
  //             ),
          
  //             // sizedBoxHeight(20.h)
              
  //           ],
  //         ),

  //         sizedBoxHeight(100.h)
  //       ],
  //     );
  //   }

  // Widget shimmerContainerExplore(){
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Stack(
  //             clipBehavior: Clip.none,
  //             alignment: Alignment.center,
  //             children: [
  //               Padding(
  //                 // padding: const EdgeInsets.all(8.0),
  //                 padding: EdgeInsets.symmetric(horizontal: 10.w),
  //                 child: shimmerContainer(
  //                   height: MediaQuery.of(context).size.width - 10.w,
  //                   radius: 30.h,
  //                 ),
  //               ),

  //               Positioned(
  //                 bottom: -80.h,
  //                 child: Padding(
  //                   // padding: EdgeInsets.fromLTRB(),
  //                   padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
  //                   child: shimmerContainer(
  //                     radius: 20.h,
  //                     height: 175.h,
  //                     width: MediaQuery.of(context).size.width - 17.w,
  //                   ),
  //                 )
  //               )
  //             ],
  //           ),
  //           // sizedBoxHeight(10.h),
  //           // Expanded(
  //           //   child: Shimmer.fromColors(
  //           //     baseColor: Colors.grey[500]!,
  //           //     highlightColor: Colors.grey[100]!,
  //           //     child: Container(
  //           //       decoration: BoxDecoration(
  //           //         borderRadius: BorderRadius.circular(30.h),
  //           //         color: AppColors.colorGrey500.withOpacity(0.1)
  //           //       ),
  //           //     ),
  //           //   ),
  //           // ),


  //           sizedBoxHeight(100.h)
  //         ],
  //       );
    
  // }

}
