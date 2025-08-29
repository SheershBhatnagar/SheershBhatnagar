import 'package:flutter/material.dart';

import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/resume_exp_and_edu_card.dart';

Widget resumeEduCol({
  required double cardWidth,
}) {
  AppColors appColors = AppColors();

  return Column(
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
              Icons.school,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Education',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),

      // Education 1
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Master of Computer Applications in Generative AI',
        duration: 'SRM University, Chennai | Jul 2024 - Present',
        description: 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      ),

      // Education 2
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Bachelor of Computer Applications',
        duration: 'Amity University Rajasthan, Jaipur | Sept 2020 - May 2023',
        description: 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      ),

      // Education 3
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Senior Secondary Education (12th)',
        duration: 'Seedling Modern High School, Jaipur | Mar 2019 - Mar 2020',
        description: 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      ),

      // Education 4
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Secondary Education (10th)',
        duration: 'Seedling Modern High School, Jaipur | Mar 2017 - Mar 2018',
        description: 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      ),
    ],
  );
}
