import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v2_profile/globle/pallet.dart';

class GetVerified extends StatelessWidget {
  const GetVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 18,
          ).copyWith(left: 16),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/confirm.svg"),
              const SizedBox(width: 8),
              Text(
                "Get Verified",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: primaryTextColor,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                "assets/images/arrow.gif",
                height: 20,
              ),
            ],
          ),
        ),
        Positioned(
          right: -8,
          top: -12,
          child: Opacity(
            opacity: 0.3,
            child: SvgPicture.asset(
              "assets/icons/confirm_blue.svg",
              height: 61,
            ),
          ),
        ),
      ],
    );
  }
}
