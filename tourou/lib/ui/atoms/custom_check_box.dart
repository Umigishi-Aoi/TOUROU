// Flutter imports:
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final Color activeColor;
  final Color borderColor;
  final void Function(bool?) onChanged;

  const CustomCheckBox(
      {Key? key,
      required this.activeColor,
      required this.onChanged,
      required this.borderColor})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: widget.borderColor,
      ),
      child: Checkbox(
        activeColor: widget.activeColor,
        value: _isCheck,
        onChanged: (value) {
          setState(() {
            _isCheck = value!;
          });

          widget.onChanged(value);
        },
      ),
    );
  }
}
