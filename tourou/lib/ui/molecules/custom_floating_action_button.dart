// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_icon.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Color fabColor;
  final void Function() fabFunction;

  final Color iconColor;
  final double iconSize;

  const CustomFloatingActionButton(
      {Key? key,
      required this.fabColor,
      required this.fabFunction,
      required this.iconColor,
      required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: fabColor,
      onPressed: fabFunction,
      child: CustomIcon(
        iconData: Icons.add,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
