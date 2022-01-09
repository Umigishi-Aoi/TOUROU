// Flutter imports:
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final Color? color;
  final void Function(bool?) onChanged;

  const CustomCheckBox({Key? key, this.color, required this.onChanged})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: widget.color,
      value: _isCheck,
      onChanged: (value) {
        setState(() {
          _isCheck = value!;
        });

        widget.onChanged(value);
      },
    );
  }
}
