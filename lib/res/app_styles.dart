import 'package:flutter/material.dart';
import 'package:musicplayerui/res/app_colors.dart';

@immutable
abstract class AppStyles {
  static List<BoxShadow> controlsShadow = [
    BoxShadow(
      color: AppColors.darkPrimaryColor.withOpacity(0.5),
      blurRadius: 10,
      spreadRadius: 3,
      offset: const Offset(5, 10),
    ),
    const BoxShadow(
      color: Colors.white,
      blurRadius: 20,
      spreadRadius: -2,
      offset: Offset(-3, -4),
    ),
  ];
}
