// Flutter imports:
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final bool isCircle;

  const CustomImage({
    Key? key,
    required this.path,
    this.height,
    this.width,
    this.fit,
    this.isCircle = false,
  }) : super(key: key);

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
