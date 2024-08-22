import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shimmer/shimmer.dart';
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
            blurRadius: 8,
            offset: Offset(-8, -8),
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          tileMode: TileMode.decal,
          colors: [
            Color(0XFFF6D1FF),
            Color(0XFFFFD3E5),
            Color(0XFFFFF3F3),
            Color(0x0fffffff),
          ],
        ),
        borderRadius: BorderRadius.circular(120),
        border: const GradientBoxBorder(
          width: 2,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            tileMode: TileMode.decal,
            colors: [
              Color(0XFF904EC4),
              Color(0XFFC695D4),
              Color(0XFFFFEFE4),
            ],
          ),
        ),
      ),
      child: Shimmer.fromColors(
        direction: ShimmerDirection.rtl,
        baseColor: const Color(0XFF904EC4),
        highlightColor: const Color(0XFFFFEFE4),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/Isolation_Mode.svg",
              height: 15.5,
            ),
            const SizedBox(width: 6),
            Text(
              "Go Elite",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: primaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
