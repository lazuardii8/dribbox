import 'package:dirbbox/constrain.dart';
import 'package:dirbbox/widget/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> folders = [
      {
        "color": Color(0xff415EB6),
        "bg": Color(0xffEEF7FE),
      },
      {
        "color": Color(0xffFFB110),
        "bg": Color(0xffFFFBEC),
      },
      {
        "color": Color(0xffF45656),
        "bg": Color(0xffFEEEEE),
      },
      {
        "color": Color(0xff34DEDE),
        "bg": Color(0xffF0FFFF),
      },
      {
        "color": Color(0xff415EB6),
        "bg": Color(0xffEEF7FE),
      },
      {
        "color": Color(0xffFFB110),
        "bg": Color(0xffFFFBEC),
      },
      {
        "color": Color(0xffF45656),
        "bg": Color(0xffFEEEEE),
      },
      {
        "color": Color(0xff34DEDE),
        "bg": Color(0xffF0FFFF),
      },
      {
        "color": Color(0xff415EB6),
        "bg": Color(0xffEEF7FE),
      },
      {
        "color": Color(0xffFFB110),
        "bg": Color(0xffFFFBEC),
      },
      {
        "color": Color(0xffF45656),
        "bg": Color(0xffFEEEEE),
      },
      {
        "color": Color(0xff34DEDE),
        "bg": Color(0xffF0FFFF),
      },
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Your Dribbbox",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: darkBlue,
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(MenuWidget(), arguments: "home"),
                  child: SvgPicture.asset("assets/svgs/Union.svg"),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: darkBlue,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 16,
        ),
      ),
      body: Container(
        color: Colors.white,
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                filled: false,
                hintText: "Search Folder...",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: darkBlue,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: darkBlue,
                ),
                contentPadding: const EdgeInsets.all(18),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffEEF2FE),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffEEF2FE),
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Recent",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/svgs/Vector.svg")
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/svgs/sadsaf.svg"),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset("assets/svgs/Group 127.svg")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: folders.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: folders[index]['bg'],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset("assets/svgs/Folder.svg",
                                    color: folders[index]['color']),
                                SvgPicture.asset("assets/svgs/More Option.svg",
                                    color: folders[index]['color']),
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              "Mobile Apps",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: folders[index]['color'],
                              ),
                            ),
                            Text(
                              "December 20.2020",
                              style: TextStyle(
                                fontSize: 10,
                                color: folders[index]['color'],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
