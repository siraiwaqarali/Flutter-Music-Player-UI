import 'package:flutter/material.dart';
import 'package:musicplayerui/providers/audio_provider.dart';
import 'package:musicplayerui/res/app_colors.dart';
import 'package:musicplayerui/res/app_styles.dart';
import 'package:provider/provider.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Controls(icon: Icons.repeat),
        Controls(icon: Icons.skip_previous),
        PlayControl(),
        Controls(icon: Icons.skip_next),
        Controls(icon: Icons.shuffle),
      ],
    );
  }
}

class Controls extends StatelessWidget {
  final IconData icon;
  const Controls({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
        boxShadow: AppStyles.controlsShadow,
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                boxShadow: AppStyles.controlsShadow,
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 30,
                  color: AppColors.darkPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget {
  const PlayControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AudioProvider>(
      builder: (context, audioProvider, child) {
        return GestureDetector(
          onTap: () => audioProvider.audioState == 'Playing'
              ? audioProvider.pauseAudio()
              : audioProvider.playAudio(),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
              boxShadow: AppStyles.controlsShadow,
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: AppColors.darkPrimaryColor,
                      shape: BoxShape.circle,
                      boxShadow: AppStyles.controlsShadow,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        audioProvider.audioState == 'Playing'
                            ? Icons.pause
                            : Icons.play_arrow,
                        size: 50,
                        color: AppColors.darkPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
