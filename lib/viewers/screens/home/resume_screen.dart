import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/button_primary.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    AppColors appColors = AppColors();

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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: appColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.work,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),

                            // Experience 1
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Full Stack Flutter Developer',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Decube Innovation Labs Pvt. Ltd. | Contributor | Oct 2024 - Present',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Experience 2
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'App Developer',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Bharat Intern | Intern | Nov 2023 - Dec 2023',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Experience 3
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Web Developer',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Suvidha Foundation | Intern | Oct 2023 - Nov 2023',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained web applications using PHP, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Experience 4
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Web Developer',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Navyug Think India Foundation | Intern | Jun 2022 - Jul 2022',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained web applications using PHP, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Experience 5
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'MS Dynamics Developer',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'JLD Software Solution | Trainee | Jun 2022 - Jul 2022',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and MS Dynamics applications using AL (Application Language), ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // EDUCATION
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: appColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.school,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Education',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),

                            // Education 1
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Master of Computer Applications in Generative AI',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'SRM University, Chennai | Jul 2024 - Present',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Education 2
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Bachelor of Computer Applications',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Amity University Rajasthan, Jaipur | Sept 2020 - May 2023',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Education 3
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Senior Secondary Education (12th)',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Seedling Modern High School, Jaipur | Mar 2019 - Mar 2020',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Education 4
                            SizedBox(height: 10),
                            SizedBox(
                              width: width * 0.325,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Secondary Education (10th)',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Seedling Modern High School, Jaipur | Mar 2017 - Mar 2018',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Developed and maintained mobile applications using Flutter, ensuring high performance and responsiveness.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: appColors.fontDisableColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Programming Languages Card
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      'Programming Languages',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Dart'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Dart',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Python'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Python',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Bash'),
                                    const SizedBox(width: 5),
                                    Text('60%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.6,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Bash',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Frameworks Card
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appColors.primaryColor,
                                        shape: BoxShape.circle,
                                      ),
                                      padding: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.filter_frames_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Frameworks',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Flutter'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Flutter',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('FastAPI'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'FastAPI',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Flask'),
                                    const SizedBox(width: 5),
                                    Text('60%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.6,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Flask',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Databases Card
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      'Databases',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('PostgreSQL'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'PostgreSQL',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('MySQL'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'MySQL',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Firebase'),
                                    const SizedBox(width: 5),
                                    Text('70%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.7,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Firebase',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // Technical Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Tools
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      'Tools',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Git'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Git',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Docker'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Docker',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Postman'),
                                    const SizedBox(width: 5),
                                    Text('60%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.6,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Postman',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Markup Languages Card
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      'Markup Languages',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('HTML'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'HTML',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('CSS'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'CSS',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Bootstrap'),
                                    const SizedBox(width: 5),
                                    Text('60%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.6,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Bootstrap',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // OS Card
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      'Operating Systems',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Ubuntu'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Ubuntu',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Arch Linux'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Arch Linux',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Fedora'),
                                    const SizedBox(width: 5),
                                    Text('70%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.7,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'Fedora',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // Technical Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // CMS
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      'CMS',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('WordPress'),
                                    const SizedBox(width: 5),
                                    Text('80%'),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.18,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: appColors.fontDisableColor,
                                    color: appColors.primaryColor,
                                    semanticsLabel: 'WordPress',
                                    borderRadius: BorderRadius.circular(10),
                                    minHeight: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                onPressed: () {},
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
