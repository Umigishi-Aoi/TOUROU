// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/atoms/custom_images.dart';

class ImageButton extends StatefulWidget {
  const ImageButton({
    Key? key,
    required this.firstImagePath,
    required this.height,
    required this.function,
    this.secondImagePath,
    this.width,
    this.fit,
    this.isCircle = false,
  }) : super(key: key);

  final String firstImagePath;
  final double height;
  final Function function;

  final String? secondImagePath;
  final double? width;
  final BoxFit? fit;
  final bool isCircle;

  @override
  _ImageButtonState createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  bool _flag = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_flag == false || widget.secondImagePath == null)
          GestureDetector(
            child: CustomImages(
              path: widget.firstImagePath,
              height: widget.height,
              width: widget.width,
              fit: widget.fit,
              isCircle: widget.isCircle,
            ),
            onTap: () async {
              if (_flag == false) {
                setState(() {
                  _flag = true;
                });
                if (widget.secondImagePath != null) {
                  await Future<void>.delayed(
                      Duration(milliseconds: imageDuration));
                }
                widget.function();
              }
            },
          )
        else
          CustomImages(
            path: widget.secondImagePath!,
            height: widget.height,
            width: widget.width,
            fit: widget.fit,
            isCircle: widget.isCircle,
          )
      ],
    );
  }
}
