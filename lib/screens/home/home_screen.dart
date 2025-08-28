import 'dart:html' as html;

import 'package:flutter/material.dart';

import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/button_primary.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    AppColors appColors = AppColors();

    void downloadResume() async {
      final anchor = html.AnchorElement(href: 'files/Resume.pdf')
        ..download = 'Sheersh_Bhatnagar_Resume.pdf'
        ..click();
    }

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.2,
        vertical: 100,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // NAME
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Stack Flutter Developer'),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Sheersh\nBhatnagar',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Gilroy',
                    letterSpacing: 2,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 70,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: width * 0.18,
                child: Text(
                  'Working with client and community, we deliver master plans that create vibrant new places and spaces, attract people, and encourage.',
                  style: TextStyle(
                    fontSize: 11,
                    color: appColors.fontDisableColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ButtonPrimary(
                onPressed: downloadResume,
                text: 'DOWNLOAD RESUME',
              ),
              const SizedBox(height: 30),
            ],
          ),

          // PICTURE
          SizedBox(
            height: 400,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Assets.profilePicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
