import 'package:flutter/material.dart';
import 'package:musicplayerui/res/app_colors.dart';
import 'package:musicplayerui/res/images.dart';

class AlbumArt extends StatelessWidget {
  const AlbumArt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppColors.darkPrimaryColor,
            blurRadius: 25,
            spreadRadius: 3,
            offset: Offset(20, 8),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            spreadRadius: -2,
            offset: Offset(-3, -4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          Images.album,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
