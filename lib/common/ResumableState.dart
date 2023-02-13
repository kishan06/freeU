import 'package:flutter/material.dart';

class Resume {
  dynamic data;
  late String source;
}

abstract class ResumableState<T extends StatefulWidget> extends State<T>
    with WidgetsBindingObserver {
  Resume resume = new Resume();
  bool _isPaused = false;

  /// Implement your code here
  void onResume() {
    // TODO: Implement your code here
  }

  /// Implement your code here
  void onReady() {
    // TODO: Implement your code here
  }

  /// Implement your code here
  void onPause() {
    // TODO: Implement your code here
  }

  /// This method is replacement of Navigator.push(), but fires onResume() after route popped
  Future<T> push<T extends Object>(BuildContext context, Route<T> route,
      [String? source]) {
    _isPaused = true;
    onPause();

    return Navigator.of(context).push(route).then((value) {
      _isPaused = false;

      resume.data = value;
      resume.source = source!;

      onResume();
      return value!;
    });
  }

  /// This method is replacement of Navigator.pushNamed(), but fires onResume() after route popped
  Future<T> pushNamed<T extends Object>(BuildContext context, String routeName,
      {Object? arguments}) {
    _isPaused = true;
    onPause();

    return pushNamedIfNotCurrent(context, routeName, arguments: arguments!);
  }

  pushNamedIfNotCurrent(BuildContext context, String routeName,
      {Object? arguments}) {
    if (!isCurrent(routeName)) {
      Navigator.of(context)
          .pushNamed(routeName, arguments: arguments)
          .then((value) {
        _isPaused = false;
        resume.data = value;
        //resume.source = source;
        onResume();
        return value;
      });
    }
  }

  bool isCurrent(String routeName) {
    bool isCurrent = false;
    Navigator.of(context).popUntil((route) {
      if (route.settings.name == routeName) {
        isCurrent = true;
      }
      return true;
    });
    return isCurrent;
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      if (!_isPaused) {
        onPause();
      }
    } else if (state == AppLifecycleState.resumed) {
      if (!_isPaused) {
        onResume();
      }
    }
  }
}
