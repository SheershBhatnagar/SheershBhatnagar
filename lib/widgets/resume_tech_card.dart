import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

Widget resumeTechCard({
  required double width,
  required String title,
  required List<String> techName,
  required List<String> experience,
}) {
  AppColors appColors = AppColors();

  return Card(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: appColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.code_rounded,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(techName[0]),
              const SizedBox(width: 5),
              Text(experience[0]),
            ],
          ),
          SizedBox(
            width: width * 0.18,
            child: LinearProgressIndicator(
              value: 0.8,
              backgroundColor: appColors.fontDisableColor,
              color: appColors.primaryColor,
              semanticsLabel: techName[0],
              borderRadius: BorderRadius.circular(10),
              minHeight: 7,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(techName[1]),
              const SizedBox(width: 5),
              Text(experience[1]),
            ],
          ),
          SizedBox(
            width: width * 0.18,
            child: LinearProgressIndicator(
              value: 0.8,
              backgroundColor: appColors.fontDisableColor,
              color: appColors.primaryColor,
              semanticsLabel: techName[1],
              borderRadius: BorderRadius.circular(10),
              minHeight: 7,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(techName[2]),
              const SizedBox(width: 5),
              Text(experience[2]),
            ],
          ),
          SizedBox(
            width: width * 0.18,
            child: LinearProgressIndicator(
              value: 0.6,
              backgroundColor: appColors.fontDisableColor,
              color: appColors.primaryColor,
              semanticsLabel: techName[2],
              borderRadius: BorderRadius.circular(10),
              minHeight: 7,
            ),
          ),
        ],
      ),
    ),
  );
}
