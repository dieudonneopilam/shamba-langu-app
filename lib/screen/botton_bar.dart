import 'package:flutter/material.dart';
import 'package:solution_challenge_champ/screen/home_page.dart';
import 'package:solution_challenge_champ/screen/setting_page.dart';
import 'package:solution_challenge_champ/styles/styles.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({super.key});

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int selectIndex = 0;

  void changeIndex(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  static final List<Widget> _screens = <Widget>[
    const HomePage(),
    const SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _screens[selectIndex]),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Styles.blue,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectIndex,
          onTap: changeIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 40,
                ),
                label: 'setting'),
          ]),
    );
  }
}
