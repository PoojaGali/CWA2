import 'package:cwa2/viewscreen/collegemap_screen.dart';
import 'package:cwa2/viewscreen/parkingmap_screen.dart';
import 'package:cwa2/viewscreen/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/MainScreen';
  @override
  _BottomTabNavigationState createState() => _BottomTabNavigationState();
}

class _BottomTabNavigationState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  final List<Widget> _children = [
    StartScreen(),
    CollegeMapScreen(),
    ParkingMapScreen(),
  ];

  void _onTappedHandler(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTappedHandler,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'College Map',
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            label: 'Parking',
            icon: Icon(Icons.local_parking),
          ),
        ],
        selectedItemColor: Colors.blue[200],
      ),
    );
  }
}
