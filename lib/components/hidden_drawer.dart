import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:lets_suit_up/pages/HomeAdmin.dart';
import 'package:lets_suit_up/pages/ProductAdmin.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

  final myTextStyle = const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFFE0E0E0),
          );

  List<ScreenHiddenDrawer> _pages= [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "H O M E",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: const Color(0xFFE0E0E0)
        ),
        const Homeadmin()
        ),
        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "P R O D U C T",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: const Color(0xFFE0E0E0)
        ),
        const Productadmin()
        ),
        
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 60,
    );
  }
}