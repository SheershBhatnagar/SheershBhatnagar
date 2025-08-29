import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

import 'package:portfolio/app_bloc_observer.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/screens/landing_screen.dart';
import 'package:portfolio/screens/blog/single_blogpost_screen.dart';
import 'package:portfolio/screens/project/single_project_screen.dart';
import 'package:portfolio/terms_and_policies/privacy_policy_screen.dart';
import 'package:portfolio/terms_and_policies/terms_and_conditions_screen.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/custom_scrollbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // BLoC Observer
  Bloc.observer = AppBlocObserver();

  setUrlStrategy(PathUrlStrategy());

  // Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Firebase Crashlytics
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

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
