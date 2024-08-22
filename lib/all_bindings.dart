import 'package:get/get.dart';
import 'package:v2_profile/controller/navigation_controller.dart';
import 'package:v2_profile/controller/profile_controller.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
