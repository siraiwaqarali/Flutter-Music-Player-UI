import 'package:flutter/material.dart';
import 'package:musicplayerui/providers/audio_provider.dart';
import 'package:musicplayerui/res/app_colors.dart';
import 'package:provider/provider.dart';

class MusicSlider extends StatelessWidget {
  const MusicSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        trackHeight: 5,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
      ),
      child: Consumer<AudioProvider>(
        builder: (context, audioProvider, child) {
          return Slider(
            value: audioProvider.position == null
                ? 0
                : audioProvider.position!.inMilliseconds.toDouble(),
            activeColor: AppColors.darkPrimaryColor,
            inactiveColor: AppColors.darkPrimaryColor.withOpacity(0.3),
            min: 0,
            max: audioProvider.totalDuration == null
                ? 20
                : audioProvider.totalDuration!.inMilliseconds.toDouble(),
            onChanged: (value) {
              audioProvider.seekAudio(Duration(milliseconds: value.toInt()));
            },
          );
        },
      ),
    );
  }
}
