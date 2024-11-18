import 'package:flutter/material.dart';

import 'package:sheershbhatnagar/screens/home.dart';
import 'package:sheershbhatnagar/screens/parallaxpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sheersh Bhatnagar',
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const SafeArea(
        child: HomePage(),
      ),
    );
  }
}
