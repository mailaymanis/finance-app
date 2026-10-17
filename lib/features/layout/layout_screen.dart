import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/features/card/screens/card_screen.dart';
import 'package:finance_app/features/home/screens/home_screen.dart';
import 'package:finance_app/features/profile/screens/profile_screen.dart';
import 'package:finance_app/features/statistic/screens/statistic_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});
  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    StatisticScreen(),
    HomeScreen(),
    CardScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.scaffoldColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Home.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Chart.png"),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/images/Plus.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Wallet.png"),
            label: 'My Card',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Profile.png"),
            label: 'Profile',
          ),
        ],
      ),
      body: screens[_currentIndex],
    );
  }
}
