import 'package:flutter/material.dart';
import 'package:your_project_name/navigation_bar/ff_navigation_bar.dart';
import 'package:your_project_name/navigation_bar/ff_navigation_bar_item.dart';
import 'package:your_project_name/navigation_bar/ff_navigation_bar_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Selected Index: $_selectedIndex'),
      ),
      bottomNavigationBar: FFNavigationBar(
        selectedIndex: _selectedIndex,
        onSelectTab: _onItemTapped,
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBackgroundColor: Colors.blue,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.white,
          unselectedItemBackgroundColor: Colors.grey[200]!,
          unselectedItemIconColor: Colors.grey,
          unselectedItemLabelColor: Colors.black,
        ),
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.search,
            label: 'Search',
          ),
          FFNavigationBarItem(
            iconData: Icons.notifications,
            label: 'Notifications',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
