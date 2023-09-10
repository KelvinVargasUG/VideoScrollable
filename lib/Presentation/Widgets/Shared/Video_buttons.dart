import 'package:flutter/material.dart';
import 'package:toktik/Config/Helpers/Human_formats.dart';
import 'package:toktik/Domain/Entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: video.likes,
            icon: Icons.favorite_sharp,
            iconColor: Colors.red),
        _CustomIconButton(value: video.views, icon: Icons.remove_red_eye_sharp)
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color? color;
  const _CustomIconButton({required this.value, required this.icon, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: color,
              size: 40.0,
            )),
        Text(HumanFormats.humanReadbleNumer(value.toDouble())),
      ],
    );
  }
}
