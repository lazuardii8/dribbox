// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dirbbox/screen/home_screen.dart';
import 'package:dirbbox/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dirbbox/constrain.dart';
import 'package:dirbbox/utils/utils.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF1F3F6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50)),
                  child: Container(
                    width: Get.width / 2,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset("assets/images/Mask Group.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Neelesh",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Seattle,Washington",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff7B7F9E),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.close,
                      color: darkBlue,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Menus(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Menus extends StatelessWidget {
  const Menus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 27,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListMenu(
            menu: "Home",
            select: Get.arguments,
            page: HomeScreen(),
          ),
          ListMenu(
            menu: "Profile",
            select: Get.arguments,
            page: ProfileScreen(),
          ),
          ListMenu(
            menu: "Storage",
            select: Get.arguments,
            page: HomeScreen(),
          ),
          ListMenu(
            menu: "Shared",
            select: Get.arguments,
            page: HomeScreen(),
          ),
          ListMenu(
            menu: "Stats",
            select: Get.arguments,
            page: HomeScreen(),
          ),
          ListMenu(
            menu: "Settings",
            select: Get.arguments,
            page: HomeScreen(),
          ),
          ListMenu(
            menu: "Help",
            select: Get.arguments,
            page: HomeScreen(),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: black,
              ),
              label: Text(
                "Logout",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Version 2.0.1",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListMenu extends StatelessWidget {
  String select;
  String menu;
  dynamic page;
  ListMenu({
    Key? key,
    required this.select,
    required this.menu,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: InkWell(
        onTap: () => Get.to(page, arguments: menu.toLowerCase()),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 33,
              color: select.toLowerCase() == menu.toLowerCase()
                  ? Color(0xff567DF4)
                  : Color(0xffF1F3F6),
            ),
            SizedBox(
              width: 26,
            ),
            Text(
              menu.toCapitalized(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: select.toLowerCase() == menu.toLowerCase()
                    ? FontWeight.w600
                    : FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
