import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/button_primary.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  bool _isHoveringLeft = false;
  bool _isHoveringRight = false;
  int activeIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  AppColors appColors = AppColors();

  final List<String> carouselImages = [
    Assets.contactBG,
    Assets.testimonial,
    Assets.contactBG,
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // IMAGES
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: carouselImages.length,
          itemBuilder: (context, index, realIdx) {
            return Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(carouselImages[index]),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.15,
                vertical: 100,
              ),
            );
          },
          options: CarouselOptions(
            height: height,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1,
            onPageChanged: (index, reason) => setState(() => activeIndex = index),
          ),
        ),

        // TITLE & DESCRIPTION
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.15,
            ),
            child: Row(
              children: [
                // BACK ARROW BUTTON
                IconButton(
                  onPressed: () => _controller.animateToPage(activeIndex - 1),
                  onHover: (state) {
                    setState(() {
                      _isHoveringLeft = state;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 30,
                    color: _isHoveringLeft ? appColors.primaryColor : Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TITLE
                    RichText(
                      text: TextSpan(
                        text: 'Watch $activeIndex',
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

                    // DESCRIPTION
                    SizedBox(
                      width: width * 0.3,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                        style: TextStyle(
                          fontSize: 12,
                          color: appColors.fontDisableColor,
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    // BUTTON
                    ButtonPrimary(
                      onPressed: () {
                        GoRouter.of(context).go('/project');
                      },
                      text: 'SEE PROJECT',
                    ),
                  ],
                ),
                Spacer(),

                // FORWARD ARROW BUTTON
                IconButton(
                  onPressed: () => _controller.animateToPage(activeIndex + 1),
                  onHover: (state) {
                    setState(() {
                      _isHoveringRight = state;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 30,
                    color: _isHoveringRight ? appColors.primaryColor : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),

        // DOT INDICATORS
        Positioned(
          left: width * 0.2,
          bottom: 100,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: carouselImages.length,
            effect: ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: Colors.red,
              dotColor: Colors.white,
            ),
            onDotClicked: (index) => _controller.animateToPage(index),
          ),
        ),
      ],
    );
  }
}
