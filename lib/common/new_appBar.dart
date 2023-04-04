

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:freeu/Utils/colors.dart';
// import 'package:freeu/common/sized_box.dart';
// import 'package:get/get.dart';

// PreferredSizeWidget newAppBar(){
//   return AppBar(
//     backgroundColor: AppColors.white,
//     title: 
//     Row(
//       children: [
//         IconButton(
//           onPressed: () {
//             // _key.currentState!.openDrawer();
//           },
//           icon: SizedBox(
//             height: 20.h,
//             width: 25.w,
//             child: SvgPicture.asset("assets/images/menu.svg",
//               // height: 20.h,
//               // width: 10.w,
//               fit: BoxFit.fill,
//             ),
//           ),
//           // color: Colors.red,
//           // iconSize: 100.h,
//         ),

//         sizedBoxWidth(5.w),

//         Text(
//           'Welcome',
//           softWrap: true,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 22.sp,
//               // fontWeight: FontWeight.w400,
//               color: Colors.black),
//         ),

//         Spacer(),

//         IconButton(
//           onPressed: () {
//             Get.toNamed('/notificationpage');
//           },
//           icon: SizedBox(
//             width: 18.w,
//             height: 25.h,
//             child: SvgPicture.asset(
//               'assets/images/notification-bell-svgrepo-com.svg',
//               fit: BoxFit.fill,
//             ),
//           ),
//           // iconSize: 22,
//           // color: const Color(0xFF303030),
//         ),
//       ],
//     ),
//     // backgroundColor: Color(0xFFF5F8FA),
//     elevation: 0,
//     shadowColor: Colors.black,
//     automaticallyImplyLeading: false,
//     titleSpacing: 0,
  
//   );
   
// }