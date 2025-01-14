import 'package:appinio_video_player/src/custom_video_player_controller.dart';
import 'package:appinio_video_player/src/embedded_video_player.dart';
import 'package:flutter/material.dart';

class FullscreenVideoPlayer extends StatelessWidget {
  final CustomVideoPlayerController customVideoPlayerController;

  const FullscreenVideoPlayer({
    Key? key,
    required this.customVideoPlayerController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        customVideoPlayerController.setFullscreen(false);
      },
      // onWillPop: () async {
      //   customVideoPlayerController.setFullscreen(false);
      //   return false;
      // },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: EmbeddedVideoPlayer(
            customVideoPlayerController: customVideoPlayerController,
            isFullscreen: true,
          ),
        ),
      ),
    );
  }
}
