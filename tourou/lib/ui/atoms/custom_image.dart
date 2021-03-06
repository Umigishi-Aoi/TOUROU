// Flutter imports:
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.path,
    required this.height,
    this.width,
    required this.fit,
    this.isCircle,
  }) : super(key: key);

  final String path;
  final double height;
  final double? width;
  final BoxFit fit;
  final bool? isCircle;

  @override
  Widget build(BuildContext context) {
    if (isCircle == true) {
      return Container(
        height: height,
        width: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: fit,
            image: AssetImage(path),
          ),
        ),
      );
    } else {
      return SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          path,
          fit: fit,
        ),
      );
    }
  }
}
