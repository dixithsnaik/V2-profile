import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v2_profile/globle/pallet.dart';
import 'package:v2_profile/widgets/custom_button.dart';
import 'package:v2_profile/widgets/custom_card.dart';
import 'package:v2_profile/widgets/interests_button.dart';
import 'package:v2_profile/widgets/post_widget.dart';
import 'package:v2_profile/widgets/store_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 30),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 119,
                          width: 119,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(360)),
                          child: const Center(
                            child: Text(
                              "MS",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          child: CustomButton(),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const StoreButton(),
                        const SizedBox(width: 12),
                        SvgPicture.asset("assets/icons/edit.svg", height: 24),
                        const SizedBox(width: 12),
                        SvgPicture.asset("assets/icons/settings.svg",
                            height: 24),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  children: [
                    Text(
                      "Mohit Sharma",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryTextColor,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "@mohit_sharma",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        color: secondaryTextColor,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Exploring new ideas and sharing insights. Always curious.",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: primaryTextColor,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "IIT Bombay · B.Sc. (Chem) · 2nd Year",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCard(
                      icon:
                          SvgPicture.asset("assets/icons/star.svg", height: 20),
                      lable: "Contrib Points",
                      desc: "2.2K",
                    ),
                    CustomCard(
                      icon: SvgPicture.asset("assets/icons/group.svg",
                          height: 20),
                      lable: "My Squad ",
                      desc: "103",
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12)
                      .copyWith(left: 16, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/menu.svg",
                                  height: 20),
                              const SizedBox(width: 8),
                              const Text(
                                "Interests",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: primaryTextColor,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "3",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: primaryTextColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        children: [
                          InterestsButton(
                            lable: "#fintech",
                            color: interestsColorpink,
                          ),
                          SizedBox(width: 6),
                          InterestsButton(
                            lable: "#Gaming",
                            color: interestsColorGreen,
                          ),
                          SizedBox(width: 6),
                          InterestsButton(
                            lable: "#Crypto",
                            color: interestsColorblue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Community posts",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColor,
                      ),
                    ),
                    Text(
                      "24",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const PostWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
