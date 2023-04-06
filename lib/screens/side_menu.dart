import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/sized_box.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key, 
  // required this.press, required this.currentIndex
  });

  @override
  State<SideBar> createState() => _SideBarState();

  // final VoidCallback press;
  // final int currentIndex;
}

class _SideBarState extends State<SideBar> {

  List sideBarData = [
    
    {
      "imagePath":"assets/logos/side1.png",
      "text":"KYC"
    },
    {
      "imagePath":"assets/logos/side2.png",
      "text":"Security"
    },
    {
      "imagePath":"assets/logos/side3.png",
      "text":"How to Invest"
    },
    {
      "imagePath":"assets/logos/side4.png",
      "text":"Update Risk Profile"
    },
    {
      "imagePath":"assets/logos/side5.png",
      "text":"About FreeU"
    },
    {
      "imagePath":"assets/logos/side6.png",
      "text":"Our Insights"
    },
    {
      "imagePath":"assets/logos/side7.png",
      "text":"FAQ's"
    },
    {
      "imagePath":"assets/logos/side8.png",
      "text":"Privacy Policy"
    },
    {
      "imagePath":"assets/logos/side9.png",
      "text":"Terms and condition"
    },
    {
      "imagePath":"assets/logos/side10.png",
      "text":"Contact Us"
    },
    {
      "imagePath":"assets/logos/side11.png",
      "text":"Logout"
    },


  ];
  // Menu selectedSideMenu = sidebarMenus.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 300.w,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.blue143C6D
            // borderRadius: BorderRadius.all(
            //   Radius.circular(30),
            // ),
          ),
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.w,10.h,45.w,10.h),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  sizedBoxHeight(60.h),
            
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.w,
                        width: 50.w,
                        child: Image.asset('assets/images/avatar.png',
                          // height: 50.w,
                          // width: 50.w,
                          fit: BoxFit.fill,
                        ),
                      ),

                      sizedBoxWidth(15.w),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text16White("Kartikey Adani"),

                          text14White("Investor")
                        ],
                      ),

                      Spacer(),

                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.w,
                        color: AppColors.white,
                      )






                      // SizedBox(
                      //   width: 5,
                      // ),
                      // Text(
                      //   "Kartikey Adani",
                      //   style: TextStyle(
                      //     fontSize: 15.sm,
                      //   ),
                      // ),


                    ],
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: sideBarData.length,
                    itemBuilder: (_,index){
                      return sideBarTile(
                        image: sideBarData[index]["imagePath"],
                        text: sideBarData[index]["text"],
                        

                      );
                    }
                  )

                  // sideBarTile()
            
            
            
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class sideBarTile extends StatelessWidget {
  String image;
  String text;
  sideBarTile({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 0.5.h,
          color: AppColors.white,
        ),

        Row(
          children: [

            sizedBoxWidth(2.w),
            
            SizedBox(
              height: 30.h,
              width: 30.h,
              child: Image.asset(image,
                // height: ,
                color: AppColors.white,
                fit: BoxFit.fill,
              ),
            ),
            
            SizedBox(
              width: 15.w,
            ),

            text16White(text)
          
          ],
        )
      ],
    );
  }
}

