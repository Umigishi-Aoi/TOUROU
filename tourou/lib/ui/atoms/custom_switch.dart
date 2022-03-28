// Flutter imports:
import 'package:flutter/cupertino.dart';

class CustomSwitch extends StatefulWidget {
  final Color activeColor;
  final Color thumbColor;
  final Color trackColor;
  final void Function(bool?) onChanged;

  const CustomSwitch({
    Key? key,
    required this.activeColor,
    required this.thumbColor,
    required this.trackColor,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _isActive,
      activeColor: widget.activeColor,
      thumbColor: widget.thumbColor,
      trackColor: widget.trackColor,
      onChanged: (value) {
        setState(() {
          _isActive = value;
        });

        widget.onChanged(value);
      },
    );
  }
}
