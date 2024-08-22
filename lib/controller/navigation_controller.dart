import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v2_profile/pages/profile_page.dart';

class NavigationController extends GetxController {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
    }
  }
}
