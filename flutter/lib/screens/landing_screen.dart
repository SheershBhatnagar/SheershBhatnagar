import 'package:flutter/material.dart';

import 'package:portfolio/screens/home/blog_screen.dart';
import 'package:portfolio/screens/home/contact_screen.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/home/projects_screen.dart';
import 'package:portfolio/screens/home/resume_screen.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/social_links.dart';
import 'package:portfolio/widgets/top_navbar.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  AppColors appColors = AppColors();

  final List<Widget> sections = [
    HomeScreen(),
    ResumeScreen(),
    ProjectsScreen(),
    BlogScreen(),
    ContactScreen(),
  ];

  void _onPageChanged(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // PAGES
          PageView(
            scrollDirection: Axis.vertical,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: sections,
          ),

          // SOCIAL LINKS
          SocialLinks(),

          // SCROLL BAR
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 2,
              height: height * 0.45,
              color: Colors.white,
              margin: EdgeInsets.only(
                right: 50,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: FractionallySizedBox(
                  heightFactor: (_currentIndex + 1) / sections.length,
                  child: Container(
                    color: appColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),

          // TOP NAVIGATION BAR
          TopNavBar(
            pageController: _pageController,
            currentIndex: _currentIndex,
          ),
        ],
      ),
    );
  }
}
