import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },
      children: const [
        NavigationDrawerDestination(
          icon: Icon(Icons.shop_2_rounded),
          label: Text("Compra papu"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.sell_sharp),
          label: Text("Vende papu"),
        ),
      ],
    );
  }
}
