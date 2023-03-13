import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/config/palette.dart';
import 'package:music_app/custom_icons_icons.dart';

import '../config/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        title: CupertinoSearchTextField(
          borderRadius: BorderRadius.circular(30),
          prefixInsets: const EdgeInsets.only(right: 8, left: 16),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Image(
              image: AssetImage("assets/avatar.png"),
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: Style.mediumFont
                              .copyWith(color: Palette.lightGrey),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Sophia!",
                          style: Style.mediumFont
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Palette.lightGrey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.tune_outlined,
                            color: Palette.lightGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const TabBar(
                labelColor: Palette.primary,
                unselectedLabelColor: Palette.dark,
                indicatorColor: Palette.primary,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 35),
                tabs: [
                  Tab(text: "Recently"),
                  Tab(text: "Popular"),
                  Tab(text: "Favourit"),
                  Tab(text: "Top 10"),
                ],
              ),
              SizedBox(
                  height: 500,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 50),
                          Container(
                            width: 308,
                            height: 348,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                image: AssetImage("assets/rectangle_1.png"),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Bad guy",
                            style: Style.mediumFont
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Billie eilish",
                            style: Style.mediumFont
                                .copyWith(color: Palette.lightGrey),
                          ),
                        ],
                      ),
                      const Text("tab2 body"),
                      const Text("tab3 body"),
                      const Text("tab4 body"),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Palette.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(CustomIcons.search_icon, color: Colors.white, size: 37),
                Icon(CustomIcons.disc_icon, color: Colors.white, size: 37),
                Icon(CustomIcons.head_phone_icon,
                    color: Colors.white, size: 37),
                Icon(CustomIcons.music_icon, color: Colors.white, size: 37),
                Icon(CustomIcons.heart_icon, color: Colors.white, size: 37),
              ],
            )),
      ),
    );
  }
}
