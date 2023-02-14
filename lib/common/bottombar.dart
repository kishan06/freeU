import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/GlobalFuntionsVariables.dart';
import 'package:freeu/common/ResumableState.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../main.dart';

class CreateBottomBar extends StatefulWidget {
  StreamController<bool> stateBottomNav;
  String fromScreen = "";
  BuildContext mainContext;

  CreateBottomBar(this.stateBottomNav, this.fromScreen, this.mainContext);

  @override
  State<StatefulWidget> createState() {
    return _CustomBottomBarState();
  }
}

class _CustomBottomBarState extends ResumableState<CreateBottomBar> {
  final GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  GlobalKey connectivitykey = new GlobalKey(debugLabel: 'internet_key');
  var selectedIndex_bottom = 0;
  StreamController _sessionController = StreamController.broadcast();
  String fromScreen = "";
  @override
  void initState() {
    fromScreen = widget.fromScreen;
    super.initState();
  }

  @override
  void onPause() {
    connectivitykey.currentState?.deactivate();
  }

  @override
  void onResume() {
    connectivitykey.currentState?.activate();
  }

  @override
  void onReady() {
    _scaffoldKey.currentState?.deactivate();
  }

  @override
  void dispose() {
    _sessionController.close();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        key: globalKey,
        elevation: 5,
        backgroundColor: Theme.of(context).bottomAppBarColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomIndex,
        unselectedLabelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w300),
        selectedLabelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w300),
        items: getBottomBarList(),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey,
        onTap: onTabTapped);
  }

  void onTabTapped(int index) {
    _goTo(index);
  }

  getBottomBarList() {
    List<BottomNavigationBarItem> bottomItemsList = [];
    List<SvgPicture> bottomiconslist = [];
    var bottomItem;
    var text;
    for (int i = 0; i < bottomList.length; i++) {
      var iconname = bottomList[i];
      for (int j = 0; j < imagelist.length; j++) {
        text = imagelist[j];
        bottomiconslist.add(text);
      }
      bottomItem = BottomNavigationBarItem(
          icon: bottomNavigationIcon(bottomiconslist.elementAt(i)),
          activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFEEBBD),
              ),
              height: 20,
              width: 50,
              child: bottomiconslist.elementAt(i)), //colorCode.primaryColor),
          label: iconname);
      bottomItemsList.add(bottomItem);
    }
    return bottomItemsList;
  }

  static bottomNavigationIcon(image) {
    return image;
  }

  _goTo(int index) async {
    var name = bottomList[index].toString().toLowerCase();
    if (isFromScreen()) {
      switch (name) {
        case 'home':
          {
            if (fromScreen == "BottombarHomepage") {
              return;
            }
            Get.toNamed("/homepage");
            bottomIndex = index;
          }
          break;
        case 'categories':
          {
            if (fromScreen == "Bottombarcategoies") {
              return;
            }
            Get.toNamed('/categoriesmain');
            bottomIndex = index;
          }
          break;

        case 'investments':
          {
            if (fromScreen == "Bottombarinvestment") {
              return;
            }
            Get.toNamed('/investmentmain');
            bottomIndex = index;
          }
          break;
        case 'chat':
          {
            if (fromScreen == "Bottombarchat") {
              return;
            }
            Get.toNamed('/chatpage');
            bottomIndex = index;
          }
          break;
        case 'profile':
          {
            if (fromScreen == "Bottombarprofile") {
              return;
            }
            Get.toNamed('/myprofile');
            bottomIndex = index;
          }
          break;
        default:
          {
            throw Error();
          }
      }
    }
  }

  bool isFromScreen() {
    return fromScreen != null && fromScreen != "";
  }
}
