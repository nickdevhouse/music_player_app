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

class Singer {
  String img = "";
  String name = "";
  String album = "";

  Singer(this.img, this.name, this.album);
}

class _HomePageState extends State<HomePage> {
  final List<Singer> popularSingers = [
    Singer("assets/rectangle_2.png", "Talyor", ""),
    Singer("assets/rectangle_3.png", "Cardi B", ""),
    Singer("assets/rectangle_4.png", "Lopez", ""),
    Singer("assets/rectangle_2.png", "Talyor", ""),
    Singer("assets/rectangle_3.png", "Cardi B", ""),
    Singer("assets/rectangle_4.png", "Lopez", ""),
  ];

  final List<Singer> newSingers = [
    Singer("assets/rectangle_5.png", "Annie", "Nice"),
    Singer("assets/rectangle_6.png", "Lenor", "Challenge"),
    Singer("assets/rectangle_7.png", "James", "Being With"),
  ];

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
                  height: 530,
                  child: TabBarView(
                    children: [
                      // >>> Recently
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
                      // >>>>Popular
                      Column(
                        children: [
                          const SizedBox(height: 10),
                          PopularTop(popularSingers: popularSingers),
                          PopularBottom(newSingers: newSingers),
                        ],
                      ),
                      const Text("tab2 body"),
                      const Text("tab4 body"),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 4, left: 20, right: 20, bottom: 20),
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

class PopularBottom extends StatelessWidget {
  final List<Singer> newSingers;

  const PopularBottom({
    super.key,
    required this.newSingers,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New",
            style: Style.smallFont.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 310,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: newSingers.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 88,
                                height: 88,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      newSingers[index].img,
                                    ),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(newSingers[index].name,
                                      style: Style.smallFont.copyWith(
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(height: 8),
                                  Text(newSingers[index].album,
                                      style: Style.smallFont.copyWith(
                                          color: Palette.lightGrey,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PopularTop extends StatelessWidget {
  const PopularTop({
    super.key,
    required this.popularSingers,
  });

  final List<Singer> popularSingers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 170,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: popularSingers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 12,
                bottom: 12,
              ),
              child: Column(
                children: [
                  Container(
                    width: 114,
                    height: 114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(
                          popularSingers[index].img,
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    popularSingers[index].name,
                    style: Style.smallFont.copyWith(
                      fontSize: 16,
                      color: Palette.darkGrey,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
