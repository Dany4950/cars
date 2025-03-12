// navigation.dart
import 'package:cars/cars.dart';
import 'package:cars/dashboard.dart';
import 'package:cars/notifications.dart';
import 'package:cars/profile.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class Navigation extends StatefulWidget {
  final Widget initialScreen;

  const Navigation({super.key, required this.initialScreen});

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  int selectedIndex = 2; // Changed here

  final List<Widget> screens = [
    // Changed here
    CarsScreen(),
    NotificationsScreen(),
    const DashboardScreen(),
    const ProfileScreen(),

  ];

  late Widget currentScreen; // Changed here

  @override
  void initState() {
    super.initState();
    currentScreen = widget.initialScreen; // Changed here
  }

  Color getNavBarBackgroundColor() {
    // Changed here
    if (currentScreen is DashboardScreen) {
      // Changed here
      return const Color(0xFFF5F7FB);
    } else if (currentScreen is NotificationsScreen) {
      // Changed here
      return const Color(0xFFF5F7FB);
    } else if (currentScreen is ProfileScreen) {
      // Changed here
      return Colors.white;
    } else if (currentScreen is CarsScreen) {
      // Changed here
      return Colors.deepPurple;
    }  else {
      return const Color(0xFFF5F7FB);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen, // Changed here
      bottomNavigationBar: Container(
        color: getNavBarBackgroundColor(), // Changed here
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.blueGrey,
          items: const [
            Icon(Icons.assignment, size: 30, color: Colors.white),
            Icon(Icons.notifications, size: 30, color: Colors.white),
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.directions_bus, size: 30, color: Colors.white),
            Icon(Icons.person, size: 30, color: Colors.white),
          ],
          index: selectedIndex, // Changed here
          onTap: (index) {
            setState(() {
              selectedIndex = index; // Changed here
              currentScreen = screens[index]; // Changed here
            });
          },
        ),
      ),
    );
  }
}
