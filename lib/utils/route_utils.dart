import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppRouteUtils {
  static void _goNextPage(
      {@required String routeName, Object args, bool isReplace = false}) {
    if (args == null) {
      if (isReplace)
        Modular.to.pushReplacementNamed(routeName);
      else
        Modular.to.pushNamed(routeName);
    } else {
      if (isReplace)
        Modular.to.pushReplacementNamed(routeName, arguments: args);
      else
        Modular.to.pushNamed(routeName, arguments: args);
    }
  }

  static void goPageInHomeModule(
      {@required String routeName, Object args, bool isReplace = false}) {
    _goNextPage(
        routeName: '${AppRoutes.root}$routeName',
        args: args,
        isReplace: isReplace);
  }

  static void goPageInAboutModule(
      {@required String routeName, Object args, bool isReplace = false}) {
    _goNextPage(
        routeName: '${AppRoutes.about}$routeName',
        args: args,
        isReplace: isReplace);
  }
}
