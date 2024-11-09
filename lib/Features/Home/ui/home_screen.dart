import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/icon_moon.dart';
import '../../chat/ui/chat_screen.dart';
import '../../courses/ui/courses_screen.dart';
import '../../educational_activity/ui/educational_activity_screen.dart';
import '../../feed/ui/feed_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    FeedScreen(),
    CoursesScreen(),
    EducationalActivityScreen(),
    ChatScreen(),
  ];

  // navigation destinations
  final List<Widget> _navigationDestinations = [
    NavigationDestination(icon: Icon(IconMoon.home), label: ''),
    NavigationDestination(icon: Icon(IconMoon.book), label: ''),
    NavigationDestination(icon: Icon(IconMoon.activity), label: ''),
    NavigationDestination(icon: Icon(IconMoon.chat), label: ''),
  ];

  void _onDestinationTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Column(
        mainAxisSize: MainAxisSize.min, // Minimize the Column's height
        children: [
        Divider(
        height: 1,
        thickness: 1, // Line thickness
        color: AppColor.mainBlack10, // Customize color
      ),

          NavigationBar(
            height: 50,
            destinations: _navigationDestinations,
            onDestinationSelected: _onDestinationTapped,
            selectedIndex: _currentIndex,
            indicatorColor: AppColor.primaryColor60,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            animationDuration: Duration(milliseconds: 600),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }
}

/*
*
*
*
* */
