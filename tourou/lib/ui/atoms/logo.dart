// Flutter imports:
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Image.asset(
        'assets/logo/logo_a.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
