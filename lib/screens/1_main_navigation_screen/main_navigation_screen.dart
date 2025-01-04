import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zenify/screens/2_home_screen/home_screen.dart';
import 'package:zenify/screens/3_meditation_screen/meditation_screen.dart';
import 'package:zenify/screens/4_create_exercises_screen/create_exercises_screen.dart';
import 'package:zenify/screens/5_stats_screen/stats_screen.dart';
import 'package:zenify/screens/6_profile_screen/profile_screen.dart';
import 'package:zenify/utils/app_colors.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedTabIndex = 0;
  static const List<Widget> _tabBarScreenList = [
    HomeScreen(),
    MeditationScreen(),
    CreateExercisesScreen(),
    StatsScreen(),
    ProfileScreen(),
  ];

  //* On tap the tab bar item
  void _onTapTabBarItem(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BottomNavigationBar(
          onTap: (value) => _onTapTabBarItem(value),
          currentIndex: _selectedTabIndex,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.kLightGrayColor,
          selectedItemColor: AppColors.kPrimaryColor,
          unselectedItemColor: AppColors.kGrayColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "lib/assets/svg/house.svg",
                colorFilter: ColorFilter.mode(
                    _selectedTabIndex == 0
                        ? AppColors.kPrimaryColor
                        : AppColors.kGrayColor,
                    BlendMode.srcIn),
                semanticsLabel: "house svg",
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "lib/assets/svg/shell.svg",
                colorFilter: ColorFilter.mode(
                    _selectedTabIndex == 1
                        ? AppColors.kPrimaryColor
                        : AppColors.kGrayColor,
                    BlendMode.srcIn),
                semanticsLabel: "shell svg",
              ),
              label: "Meditation",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "lib/assets/svg/plus.svg",
                colorFilter: ColorFilter.mode(
                    _selectedTabIndex == 2
                        ? AppColors.kPrimaryColor
                        : AppColors.kGrayColor,
                    BlendMode.srcIn),
                semanticsLabel: "plus svg",
              ),
              label: "Create",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "lib/assets/svg/trending-up.svg",
                colorFilter: ColorFilter.mode(
                    _selectedTabIndex == 3
                        ? AppColors.kPrimaryColor
                        : AppColors.kGrayColor,
                    BlendMode.srcIn),
                semanticsLabel: "trending svg",
              ),
              label: "Stats",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "lib/assets/svg/user.svg",
                colorFilter: ColorFilter.mode(
                    _selectedTabIndex == 4
                        ? AppColors.kPrimaryColor
                        : AppColors.kGrayColor,
                    BlendMode.srcIn),
                semanticsLabel: "user svg",
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: _tabBarScreenList[_selectedTabIndex],
    );
  }
}
