import 'package:flutter/material.dart';

import 'package:portfolio/utils/colors.dart';

class ButtonPrimary extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ButtonPrimary({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: appColors.primaryColor,
        shape: RoundedRectangleBorder(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
