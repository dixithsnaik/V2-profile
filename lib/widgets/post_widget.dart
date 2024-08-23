import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v2_profile/globle/pallet.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Priya Dutta",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "2h ago",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "PixelWarriors",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              color: secondaryColor,
                            ),
                            child: Center(
                                child: Text(
                              "🐝 Buzz",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: primaryTextColor,
                                ),
                              ),
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SvgPicture.asset("assets/icons/more.svg"),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            child: Text(
              "[Supercellmake] Era of Heroes and villains !!",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: primaryTextColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/post_image.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/comment.svg",
                          height: 18,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "32",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: primaryTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/up.svg",
                          height: 18,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "2.5k",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: primaryTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        SvgPicture.asset(
                          "assets/icons/down.svg",
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/share.svg",
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/save.svg",
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
