import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/ui/molecules/text_switch.dart';

class NewRegistrationTemplate extends StatelessWidget {
  final SvgPicture googleIcon;
  final SvgPicture appleIcon;
  final void Function() googleFunction;
  final void Function() appleFunction;
  final void Function() privacyPolicyFunction;
  final void Function(bool) privacyPolicySwitchFunction;
  final void Function() disclaimerFunction;
  final void Function(bool) disclaimerSwitchFunction;

  const NewRegistrationTemplate(
      {Key? key,
      required this.googleIcon,
      required this.appleIcon,
      required this.googleFunction,
      required this.appleFunction,
      required this.privacyPolicyFunction,
      required this.privacyPolicySwitchFunction,
      required this.disclaimerFunction,
      required this.disclaimerSwitchFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
