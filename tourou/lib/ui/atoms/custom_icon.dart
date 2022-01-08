// Flutter imports:
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color? color;

  const CustomIcon({
    Key? key,
    required this.iconData,
    required this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: color,
    );
  }
}
