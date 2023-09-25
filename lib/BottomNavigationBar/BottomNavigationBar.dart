import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paytonfc/BottomBar_Screens/Settings.dart';

import '../BottomBar_Screens/Home.dart';
import '../BottomBar_Screens/MyCard/MyCard.dart';
import '../BottomBar_Screens/Notifications/Notifications.dart';



class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  // Define your pages here
  final List<Widget> _pages = [
    Home(),
    MyCard(),
    Notifications(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  TextStyle(color: Color(0xff132183), fontWeight: FontWeight.w500, fontSize: 12);

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        key: _bottomNavigationKey,

        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xff132183),
        selectedLabelStyle: selectedLabelStyle,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/home.svg',
            color: _selectedIndex==0 ? Color(0xff132183) : null,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset('assets/card.svg',
              color: _selectedIndex==1 ? Color(0xff132183) : null,
            ),
            label: 'My Card',
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset('assets/Notification.svg',
              color: _selectedIndex==2 ? Color(0xff132183) : null,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}


