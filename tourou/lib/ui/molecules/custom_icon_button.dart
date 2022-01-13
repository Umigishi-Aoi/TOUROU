// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_icon.dart';

class CustomIconButton extends StatelessWidget {
  final void Function() function;

  final IconData iconData;
  final double size;
  final Color color;

  const CustomIconButton(
      {Key? key,
      required this.function,
      required this.iconData,
      required this.size,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: function,
      icon: CustomIcon(
        iconData: iconData,
        size: size,
        color: color,
      ),
    );
  }
}
