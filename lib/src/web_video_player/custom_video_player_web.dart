import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class CustomVideoPlayerWeb extends StatelessWidget {
  final CustomVideoPlayerWebController customVideoPlayerWebController;
  const CustomVideoPlayerWeb({
    super.key,
    required this.customVideoPlayerWebController,
  });

  @override
  Widget build(BuildContext context) {
    return ConditionalNativeWebVideoPlayer()
        .getVideoWidget(customVideoPlayerWebController);
  }
}
