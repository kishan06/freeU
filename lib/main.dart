import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu/login/login.dart';
import 'package:freeu/login/splash.dart';
import 'package:freeu/login/splashslider.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FreeU',
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => Splash()),
          GetPage(name: '/splashslider', page: () => Splashslider()),
          GetPage(name: '/login', page: () => Login()),
        ],
      ),
      designSize: Size(390, 844),
    );
  }
}
