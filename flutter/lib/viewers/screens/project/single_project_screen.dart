import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets.dart';

import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/custom_scrollbar.dart';
import 'package:portfolio/widgets/social_links.dart';
import 'package:portfolio/widgets/top_navbar.dart';

class SingleProjectScreen extends StatefulWidget {
  const SingleProjectScreen({super.key});

  @override
  State<SingleProjectScreen> createState() => _SingleProjectScreenState();
}

class _SingleProjectScreenState extends State<SingleProjectScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.offset > 0 && !_isScrolled) {
        setState(() {
          _isScrolled = true;
        });
      } else if (_scrollController.offset <= 0 && _isScrolled) {
        setState(() {
          _isScrolled = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    AppColors appColors = AppColors();

    return Scaffold(
      body: ScrollConfiguration(
        behavior: NoScrollbarScrollBehavior(),
        child: Stack(
          children: [
            RawScrollbar(
              controller: _scrollController,
              thickness: 4,
              thumbColor: Colors.red,
              crossAxisMargin: 2,
              thumbVisibility: true,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Assets.contactBG),
                              fit: BoxFit.cover,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.2,
                            vertical: 100,
                          ),
                          child: Column(
                            children: [
                              Spacer(),
                              RichText(
                                text: TextSpan(
                                  text: 'The Bottle',
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
                                        fontSize: 90,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('TECH STACK'),
                                      Text(
                                        'Flutter',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('API'),
                                      Text(
                                        'OpenWeatherMap API',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('DATE'),
                                      Text(
                                        'May 4th, 2025',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('GITHUB'),
                                      Text(
                                        'Weather App',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.2,
                            vertical: 100,
                          ),
                          child: Text('data' * 2000),
                        ),
                      ],
                    ),
                  ),

                  // SOCIAL LINKS
                  SocialLinks(),
                ],
              ),
            ),
            TopNavBar(
              currentIndex: 0,
              isScrolled: _isScrolled,
            ),
          ],
        ),
      ),
    );
  }
}
