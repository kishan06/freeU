import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/common/signupAppbar.dart';
import 'package:freeu/common/sized_box.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InvestmentTransfer extends StatefulWidget {
  const InvestmentTransfer({super.key});

  @override
  State<InvestmentTransfer> createState() => _InvestmentTransferState();
}

class _InvestmentTransferState extends State<InvestmentTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: CustomSignupAppBar(
        titleTxt: "",
        bottomtext: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Investment Transfer Status",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          sizedBoxHeight(20.h),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    statusRow("Started", "19/06/21"),
                    SizedBox(
                      width: 40.h,
                      height: 50.h,
                      child: VerticalDivider(
                        indent: 10.h,
                        endIndent: 10.h,
                        thickness: 2.w,
                        color: Colors.blue,
                      ),
                    ),
                    statusRow("Payment Processing", "20/06/21"),
                    SizedBox(
                      width: 40.h,
                      height: 50.h,
                      child: VerticalDivider(
                        indent: 10.h,
                        endIndent: 10.h,
                        thickness: 2.w,
                        color: Colors.blue,
                      ),
                    ),
                    Row(
                      children: [
                        CircularPercentIndicator(
                          center: CircularPercentIndicator(
                            center: CircleAvatar(
                              radius: 11.h,
                              backgroundColor: Color(0xff002A5B),
                            ),
                            radius: 16.h,
                            lineWidth: 1,
                          ),
                          radius: 20.h,
                          lineWidth: 1,
                        ),
                        sizedBoxWidth(15.w),
                        Text(
                          'Documents Processed',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          '19/06/21',
                          style: TextStyle(
                            color: Color(0xff707070),
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 40.h,
                          height: 135.h,
                          child: VerticalDivider(
                            indent: 10.h,
                            endIndent: 10.h,
                            thickness: 2.w,
                            color: Color(0xff002A5B),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.w),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffCCCCCC)),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Text(
                            'Lorem Ipsum is simply dummy \ntext of the printing and \ntypesetting industry',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                    statusRow("Investment Ownership \ntransferred", ""),
                    sizedBoxHeight(20.h),
                    Divider(thickness: 2),
                    Text(
                      'Updates',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                    sizedBoxHeight(20.h),
                    Container(
                      padding: EdgeInsets.all(15.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffCCCCCC)),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '19/06/21 - 17:32',
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 12.sp,
                            ),
                          ),
                          sizedBoxHeight(10.h),
                          Text(
                            'Ownership Transfer Started',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w500),
                          ),
                          sizedBoxHeight(10.h),
                          Text(
                            'FreeU has contacted bank to transfer ownership of the investment from Person X to Person Y',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget statusRow(
    txt1,
    date,
  ) {
    return Row(
      children: [
        CircularPercentIndicator(
          center: CircleAvatar(
            child: Icon(
              Icons.done_outlined,
              size: 20.sp,
            ),
            radius: 16.h,
            backgroundColor: Colors.blue,
          ),
          radius: 20.h,
          lineWidth: 1,
        ),
        sizedBoxWidth(15.w),
        Text(
          txt1,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
        Spacer(),
        Text(
          date,
          style: TextStyle(
            color: Color(0xff707070),
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }
}
