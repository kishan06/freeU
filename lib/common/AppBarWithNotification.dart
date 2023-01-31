import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAppBarWithNotification extends StatelessWidget
    with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  CustomAppBarWithNotification({
    Key? key,
    required this.titleTxt,
    this.key2,
    this.bottomtext,
    this.actions = false,
    this.customProfileNavigation = false,
    this.navigateToTaxPlanning = false,
    this.showLeading = true,
  }) : super(key: key);

  final String titleTxt;
  GlobalKey<ScaffoldState>? key2;
  final bool? bottomtext;
  final bool? actions;
  final bool? customProfileNavigation;
  final bool? showLeading;
  final bool navigateToTaxPlanning;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key2,
      flexibleSpace: Container(
        height: 50.h,
        decoration: const BoxDecoration(),
      ),
      bottom: bottomtext!
          ? PreferredSize(
              child: Text(
                "Steps to check for Clients other than Resident Individual",
                textAlign: TextAlign.center,
                style:
                    //Theme.of(context).textTheme.headline5,
                    TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        decorationColor: Colors.black,
                        fontSize: 12),
                // selectionColor: Colors.black
              ),
              preferredSize: Size.zero)
          : null,
      actions: actions!
          ? [
              IconButton(
                onPressed: () {
                  Get.toNamed('/notificationpage');
                },
                icon: SvgPicture.asset(
                  'assets/images/notification-bell-svgrepo-com.svg',
                ),
                iconSize: 22,
                color: const Color(0xFF303030),
              ),
            ]
          : null,
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,

      titleSpacing: 0,
      // centerTitle: true,
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          titleTxt,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sm,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
      leading: Row(
        children: [
          IconButton(
            onPressed: () {
              key2!.currentState!.openDrawer();
            },
            icon: SvgPicture.asset("assets/images/menu.svg"),
            color: Colors.black,
            iconSize: 25,
          ),
        ],
      ),
    );
  }
}
