import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

Widget resumeExpAndEduCard({
  required double width,
  required String title,
  required String duration,
  required String description,
}) {
  AppColors appColors = AppColors();

  return SizedBox(
    width: width,
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              duration,
              style: TextStyle(
                fontSize: 16,
                color: appColors.fontDisableColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: appColors.fontDisableColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
