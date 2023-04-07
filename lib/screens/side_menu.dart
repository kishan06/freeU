import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/Utils/texts.dart';
import 'package:freeu/common/customNextButton.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:freeu/login/login.dart';
import 'package:get/get.dart';

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
            
                  InkWell(
                    onTap: (){
                      Get.toNamed("/userlogged");
                    },
                    child: Row(
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
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: sideBarData.length,
                    itemBuilder: (_,index){
                      return sideBarTile(
                        image: sideBarData[index]["imagePath"],
                        text: sideBarData[index]["text"],
                        onTap: (){
                          navigateTo(index,context);
                        },

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

void navigateTo(int index,BuildContext context){
  switch (index) {
    case 0: {
      Get.toNamed("/kyc1");
    }
    break;

    case 1: {
      Get.toNamed("/security");
      
    }
    break;

    case 2: {
      Get.toNamed("/howtoinvest");
      
    }
    break;

    case 3: {
      Get.toNamed("/updaterisk");
      
    }
    break;

    case 4: {
      Get.toNamed("/about");
      
    }
    break;

    case 5: {
      Get.toNamed("/insights");
      
    }
    break;

    case 6: {
      Get.toNamed("/faqs");
      
    }
    break;
    
    case 7: {
      Get.toNamed("/privacypolicy");
      
    }
    break;
    
    case 8: {
      Get.toNamed("/termsandconditions");
      
    }
    break;
    
    case 9: {
      Get.toNamed("/contactus");

    }
    break;

    case 10: {
      // logoutDailog();
      logoutDailog(context);

      // Get.toNamed("/security");
      
    }
    break;

    default: {
      null;
    }
  }
}

Future<dynamic> logoutDailog(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          color: Color(0xFFFEFEFE),
          margin: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30.h,
              ),
              // Center(
              //   child: Text(
              //     'Log Out?',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         fontFamily: 'Poppins',
              //         fontSize: 20.sm,
              //         color: Colors.black),
              //   ),
              // ),
              // SizedBox(
              //   height: 10.h,
              // ),
              Center(
                child: Text(
                  'Are you sure want to log out?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17.sm,
                      color: Color(0xFF444444)),
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: CustomNextButton(
                      text: "Log out",
                      ontap: () {
                        Get.offAll(Login());
                      },
                    )),
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: GestureDetector(
                  onTap: () {
                    print("going to homepage");
                    //Get.off(HomePage());
                    Navigator.pop(context);
                    // Get.toNamed("/homepage");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: const BoxDecoration(
                      // borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color(0xFFffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius:
                              1.0, // soften the shadow
                          spreadRadius:
                              0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Cancel",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sm,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
}


class sideBarTile extends StatelessWidget {
  String image;
  String text;
  void Function()? onTap;

  sideBarTile({
    required this.image,
    required this.text,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 0.25.h,
          color: AppColors.white,
        ),

        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical:1.h),
            child: Row(
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
            ),
          ),
        )
      ],
    );
  }
}

