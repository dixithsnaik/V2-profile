import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v2_profile/globle/pallet.dart';

class StoreButton extends StatelessWidget {
  const StoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF000000).withOpacity(0.04),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(8, 8),
          ),
          const BoxShadow(
            color: whiteColor,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(-10, -10),
          ),
        ],
        borderRadius: BorderRadius.circular(120),
        border: Border.all(
          width: 2,
          color: primaryTextColor,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/Isolation_Mode.svg",
            height: 15.5,
          ),
          const SizedBox(width: 6),
          const Text(
            "Go Elite",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
