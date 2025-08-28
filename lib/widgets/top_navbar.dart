import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/button_primary.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isScrolled;
  final int currentIndex;
  final PageController? pageController;

  const TopNavBar({
    super.key,
    required this.currentIndex,
    this.pageController,
    this.isScrolled = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(100);

  void _onNavTap(int index) {
    pageController?.animateToPage(
      index,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> navTitles = [
      'HOME',
      'RESUME',
      // 'PROJECTS',
      // 'BLOG',
      'CONTACT',
    ];

    AppColors appColors = AppColors();

    return Container(
      height: preferredSize.height - 20,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      color: currentIndex != 2 ? appColors.backgroundColor : Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Empty Space
          SizedBox(
            width: 100,
          ),

          // Navigation Links
          Row(
            children: [
              Row(
                children: List.generate(navTitles.length, (index) {
                  return _NavItem(
                    onTap: () {
                      if (index == 0) {
                        GoRouter.of(context).go('/');
                      }
                      _onNavTap(index);
                    },
                    title: navTitles[index],
                  );
                }),
              ),
              // Row(
              //   children: [
              //     _NavItem(
              //       onTap: () {
              //         GoRouter.of(context).go('/terms');
              //       },
              //       title: 'TERMS',
              //     ),
              //     _NavItem(
              //       onTap: () {
              //         GoRouter.of(context).go('/privacy');
              //       },
              //       title: 'PRIVACY',
              //     ),
              //   ],
              // ),
            ],
          ),

          // Button
          ButtonPrimary(
            onPressed: () {
              _onNavTap(4);
            },
            text: "LET'S TALK",
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final VoidCallback onTap;
  final String title;

  const _NavItem({
    required this.onTap,
    required this.title,
  });

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;

  AppColors appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (state) {
        setState(() {
          _isHovered = state;
        });
      },
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: _isHovered ? appColors.primaryColor : Colors.white,
          ),
        ),
      ),
    );
  }
}
