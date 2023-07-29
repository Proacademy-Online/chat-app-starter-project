import 'package:chat_app_starter_project/screens/main/conversations/conversations.dart';
import 'package:chat_app_starter_project/screens/main/users/users.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final int _currentIndex = 0;

  //------list to store bottom navigation screens
  final List<Widget> _screens = const [
    Conversations(),
    Users(),
  ];

  //--------store the active index
  int activeIndex = 0;

  //-----ontap function
  void onItemTapped(int i) {
    setState(() {
      activeIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[activeIndex],
      bottomNavigationBar: SizedBox(
        height: 83,
        // color: AppColors.kred,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => onItemTapped(0),
              child: Icon(
                Icons.message_sharp,
                color: activeIndex == 0 ? AppColors.primaryColor : AppColors.kAsh,
              ),
            ),
            InkWell(
              onTap: () => onItemTapped(1),
              child: Icon(
                Icons.people,
                color: activeIndex == 1 ? AppColors.primaryColor : AppColors.kAsh,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
