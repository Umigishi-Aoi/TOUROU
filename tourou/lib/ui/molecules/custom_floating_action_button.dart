// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_icon.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final void Function() function;
  final Color? buttonColor;

  final double iconSize;
  final Color? iconColor;

  const CustomFloatingActionButton(
      {Key? key,
      required this.function,
      this.buttonColor,
      required this.iconSize,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: buttonColor,
      onPressed: function,
      child: CustomIcon(
        iconData: Icons.add,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
