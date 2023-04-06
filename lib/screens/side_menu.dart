
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300.w,
        height: double.infinity,
        color: AppColors.blue143C6D,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/avatar.png',
                    width: 50.h,
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Kartikey Adani",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.white
                    ),
                  ),
                ],
              ),
            
            ],
            
          )
        ),
        
      ),
    );
  }
}