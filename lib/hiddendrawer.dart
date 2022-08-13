import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_ui/pages/home_page.dart';
import 'package:hidden_drawer_ui/pages/settings_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Homepage',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(),
          ),
          HomePage()),
            ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Settings',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(),
          ),
          SettingsPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages, backgroundColorMenu: Colors.deepPurple.shade400,
        initPositionSelected: 0,
        slidePercent: 40,
        contentCornerRadius:50 ,
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple,
            spreadRadius: -25
          )
        ],);
  }
}
