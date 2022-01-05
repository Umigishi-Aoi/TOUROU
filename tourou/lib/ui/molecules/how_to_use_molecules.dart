// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../res/constants.dart';
import '../atoms/custom_image.dart';

class HowToUseMolecules extends StatefulWidget {
  final ValueNotifier<double> notifier;

  final double imageHeight;
  final double imageWidth;

  const HowToUseMolecules(
      {Key? key,
      required this.notifier,
      required this.imageHeight,
      required this.imageWidth})
      : super(key: key);

  @override
  _HowToUseMoleculesState createState() => _HowToUseMoleculesState();
}

class _HowToUseMoleculesState extends State<HowToUseMolecules> {
  final _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onScroll() {
    widget.notifier.value = _pageController.page!;
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: List<Widget>.generate(howToUsePageCount, (index) {
        Locale locale = Localizations.localeOf(context);

        String languageCode = locale.languageCode;

        final String imageName;

        if (languageCode == SuportedLocale.ja.name) {
          imageName = "assets/how_to_use/ja/how_to_use_ja_${index + 1}.png";
        } else {
          imageName = "assets/how_to_use/en/how_to_use_en_${index + 1}.png";
        }

        return CustomImage(
          path: imageName,
          height: widget.imageHeight,
          width: widget.imageWidth,
        );
      }),
    );
  }
}
