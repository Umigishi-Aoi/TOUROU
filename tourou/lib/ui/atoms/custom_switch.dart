// Flutter imports:
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final Color? activeColor;
  final Color? inactiveColor;
  final void Function(bool?) onChanged;

  const CustomSwitch(
      {Key? key, this.activeColor, this.inactiveColor, required this.onChanged})
      : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isActive,
      activeColor: widget.activeColor,
      inactiveThumbColor: widget.inactiveColor,
      onChanged: (value) {
        setState(() {
          _isActive = value;
        });

        widget.onChanged(value);
      },
    );
  }
}
