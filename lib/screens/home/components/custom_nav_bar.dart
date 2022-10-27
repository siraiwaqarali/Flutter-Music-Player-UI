import 'package:flutter/material.dart';
import 'package:musicplayerui/res/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          NavBarItem(icon: Icons.arrow_back_ios),
          Text(
            'Playing Now',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.darkPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          NavBarItem(icon: Icons.list),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  const NavBarItem({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
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
        ],
      ),
      child: Padding(
        padding: icon == Icons.arrow_back_ios
            ? const EdgeInsets.only(left: 8)
            : const EdgeInsets.all(0),
        child: Icon(
          icon,
          color: AppColors.darkPrimaryColor,
        ),
      ),
    );
  }
}
