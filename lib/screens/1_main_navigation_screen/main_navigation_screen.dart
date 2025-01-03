import 'package:flutter/material.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.self_improvement_rounded),
              label: "Meditation",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_rounded),
              label: "Create",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.self_improvement_rounded),
              label: "Status",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.self_improvement_rounded),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
