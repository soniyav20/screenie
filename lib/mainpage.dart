import 'package:flutter/material.dart';
import 'package:screenie/home/categories.dart';
import 'package:screenie/home/homepage.dart';
import 'package:screenie/home/latest.dart';
import 'package:screenie/home/popular.dart';
import 'package:screenie/home/rated.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Latest(),
    Categories(),
    Popular(),
    Rated()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.speaker_notes),
              label: "Latest",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_sharp),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.data_exploration),
              label: "Popular",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stars_sharp),
              label: "Rated",
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          iconSize: 30,
          selectedLabelStyle: TextStyle(color: Colors.white),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
