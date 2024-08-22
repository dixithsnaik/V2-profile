import 'package:flutter/material.dart';
import 'package:v2_profile/globle/pallet.dart';

class InterestsButton extends StatelessWidget {
  final String lable;
  final Color color;
  const InterestsButton({
    super.key,
    required this.color,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(127),
        color: color,
      ),
      child: Text(
        lable,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: primaryTextColor,
        ),
      ),
    );
  }
}
