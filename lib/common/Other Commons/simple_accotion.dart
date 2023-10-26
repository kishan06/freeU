// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:freeu/profile/profile.dart';
// import 'package:getwidget/getwidget.dart';
// import 'sized_box.dart';

// Widget personalDetailsAccotion(String question) {
//   return Container(
//     decoration: BoxDecoration(
//         border: Border.all(color: Colors.black.withOpacity(0.2)),
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5.r)),
//     child: GFAccordion(
//       showAccordion: false,
//       titleBorderRadius: BorderRadius.circular(5.r),
//       contentBorderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(5.r),
//         bottomRight: Radius.circular(5.r),
//       ),
//       margin: const EdgeInsets.all(0),
//       titlePadding: EdgeInsets.all(10.h),
//       contentPadding: EdgeInsets.all(10.w),
//       expandedTitleBackgroundColor: Colors.white,
//       contentBackgroundColor: Colors.white,
//       titleChild: Text(
//         question,
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 18.sp,
//         ),
//       ),
//       contentChild: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           sizedBoxHeight(15.h),
//           Column(
//             children: [
//               iconText(
//                 Icons.person_outline_outlined,
//                 nameValue == null || nameValue!.isEmpty
//                     ? 'Kartikey Adani'
//                     : '$nameValue $lastNameValue',
//               ),
//               sizedBoxHeight(20.h),
//               iconText(
//                   Icons.phone_in_talk_sharp,
//                   phoneValue == null || phoneValue!.isEmpty
//                       ? '+91 8425025713'
//                       : '+91 $phoneValue'),
//               sizedBoxHeight(20.h),
//               iconText(
//                 Icons.mail_outline,
//                 emailValue == null || emailValue!.isEmpty
//                     ? 'Kartikey@gmail.com'
//                     : '$emailValue',
//               ),
//               sizedBoxHeight(20.h),
//               iconText(Icons.credit_card_outlined, 'IURPS9876R'),
//               sizedBoxHeight(20.h),
//               iconText(
//                 Icons.location_on_outlined,
//                 addressValue == null || addressValue!.isEmpty
//                     ? '614, 6TH Floor, Palm Spring Centre, New Link Rd, Malad West, Mumbai, Maharashtra 400064'
//                     : '$addressValue',
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget iconText(icon, txt) {
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Icon(
//         icon,
//         size: 24.h,
//         color: Colors.black.withOpacity(0.7),
//       ),
//       sizedBoxWidth(15.w),
//       Flexible(
//         child: Text(
//           txt,
//           style: TextStyle(fontSize: 18.sp),
//         ),
//       ),
//     ],
//   );
// }
