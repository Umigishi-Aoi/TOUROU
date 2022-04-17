// Flutter imports:
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.iconData,
    required this.size,
    required this.color,
  }) : super(key: key);

  final IconData iconData;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: color,
    );
  }
}
