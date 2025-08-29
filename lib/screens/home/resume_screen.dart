import 'dart:html' as html;

import 'package:flutter/material.dart';

import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/button_primary.dart';
import 'package:portfolio/widgets/resume_edu_col.dart';
import 'package:portfolio/widgets/resume_exp_col.dart';
import 'package:portfolio/widgets/resume_tech_row.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    final double cardWidth = width * 0.325;

    AppColors appColors = AppColors();

    void downloadResume() async {
      final anchor = html.AnchorElement(href: 'files/Resume.pdf')
        ..download = 'Sheersh_Bhatnagar_Resume.pdf'
        ..click();
    }

    final experiences = [
      {
        'title': 'Full Stack Flutter Developer',
        'duration': 'Decube Innovation Labs Pvt. Ltd. | Contributor | Oct 2024 - Present',
        'description': 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      },
      {
        'title': 'Full Stack Flutter Developer',
        'duration': 'AuraVita Pvt. Ltd. | Contributor | Oct 2024 - Present',
        'description': 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      },
      {
        'title': 'App Developer',
        'duration': 'Bharat Intern | Intern | Nov 2023 - Dec 2023',
        'description': 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      },
      {
        'title': 'Web Developer',
        'duration': 'Suvidha Foundation | Intern | Oct 2023 - Nov 2023',
        'description': 'Developed and maintained web applications using PHP, ensuring high performance and responsiveness.',
      },
      {
        'title': 'Web Developer',
        'duration': 'Navyug Think India Foundation | Intern | Jun 2022 - Jul 2022',
        'description': 'Developed and maintained web applications using PHP, ensuring high performance and responsiveness.',
      },
      {
        'title': 'MS Dynamics Trainee',
        'duration': 'JLD Software Solution | Trainee | Jun 2022 - Jul 2022',
        'description': 'Developed and MS Dynamics applications using AL (Application Language), ensuring high performance and responsiveness.',
      },
    ];

    final educations = [
      {
        'title': 'Master of Computer Applications in Generative AI',
        'duration': 'SRM University, Chennai | Jul 2024 - Present',
        'description': 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      },
      {
        'title': 'Bachelor of Computer Applications',
        'duration': 'Amity University Rajasthan, Jaipur | Sept 2020 - May 2023',
        'description': 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      },
      {
        'title': 'Senior Secondary Education (12th)',
        'duration': 'Seedling Modern High School, Jaipur | Mar 2019 - Mar 2020',
        'description': 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      },
      {
        'title': 'Secondary Education (10th)',
        'duration': 'Seedling Modern High School, Jaipur | Mar 2017 - Mar 2018',
        'description': 'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
      },
    ];

    final techTitles = [
      'Programming Languages',
      'Frameworks',
      'Databases',
      'Tools & Platforms',
      'Markup Languages',
      'Operating Systems',
    ];

    final techNames = [
      {
        'name': 'Dart',
        'proficiency': '80%',
      },
      {
        'name': 'Python',
        'proficiency': '80%',
      },
      {
        'name': 'Bash',
        'proficiency': '60%',
      },
      {
        'name': 'Flutter',
        'proficiency': '80%',
      },
      {
        'name': 'FastAPI',
        'proficiency': '80%',
      },
      {
        'name': 'Flask',
        'proficiency': '60%',
      },
      {
        'name': 'PostgreSQL',
        'proficiency': '80%',
      },
      {
        'name': 'MySQL',
        'proficiency': '80%',
      },
      {
        'name': 'Firebase',
        'proficiency': '70%',
      },
      {
        'name': 'Git',
        'proficiency': '70%',
      },
      {
        'name': 'Docker',
        'proficiency': '60%',
      },
      {
        'name': 'Postman',
        'proficiency': '70%',
      },
      {
        'name': 'HTML',
        'proficiency': '80%',
      },
      {
        'name': 'CSS',
        'proficiency': '70%',
      },
      {
        'name': 'Bootstrap',
        'proficiency': '70%',
      },
      {
        'name': 'Ubuntu',
        'proficiency': '80%',
      },
      {
        'name': 'Arch Linux',
        'proficiency': '70%',
      },
      {
        'name': 'Fedora',
        'proficiency': '60%',
      },
    ];

    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.15,
          ),
          child: Column(
            children: [
              // ABOUT SECTION
              SizedBox(height: 100),
              Container(
                width: width * 0.75,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Card(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 300,
                            width: 220,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Assets.profilePicture,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sheersh Bhatnagar',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy',
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Full Stack Flutter Developer',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontFamily: 'Gilroy',
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: width * 0.5,
                                child: Text(
                                  'Working with client and community, we deliver master plans that create vibrant new places and spaces, attract people, and encourage.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: appColors.fontDisableColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '+91 9119239769',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.email_rounded,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'sheershbhatnagar2@zohomail.in',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Jaipur, Rajasthan, India',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // EXPERIENCE & EDUCATION SECTION
              SizedBox(height: 50),
              Container(
                width: width * 0.75,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // EXPERIENCE
                        resumeExpCol(
                          cardWidth: cardWidth,
                        ),

                        // EDUCATION
                        resumeEduCol(
                          cardWidth: cardWidth,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // TECHNICAL SKILLS SECTION
              SizedBox(height: 50),
              Container(
                width: width * 0.75,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: appColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.code_rounded,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Technical Skills',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: width * 0.5,
                      child: Text(
                        "Here's a showcase of my technical expertise. I Continuously learn and adapt to new technologies.",
                        style: TextStyle(
                          fontSize: 16,
                          color: appColors.fontDisableColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30),

                    // Technical Row 1
                    resumeTechRow(
                      width: width,
                      title: techTitles.sublist(0, 3),
                      tech: techNames.sublist(0, 9),
                    ),

                    const SizedBox(height: 30),

                    // Technical Row 2
                    resumeTechRow(
                      width: width,
                      title: techTitles.sublist(3, 6),
                      tech: techNames.sublist(9, 18),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),

              // // Certificates
              // SizedBox(height: 50),
              // Container(
              //   width: width * 0.75,
              //   padding: EdgeInsets.all(20),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(
              //               color: appColors.primaryColor,
              //               shape: BoxShape.circle,
              //             ),
              //             padding: EdgeInsets.all(10),
              //             child: Icon(
              //               Icons.star,
              //               color: Colors.white,
              //             ),
              //           ),
              //           const SizedBox(width: 10),
              //           Text(
              //             'Certifications',
              //             style: TextStyle(
              //               fontSize: 20,
              //               fontWeight: FontWeight.w600,
              //               color: Colors.white,
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 20),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           SizedBox(
              //             width: width * 0.22,
              //             child: Card(
              //               child: Column(
              //                 children: [
              //                   ClipRRect(
              //                     borderRadius: BorderRadius.only(
              //                       topLeft: Radius.circular(10),
              //                       topRight: Radius.circular(10),
              //                     ),
              //                     child: Image.asset(
              //                       Assets.contactBG,
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsets.all(20),
              //                     child: Column(
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       children: [
              //                         Row(
              //                           children: [
              //                             Container(
              //                               decoration: BoxDecoration(
              //                                 color: appColors.primaryColor,
              //                                 shape: BoxShape.circle,
              //                               ),
              //                               padding: EdgeInsets.all(5),
              //                               child: Icon(
              //                                 Icons.verified_user_rounded,
              //                                 color: Colors.white,
              //                                 size: 20,
              //                               ),
              //                             ),
              //                             const SizedBox(width: 10),
              //                             Text(
              //                               'Certified Flutter Developer',
              //                               style: TextStyle(
              //                                 fontSize: 16,
              //                                 fontWeight: FontWeight.w600,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                         SizedBox(height: 10),
              //                         Text(
              //                           'Issued: January 2023 | Credential ID: 123456789',
              //                           style: TextStyle(
              //                             fontSize: 14,
              //                             color: appColors.fontDisableColor,
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           SizedBox(
              //             width: width * 0.22,
              //             child: Card(
              //               child: Column(
              //                 children: [
              //                   ClipRRect(
              //                     borderRadius: BorderRadius.only(
              //                       topLeft: Radius.circular(10),
              //                       topRight: Radius.circular(10),
              //                     ),
              //                     child: Image.asset(
              //                       Assets.contactBG,
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsets.all(20),
              //                     child: Column(
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       children: [
              //                         Row(
              //                           children: [
              //                             Container(
              //                               decoration: BoxDecoration(
              //                                 color: appColors.primaryColor,
              //                                 shape: BoxShape.circle,
              //                               ),
              //                               padding: EdgeInsets.all(5),
              //                               child: Icon(
              //                                 Icons.verified_user_rounded,
              //                                 color: Colors.white,
              //                                 size: 20,
              //                               ),
              //                             ),
              //                             const SizedBox(width: 10),
              //                             Text(
              //                               'Certified Flutter Developer',
              //                               style: TextStyle(
              //                                 fontSize: 16,
              //                                 fontWeight: FontWeight.w600,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                         SizedBox(height: 10),
              //                         Text(
              //                           'Issued: January 2023 | Credential ID: 123456789',
              //                           style: TextStyle(
              //                             fontSize: 14,
              //                             color: appColors.fontDisableColor,
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           SizedBox(
              //             width: width * 0.22,
              //             child: Card(
              //               child: Column(
              //                 children: [
              //                   ClipRRect(
              //                     borderRadius: BorderRadius.only(
              //                       topLeft: Radius.circular(10),
              //                       topRight: Radius.circular(10),
              //                     ),
              //                     child: Image.asset(
              //                       Assets.contactBG,
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsets.all(20),
              //                     child: Column(
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       children: [
              //                         Row(
              //                           children: [
              //                             Container(
              //                               decoration: BoxDecoration(
              //                                 color: appColors.primaryColor,
              //                                 shape: BoxShape.circle,
              //                               ),
              //                               padding: EdgeInsets.all(5),
              //                               child: Icon(
              //                                 Icons.verified_user_rounded,
              //                                 color: Colors.white,
              //                                 size: 20,
              //                               ),
              //                             ),
              //                             const SizedBox(width: 10),
              //                             Text(
              //                               'Certified Flutter Developer',
              //                               style: TextStyle(
              //                                 fontSize: 16,
              //                                 fontWeight: FontWeight.w600,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                         SizedBox(height: 10),
              //                         Text(
              //                           'Issued: January 2023 | Credential ID: 123456789',
              //                           style: TextStyle(
              //                             fontSize: 14,
              //                             color: appColors.fontDisableColor,
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              //
              // // Achievements
              // SizedBox(height: 50),
              // Container(
              //   width: width * 0.75,
              //   padding: EdgeInsets.all(20),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(
              //               color: appColors.primaryColor,
              //               shape: BoxShape.circle,
              //             ),
              //             padding: EdgeInsets.all(10),
              //             child: Icon(
              //               Icons.emoji_events_rounded,
              //               color: Colors.white,
              //             ),
              //           ),
              //           const SizedBox(width: 10),
              //           Text(
              //             'Achievements',
              //             style: TextStyle(
              //               fontSize: 20,
              //               fontWeight: FontWeight.w600,
              //               color: Colors.white,
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 20),
              //
              //       // Achievement 1
              //       Card(
              //         child: Column(
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.all(20),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Row(
              //                     children: [
              //                       Container(
              //                         decoration: BoxDecoration(
              //                           color: appColors.primaryColor,
              //                           shape: BoxShape.circle,
              //                         ),
              //                         padding: EdgeInsets.all(5),
              //                         child: Icon(
              //                           Icons.emoji_events_rounded,
              //                           color: Colors.white,
              //                           size: 20,
              //                         ),
              //                       ),
              //                       const SizedBox(width: 10),
              //                       Text(
              //                         'Top Contributor of the Year',
              //                         style: TextStyle(
              //                           fontSize: 16,
              //                           fontWeight: FontWeight.w600,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   SizedBox(height: 10),
              //                   Text(
              //                     'Awarded for outstanding contributions to the Flutter community in 2023.',
              //                     style: TextStyle(
              //                       fontSize: 14,
              //                       color: appColors.fontDisableColor,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //
              //       // Achievement 2
              //       Card(
              //         child: Column(
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.all(20),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Row(
              //                     children: [
              //                       Container(
              //                         decoration: BoxDecoration(
              //                           color: appColors.primaryColor,
              //                           shape: BoxShape.circle,
              //                         ),
              //                         padding: EdgeInsets.all(5),
              //                         child: Icon(
              //                           Icons.emoji_events_rounded,
              //                           color: Colors.white,
              //                           size: 20,
              //                         ),
              //                       ),
              //                       const SizedBox(width: 10),
              //                       Text(
              //                         'Top Contributor of the Year',
              //                         style: TextStyle(
              //                           fontSize: 16,
              //                           fontWeight: FontWeight.w600,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   SizedBox(height: 10),
              //                   Text(
              //                     'Awarded for outstanding contributions to the Flutter community in 2023.',
              //                     style: TextStyle(
              //                       fontSize: 14,
              //                       color: appColors.fontDisableColor,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //
              //       // Achievement 3
              //       Card(
              //         child: Column(
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.all(20),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Row(
              //                     children: [
              //                       Container(
              //                         decoration: BoxDecoration(
              //                           color: appColors.primaryColor,
              //                           shape: BoxShape.circle,
              //                         ),
              //                         padding: EdgeInsets.all(5),
              //                         child: Icon(
              //                           Icons.emoji_events_rounded,
              //                           color: Colors.white,
              //                           size: 20,
              //                         ),
              //                       ),
              //                       const SizedBox(width: 10),
              //                       Text(
              //                         'Top Contributor of the Year',
              //                         style: TextStyle(
              //                           fontSize: 16,
              //                           fontWeight: FontWeight.w600,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   SizedBox(height: 10),
              //                   Text(
              //                     'Awarded for outstanding contributions to the Flutter community in 2023.',
              //                     style: TextStyle(
              //                       fontSize: 14,
              //                       color: appColors.fontDisableColor,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // Download Button
              SizedBox(height: 50),
              ButtonPrimary(
                onPressed: downloadResume,
                text: 'DOWNLOAD RESUME',
              ),

              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
