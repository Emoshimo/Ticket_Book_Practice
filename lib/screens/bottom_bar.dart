import 'package:example/screens/home_screen.dart';
import 'package:example/screens/search_screen.dart';
import 'package:example/screens/ticket_screen.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.ticket),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.account_management),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
