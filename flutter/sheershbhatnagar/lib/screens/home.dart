import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:sheershbhatnagar/utils/assets.dart';
import 'package:sheershbhatnagar/widgets/hero.dart';
import 'package:sheershbhatnagar/widgets/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Assets assets = Assets();

    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                HeroContainer(),
                NavBar(),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          assets.aiChat,
          height: 32,
        ),
      ),
    );
  }
}
