import 'dart:html' as html;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio/utils/colors.dart';

void openInNewTab(String url) {
  if (kIsWeb) {
    html.window.open(url, '_blank');
  } else {
    print('This function only works on Flutter Web.');
  }
}

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Social Links
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height * 0.3,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 0.3,
                      endIndent: 30,
                    ),
                  ),
                  Column(
                    children: [
                      _SocialLink(
                        onPressed: () {
                          openInNewTab('https://github.com/SheershBhatnagar');
                        },
                        iconData: FontAwesomeIcons.github,
                      ),
                      const SizedBox(height: 10),
                      _SocialLink(
                        onPressed: () {
                          openInNewTab('https://linkedin.com/in/sheershbhatnagar');
                        },
                        iconData: FontAwesomeIcons.linkedin,
                      ),
                      const SizedBox(height: 10),
                      _SocialLink(
                        onPressed: () {
                          openInNewTab('https://x.com/Sheersh_02');
                        },
                        iconData: FontAwesomeIcons.twitter,
                      ),
                      const SizedBox(height: 10),
                      _SocialLink(
                        onPressed: () {
                          openInNewTab('https://instagram.com/sheersh02');
                        },
                        iconData: FontAwesomeIcons.instagram,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.3,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 0.3,
                      indent: 30,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  '© Sheersh Bhatnagar 2025',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SocialLink extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData iconData;

  const _SocialLink({
    super.key,
    required this.onPressed,
    required this.iconData,
  });

  @override
  State<_SocialLink> createState() => _SocialLinkState();
}

class _SocialLinkState extends State<_SocialLink> {
  bool _isHovered = false;

  AppColors appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      onHover: (state) {
        setState(() {
          _isHovered = state;
        });
      },
      hoverColor: Colors.transparent,
      icon: Icon(
        widget.iconData,
        size: 20,
        color: _isHovered ? appColors.primaryColor : Colors.white,
      ),
    );
  }
}
