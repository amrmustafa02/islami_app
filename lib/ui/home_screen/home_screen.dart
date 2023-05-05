import 'package:flutter/material.dart';
import 'package:islami_app/ui/hates_tab/hates_screen.dart';
import 'package:islami_app/ui/radio_tab/radio_screen.dart';
import 'package:islami_app/ui/sabha_tab/sabha_screen.dart';

import '../quarn_tab/moshaf_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 3;
  List<Widget> tabsScreens = [
    RadioScreen(),
    SabhaScreen(),
    HatesScreen(),
    MoshafScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_home.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("أسلامي"),
        ),
        body: tabsScreens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage("assets/images/radio_icon.png"),
                ),
                label: "راديو"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage("assets/images/sebha_icon.png"),
                ),
                label: "سبحة"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage("assets/images/hates_icon.png"),
                ),
                label: "احاديث"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage("assets/images/moshaf_icon.png"),
                ),
                label: "المصحف"),
          ],
        ),
      ),
    );
  }
}
