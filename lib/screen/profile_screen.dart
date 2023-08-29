import 'package:dirbbox/constrain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.chevron_left,
            color: darkBlue,
          ),
        ),
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 16,
            color: darkBlue,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: darkBlue,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CardProfile(),
              SizedBox(
                height: 35,
              ),
              MyFolder(folders: folders),
               SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Uploads",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SvgPicture.asset("assets/svgs/Sort.svg"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyFolder extends StatelessWidget {
  const MyFolder({
    super.key,
    required this.folders,
  });

  final List<Map<String, dynamic>> folders;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Folders",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: darkBlue,
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset("assets/svgs/Settings.svg"),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.chevron_right,
                  color: darkBlue,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
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
      ],
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.0,
            blurRadius: 160,
            offset: Offset(0.0, 4.0),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 60,
                height: 24,
                color: Color(0xffFF317B),
                child: Center(
                  child: Text(
                    "PRO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 35,
                  minRadius: 35,
                  backgroundColor: Color(0xffEEF7FE),
                  child: Image.asset(
                    "assets/images/Mask Group.png",
                    fit: BoxFit.cover,
                    height: 35,
                    width: 35,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Neelesh Chaudhary",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: darkBlue,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "UI / UX Designer",
                  style: TextStyle(
                    fontSize: 12,
                    color: darkBlue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: darkBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
