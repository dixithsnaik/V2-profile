import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:v2_profile/globle/pallet.dart';

class CustomButton extends StatelessWidget {
  
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(360),
      ),
      child: Center(
          child: SvgPicture.asset(
        "assets/icons/camera.svg",
        height: 18,
      )),
    );
  }
}
