import 'package:flutter/material.dart';

import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/custom_scrollbar.dart';
import 'package:portfolio/widgets/social_links.dart';
import 'package:portfolio/widgets/top_navbar.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
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
                          height: height * 0.75,
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
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'Updated: ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: 'Gilroy',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '25th May, 2025',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontFamily: 'Gilroy',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Terms And Conditions',
                                style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy',
                                  letterSpacing: 2,
                                ),
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
