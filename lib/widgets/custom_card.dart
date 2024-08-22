import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v2_profile/globle/pallet.dart';

class CustomCard extends StatelessWidget {
  final Widget icon;
  final String lable;
  final String desc;
  const CustomCard({
    super.key,
    required this.icon,
    required this.lable,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16)
          .copyWith(left: 16, right: 25),
      margin: const EdgeInsets.only(right: 12),
      child: SizedBox(
        width: 118,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(width: 8),
                Text(
                  lable,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Text(
              desc,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: primaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
