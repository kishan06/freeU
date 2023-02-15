import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

StreamController<bool> stateBottomNav = StreamController.broadcast();

List bottomList = [
  "Home",
  "Categories",
  "Investments",
  "Chat",
  "Profile",
];

List<SvgPicture> imagelistselected = [
  SvgPicture.asset(
    'assets/images/home-svgrepo-com (1).svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/category-alt-svgrepo-com (1).svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/Group 51109.svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/chat-left-3-svgrepo-com (2) (1).svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/Path 30132.svg',
    height: 20,
  ),
];

List<SvgPicture> imagelist = [
  SvgPicture.asset(
    'assets/images/home-svgrepo-com.svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/category-alt-svgrepo-com.svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/money-dollar-coin-svgrepo-com.svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/chat-left-3-svgrepo-com (2).svg',
    height: 20,
  ),
  SvgPicture.asset(
    'assets/images/profile.svg',
    height: 20,
  ),
];
