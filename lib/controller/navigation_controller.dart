import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v2_profile/bottom_bar.dart';

class NavigationController extends GetxController {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => BottomBar());
      default:
        return MaterialPageRoute(builder: (_) => BottomBar());
    }
  }
}
