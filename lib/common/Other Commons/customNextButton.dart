import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/Utils/colors.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/viewModel/Investnow/PostInvestnow.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    Key? key,
    GlobalKey<FormState>? form,
    this.ontap,
    required this.text,
    this.colorchange = false,
    this.productid,
  }) : super(key: key);

  final bool colorchange;
  final GestureTapCallback? ontap;
  final String text;
  final String? productid;

    void UploadData() async {
      Map<String, dynamic> updata = {
        "product_id": productid.toString()
      };
      final data =
          await Investnow().postInvestnow(updata);
          print("updata is $updata");
      if (data.status == ResponseStatus.SUCCESS) {
        print(productid);
      }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shadowColor: Color.fromARGB(255, 220, 220, 226),

          backgroundColor: AppColors.blue143C6D,

          //  color: Color(0xFFFFB600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
        ),
        onPressed: () {
          ontap!();
          // productid;
          UploadData();
        },
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
