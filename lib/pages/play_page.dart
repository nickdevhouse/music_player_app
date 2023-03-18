import 'package:flutter/material.dart';
import 'package:music_app/config/palette.dart';

import '../config/style.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
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
      body: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.format_align_left),
              Icon(Icons.swap_horiz),
              Icon(Icons.favorite_border),
              Icon(Icons.volume_down_outlined),
            ],
          ),
          const SizedBox(height: 90),
          Container(
            width: 231,
            height: 231,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              image: const DecorationImage(
                image: AssetImage("assets/album_cover.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Lovely",
            style: Style.mediumFont.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Bille ellish",
            style: Style.smallFont.copyWith(
              fontSize: 14,
              color: Palette.lightGrey,
            ),
          ),
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.skip_previous, color: Palette.darkGrey, size: 40.8),
              SizedBox(width: 30),
              Icon(Icons.pause_circle, color: Palette.primary, size: 74),
              SizedBox(width: 30),
              Icon(Icons.skip_next, color: Palette.darkGrey, size: 40.8),
            ],
          ),
          const SizedBox(height: 32),
          const Image(
            image: AssetImage("assets/waveform.png"),
          ),
        ],
      ),
    );
  }
}
