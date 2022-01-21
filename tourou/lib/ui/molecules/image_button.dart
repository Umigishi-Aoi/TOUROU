// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_image.dart';

class ImageButton extends StatefulWidget {
  final String firstImagePath;
  final double height;
  final void Function()? function;
  final void Function(Object object)? objectFunction;
  final Object? object;

  final String? secondImagePath;
  final double? width;
  final BoxFit fit;
  final bool isCircle;

  final int? duration;

  const ImageButton({
    Key? key,
    required this.firstImagePath,
    required this.height,
    this.function,
    this.objectFunction,
    this.object,
    this.secondImagePath,
    this.width,
    required this.fit,
    required this.isCircle,
    this.duration,
  }) : super(key: key);

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
            child: CustomImage(
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
                if (widget.secondImagePath != null && widget.duration != null) {
                  await Future<void>.delayed(
                      Duration(milliseconds: widget.duration!));
                }
                if(widget.function != null) {
                  widget.function!();
                }
                if(widget.objectFunction != null && widget.object != null) {
                  widget.objectFunction!(widget.object!);
                }
              }
            },
          )
        else
          CustomImage(
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
