import 'package:dirbbox/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dirbbox/constrain.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: Get.width,
            child: Image.asset(
              "assets/images/Vector 6.png",
              fit: BoxFit.cover,
              width: Get.width,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 90,
              bottom: 28,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/orna.png",
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "Dirbbox",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Best cloud storage platform for all \nbusiness and individuals to \nmanage there data",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: gray,
                    height: 154 / 100,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Join For Free.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: gray,
                    height: 154 / 100,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(((Get.width - 80) / 2), 50),
                          elevation: 0,
                          backgroundColor:
                              const Color(0xff567DF4).withOpacity(10 / 100),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 24,
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/Group.svg"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Smart Id",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(((Get.width - 80) / 2), 50),
                          elevation: 0,
                          backgroundColor: blue,
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 24,
                          ),
                        ),
                        onPressed: () => Get.off(const HomeScreen()),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset("assets/svgs/Vector 1.svg"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 54,
                ),
                const Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(fontSize: 12, color: black),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: SvgPicture.asset("assets/svgs/Instagram Logo.svg"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: SvgPicture.asset("assets/svgs/Twitter Logo.svg"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: SvgPicture.asset("assets/svgs/Facebook Logo.svg"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 16,
                        color: black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
