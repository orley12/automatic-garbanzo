import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final double? size;
  final Color? color;
  final String? image;
  final double radius;
  final IconData? icon;
  final Color? backgroundColor;

  const CircularImage({
    super.key,
    this.icon,
    this.image,
    this.color,
    this.backgroundColor,
    required this.radius,
    this.size = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      foregroundImage: _image,
      backgroundColor: backgroundColor,
      child: _child,
    );
  }

  ImageProvider? get _image {
    if (image != null) {
      return AssetImage(
        image!,
      );
    } else {
      return null;
    }
  }

  Widget get _child {
    if (icon != null) {
      return Icon(
        icon,
        size: size,
        color: color,
      );
    } else {
      return const SizedBox();
    }
  }
}
