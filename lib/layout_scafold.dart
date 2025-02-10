// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LayoutScafold extends StatelessWidget {
  const LayoutScafold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,

      // bottomNavigationBar: NavigationBar(

      //   selectedIndex: navigationShell.currentIndex,
      //   onDestinationSelected: navigationShell.goBranch,

      //   surfaceTintColor: Colors.white,

      //   /* backgroundColor: Colors.red, */
      //   indicatorColor: Colors.blueGrey,
      //   // labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      //   height: 80,
      //   // overlayColor: WidgetStatePropertyAll(Colors.amber),
      //   // indicatorShape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),

      //   destinations: destinations
      //       .map(
      //         (e) => NavigationDestination(
      //             tooltip: e.label,
      //             icon: Icon(
      //               e.icon,
      //               color: Colors.black,
      //             ),

      //             selectedIcon:Icon(e.selectedIcon,color: Colors.white,),
      //             label: e.label),
      //       )
      //       .toList(),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap:  navigationShell.goBranch,
          items: destinations
              .map(
                (e) => BottomNavigationBarItem(icon: Icon(e.icon),label: e.label),
              )
              .toList()),
    );
  }
}

class Destination {
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  Destination(
      {required this.label, required this.icon, required this.selectedIcon});
}

List<Destination> destinations = [
  Destination(icon: Icons.home, label: "Home", selectedIcon: Icons.home_filled),
  Destination(
      icon: Icons.settings,
      label: "Settings",
      selectedIcon: Icons.settings_applications_outlined),
];
