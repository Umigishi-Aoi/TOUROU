// Flutter imports:
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.worldIcon,
    required this.selfIcon,
    required this.settingIcon,
    required this.function,
    required this.backgroundColor,
    required this.itemColor,
  }) : super(key: key);

  final Icon worldIcon;
  final Icon selfIcon;
  final Icon settingIcon;
  final Color backgroundColor;
  final Color itemColor;
  final void Function(int) function;

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
      backgroundColor: widget.backgroundColor,
      selectedItemColor: widget.itemColor,
      unselectedItemColor: widget.itemColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.shifting,
    );
  }
}
