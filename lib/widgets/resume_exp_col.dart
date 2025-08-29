import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/resume_exp_and_edu_card.dart';

Widget resumeExpCol({
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
              Icons.work,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Experience',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),

      // Experience 1
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Full Stack Flutter Developer',
        duration: 'Decube Innovation Labs Pvt. Ltd. | Contributor | Oct 2024 - Present',
        description: 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      ),

      // Experience 2
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Full Stack Flutter Developer',
        duration: 'AuraVita Pvt. Ltd. | Contributor | Oct 2024 - Present',
        description: 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      ),

      // Experience 3
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'App Developer',
        duration: 'Bharat Intern | Intern | Nov 2023 - Dec 2023',
        description: 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      ),

      // Experience 4
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Web Developer',
        duration: 'Suvidha Foundation | Intern | Oct 2023 - Nov 2023',
        description: 'Developed and maintained web applications using PHP, ensuring high performance and responsiveness.',
      ),

      // Experience 5
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'Web Developer',
        duration: 'Navyug Think India Foundation | Intern | Jun 2022 - Jul 2022',
        description: 'Developed and maintained web applications using PHP, ensuring high performance and responsiveness.',
      ),

      // Experience 6
      SizedBox(height: 10),
      resumeExpAndEduCard(
        width: cardWidth,
        title: 'MS Dynamics Trainee',
        duration: 'JLD Software Solution | Trainee | Jun 2022 - Jul 2022',
        description: 'Developed and MS Dynamics applications using AL (Application Language), ensuring high performance and responsiveness.',
      ),
    ],
  );
}
