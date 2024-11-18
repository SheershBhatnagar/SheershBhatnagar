import 'package:flutter/material.dart';

import 'package:sheershbhatnagar/utils/strings.dart';

class HeroContainer extends StatelessWidget {
  const HeroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Strings strings = Strings();

    return Text(strings.sheershBhatnagar);
  }
}
