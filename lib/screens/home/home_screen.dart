import 'package:flutter/material.dart';
import 'package:musicplayerui/res/app_colors.dart';
import 'package:musicplayerui/screens/home/components/album_art.dart';
import 'package:musicplayerui/screens/home/components/custom_nav_bar.dart';
import 'package:musicplayerui/screens/home/components/music_slider.dart';
import 'package:musicplayerui/screens/home/components/player_controls.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomNavBar(),
          Container(
            margin: const EdgeInsets.only(left: 40),
            height: height / 2.5,
            child: ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const AlbumArt();
              },
            ),
          ),
          const Text(
            'Gidget',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: AppColors.darkPrimaryColor,
            ),
          ),
          const Text(
            'The Free Nationals',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.darkPrimaryColor,
            ),
          ),
          const MusicSlider(),
          const PlayerControls(),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
