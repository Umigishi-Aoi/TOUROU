// Flutter imports:
import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  const CustomImages({
    Key? key,
    required this.path,
    required this.height,
    this.width,
    this.fit,
    this.isCircle = false,
  }) : super(key: key);

  final String path;
  final double height;
  final double? width;
  final BoxFit? fit;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    if (isCircle == true) {
      return Container(
        height: height,
        width: height,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: fit ?? BoxFit.contain,
              image: AssetImage(path),
            )),
      );
    } else {
      return SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          path,
          fit: fit ?? BoxFit.cover,
        ),
      );
    }
  }
}
