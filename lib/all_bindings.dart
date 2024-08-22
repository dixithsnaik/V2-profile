import 'package:get/get.dart';
import 'package:v2_profile/controller/navigation_controller.dart';
import 'package:v2_profile/controller/bottom_bar_controller.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(() => BottomBarController());
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
