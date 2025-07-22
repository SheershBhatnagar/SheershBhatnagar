import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final List<String> items = List.generate(15, (index) => 'Item ${index + 1}');
  List<List<String>> pages = [];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    for (int i = 0; i < items.length; i += 3) {
      pages.add(
        items.sublist(
          i,
          i + 3 > items.length ? items.length : i + 3,
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.2,
            vertical: 100,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                'Blogs',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 100),
              Expanded(
                child: PageView.builder(
                  itemCount: pages.length,
                  itemBuilder: (context, pageIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 0,
                      ),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: pages[pageIndex].length,
                        itemBuilder: (context, index) {
                          return BlogCard();
                          // return SizedBox();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogCard extends StatefulWidget {
  const BlogCard({super.key});

  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool _isTitleHover = false;
  bool _isReadMoreHover = false;

  AppColors appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.contactBG),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 50,
        bottom: 30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '10th December, 2025',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: appColors.fontDisableColor,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              GoRouter.of(context).go('/blog');
            },
            onHover: (state) {
              setState(() {
                _isTitleHover = state;
              });
            },
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 100),
              style: TextStyle(
                fontSize: 25,
                color: _isTitleHover ? appColors.primaryColor : Colors.white,
                fontWeight: FontWeight.bold,
              ),
              child: Text('Secrets of the Serpents'),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: width * 0.15,
            child: Text(
              "Beast creature days. This response is important for our ability to learn from mistakes, but it also gives rise to, Don't Worry!",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: appColors.fontDisableColor,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              GoRouter.of(context).go('/blog');
            },
            onHover: (state) {
              setState(() {
                _isReadMoreHover = state;
              });
            },
            child: Row(
              children: [
                Text(
                  'Read More',
                  style: TextStyle(
                    fontSize: 12,
                    color: _isReadMoreHover ? appColors.primaryColor : Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_sharp,
                  size: 15,
                  color: _isReadMoreHover ? appColors.primaryColor : Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
