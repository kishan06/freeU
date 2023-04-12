import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:get/get.dart';

class OpenContainerWrappers extends StatelessWidget {
  const OpenContainerWrappers({
    Key? key,
    required this.closeBuild,
    required this.openBuild,
  }) : super(key: key);

  final Widget closeBuild;
  final dynamic openBuild;

  @override
  Widget build(BuildContext context) {
    final brightness = Get.theme.brightness;
    return OpenContainer<bool>(
      closedElevation: 0,
      openElevation: 0,
      closedColor:
          (brightness == Brightness.light) ? Colors.transparent : Colors.black,
      openColor: (brightness == Brightness.light) ? Colors.white : Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      middleColor:
          (brightness == Brightness.light) ? Colors.white : Colors.black,
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      openBuilder: (BuildContext _, VoidCallback openContainer) {
        return openBuild;
      },
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return closeBuild;
      },
      transitionType: ContainerTransitionType.fade,
    );
  }
}
