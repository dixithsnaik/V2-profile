import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:v2_profile/globle/pallet.dart';

class BottomBarItems extends StatelessWidget {
  final bool isSelected;
  final String path;
  const BottomBarItems({
    super.key,
    required this.isSelected,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: whiteColor),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? primaryTextColor : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: SvgPicture.asset(
            path,
            height: 24,
            colorFilter: ColorFilter.mode(
              isSelected ? primaryColor : secondaryTextColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
