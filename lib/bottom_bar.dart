import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v2_profile/controller/bottom_bar_controller.dart';
import 'package:v2_profile/pages/chat_page.dart';
import 'package:v2_profile/pages/community_page.dart';
import 'package:v2_profile/pages/feeds_page.dart';
import 'package:v2_profile/pages/home_page.dart';
import 'package:v2_profile/pages/profile_page.dart';
import 'package:v2_profile/widgets/bottom_bar_items.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});
  final List tabs = [
    const HomePage(),
    const CommunityPage(),
    const ChatPage(),
    const FeedsPage(),
    const ProfilePage()
  ];
  final bottomBarController = Get.find<BottomBarController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() => tabs[bottomBarController.bottomBarIndex.value]),
        Positioned(
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => GestureDetector(
                  onTap: () {
                    bottomBarController.bottomBarIndex.value = 0;
                  },
                  child: BottomBarItems(
                    isSelected: bottomBarController.bottomBarIndex.value == 0
                        ? true
                        : false,
                    path: "assets/icons/home.svg",
                  ),
                ),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    bottomBarController.bottomBarIndex.value = 1;
                  },
                  child: BottomBarItems(
                    isSelected: bottomBarController.bottomBarIndex.value == 1
                        ? true
                        : false,
                    path: "assets/icons/community.svg",
                  ),
                ),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    bottomBarController.bottomBarIndex.value = 2;
                  },
                  child: BottomBarItems(
                    isSelected: bottomBarController.bottomBarIndex.value == 2
                        ? true
                        : false,
                    path: "assets/icons/chat.svg",
                  ),
                ),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    bottomBarController.bottomBarIndex.value = 3;
                  },
                  child: BottomBarItems(
                    isSelected: bottomBarController.bottomBarIndex.value == 3
                        ? true
                        : false,
                    path: "assets/icons/feed.svg",
                  ),
                ),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    bottomBarController.bottomBarIndex.value = 4;
                  },
                  child: BottomBarItems(
                    isSelected: bottomBarController.bottomBarIndex.value == 4
                        ? true
                        : false,
                    path: "assets/icons/profile.svg",
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
