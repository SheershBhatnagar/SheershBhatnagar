import 'package:flutter/material.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/admin/screens/dashboard_screen.dart';

import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/viewers/landing_screen.dart';
import 'package:portfolio/viewers/screens/blog/single_blogpost_screen.dart';
import 'package:portfolio/viewers/screens/project/single_project_screen.dart';
import 'package:portfolio/viewers/terms_and_policies/privacy_policy_screen.dart';
import 'package:portfolio/viewers/terms_and_policies/terms_and_conditions_screen.dart';
import 'package:portfolio/widgets/custom_scrollbar.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();

    final _router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => LandingScreen(),
        ),
        GoRoute(
          path: '/terms',
          builder: (context, state) => TermsAndConditionsScreen(),
        ),
        GoRoute(
          path: '/privacy',
          builder: (context, state) => PrivacyPolicyScreen(),
        ),
        GoRoute(
          path: '/project',
          builder: (context, state) => SingleProjectScreen(),
        ),
        GoRoute(
          path: '/blog',
          builder: (context, state) => SingleBlogPostScreen(),
        ),
        GoRoute(
          path: '/admin',
          builder: (context, state) => DashboardScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: _router,
      title: 'Sheersh Bhatnagar',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Gilroy',
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: appColors.backgroundColor,
        fontFamily: 'Gilroy',
      ),
      scrollBehavior: NoScrollbarScrollBehavior(),
    );
  }
}
