import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/common/Other%20Commons/signupAppbar.dart';

class PreviouslyInvestedProducts extends StatefulWidget {
  const PreviouslyInvestedProducts({super.key});

  @override
  State<PreviouslyInvestedProducts> createState() =>
      _PreviouslyInvestedProductsState();
}

class _PreviouslyInvestedProductsState
    extends State<PreviouslyInvestedProducts> {
  int selectIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
                  "Investment Bought",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: Text(
                            "Product",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            "P & L",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Action",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    common_crd_green(),
                    SizedBox(
                      height: 10,
                    ),
                    common_crd_red(),
                    SizedBox(
                      height: 10,
                    ),
                    common_crd_green(),
                    SizedBox(
                      height: 10,
                    ),
                    common_crd_red(),
                    SizedBox(
                      height: 10,
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
}

class common_crd_green extends StatelessWidget {
  const common_crd_green({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Color(0xffECECEC).withOpacity(1), width: 1),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x48B9B9BE),
            blurRadius: 20.0,
            spreadRadius: 0,
            // offset: Offset(-20, -20,),
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/images/investmentmyre (2).svg"),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 4,
                  child: Text(
                    "Vaishnavi\nTech Park",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80, bottom: 18),
                  child: SvgPicture.asset("assets/images/Investmentnumber.svg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 18),
                  child:
                      SvgPicture.asset("assets/images/downloadinvestment.svg"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}

class common_crd_red extends StatelessWidget {
  const common_crd_red({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Color(0xffECECEC).withOpacity(1), width: 1),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x48B9B9BE),
            blurRadius: 20.0,
            spreadRadius: 0,
            // offset: Offset(-20, -20,),
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/hdfcinvestment (6).png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HDFC AMC\nSelect AIF FOF-1",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 18.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 56, bottom: 18),
                  child:
                      SvgPicture.asset("assets/images/Investmentdecrement.svg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17, bottom: 18),
                  child:
                      SvgPicture.asset("assets/images/downloadinvestment.svg"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
