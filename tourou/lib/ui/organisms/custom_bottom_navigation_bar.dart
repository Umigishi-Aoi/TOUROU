// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Icon worldIcon;
  final Icon selfIcon;
  final Icon settingIcon;
  final Color? backgroundColor;
  final Color? itemColor;
  final void Function(int) function;

  const CustomBottomNavigationBar({
    Key? key,
    required this.worldIcon,
    required this.selfIcon,
    required this.settingIcon,
    required this.function,
    this.backgroundColor,
    this.itemColor,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.function(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: widget.worldIcon),
        BottomNavigationBarItem(icon: widget.selfIcon),
        BottomNavigationBarItem(icon: widget.settingIcon),
      ],
      backgroundColor: widget.backgroundColor ?? ColorName.mainBlack,
      selectedItemColor: widget.itemColor ?? ColorName.textWhite,
      unselectedItemColor: widget.itemColor ?? ColorName.textWhite,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.shifting,
    );
  }
}
