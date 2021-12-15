// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:tourou/gen/assets.gen.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Image.asset(
        Assets.logo.logoA.path,
        fit: BoxFit.cover,
      ),
    );
  }
}
