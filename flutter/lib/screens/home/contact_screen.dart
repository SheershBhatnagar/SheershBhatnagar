import 'package:flutter/material.dart';

import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/button_primary.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    AppColors appColors = AppColors();

    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.2,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.contactBG),
          fit: BoxFit.cover,
        ),
      ),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'You’ll called for yielding male, so lights Stars\nabundantly, is their.',
                style: TextStyle(
                  fontSize: 12,
                  color: appColors.fontDisableColor,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Jaipur, Rajasthan,\nIndia',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                '+91 9119239769',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'sheershbhatnagar2@zohomail.in',
                style: TextStyle(
                  fontSize: 12,
                  color: appColors.fontDisableColor,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Let's grab a coffee and jump on\nconversation ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'chat with me.',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Your Email',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                maxLines: 7,
                decoration: InputDecoration(
                  hintText: 'Message',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              ButtonPrimary(
                onPressed: () {},
                text: 'CONTACT ME',
              )
            ],
          ),
        ],
      ),
    );
  }
}
