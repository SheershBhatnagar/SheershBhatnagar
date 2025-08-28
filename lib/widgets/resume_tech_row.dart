import 'package:flutter/material.dart';
import 'package:portfolio/widgets/resume_tech_card.dart';

Widget resumeTechRow({
  required double width,
  required List<String> title,
  required List<Map<String, String>> tech,
}) {
  List<String> techName = tech.map((e) => e['name']!).toList();
  List<String> experience = tech.map((e) => e['proficiency']!).toList();

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      resumeTechCard(
        width: width,
        title: title[0],
        techName: techName.sublist(0, 3),
        experience: experience.sublist(0, 3),
      ),
      resumeTechCard(
        width: width,
        title: title[1],
        techName: techName.sublist(3, 6),
        experience: experience.sublist(3, 6),
      ),
      resumeTechCard(
        width: width,
        title: title[2],
        techName: techName.sublist(6, 9),
        experience: experience.sublist(6, 9),
      ),
    ],
  );
}
