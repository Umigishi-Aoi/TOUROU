// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_icon.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final void Function() function;
  final Color? buttonColor;

  final IconData? iconData;
  final double? iconSize;
  final Color? iconColor;

  const CustomFloatingActionButton(
      {Key? key,
      required this.function,
      this.buttonColor,
      this.iconData,
      this.iconSize,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: buttonColor ?? ColorName.fABBackgoround,
      onPressed: function,
      child: CustomIcon(
        iconData: iconData ?? Icons.add,
        size: iconSize ?? fabIconSize,
        color: iconColor ?? ColorName.textWhite,
      ),
    );
  }
}
