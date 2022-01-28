import 'package:flutter/material.dart';
import 'package:tourou/ui/atoms/custom_textfield.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';

class NewTourouTemplate extends StatelessWidget {
  const NewTourouTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CustomTextField(
              hint: hint,
              controller: controller,
              height: height,
              width: width,
              minLines: minLines,
              fontSize: fontSize,
              textColor: textColor,
              fontFamily: fontFamily,
              fillColor: fillColor,
              borderColor: borderColor,
              textInputFormatters: textInputFormatters,
            ),
            CustomElevatedButton(
                text: text,
                color: color,
                fontSize: fontSize,
                fontFamily: fontFamily,
                height: height,
                width: width,
                buttonColor: buttonColor,
                function: function,
            )
          ],
        ),
      ),
    )
  }
}
