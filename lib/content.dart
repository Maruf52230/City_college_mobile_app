import 'package:testapp/groups.dart';

import 'department.dart';
import 'package:flutter/material.dart';

class Shift extends StatefulWidget {
  @override
  _ShiftState createState() => _ShiftState();
}

class _ShiftState extends State<Shift> {
  Map<String, bool> expansionPanelStates = {};

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.07,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 238, 250)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'দিবা শাখা',
                        style:
                            TextStyle(color: Color.fromARGB(255, 227, 62, 208)),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    buildGestureDetector(
                      context: context,
                      title: 'মানবিক ও সামাজিক বিজ্ঞান',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: [
                        'বাংলা',
                        'ইংরেজি',
                        'ইসলামিক ইতিহাস ও সংস্কৃতি',
                        'ইসলামিক স্টাডি',
                        'দর্শন',
                        'অর্থনীতি',
                        'রাষ্ট্রবিজ্ঞান',
                        'তথ্য ও যোগাযোগ প্রযুক্তি'
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    buildGestureDetector(
                      context: context,
                      title: 'বিজ্ঞান বিভাগ',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: [
                        'পদার্থ বিজ্ঞান',
                        'রসায়ন',
                        'জীববিদ্যা',
                        'উদ্ভিদবিদ্যা',
                        'গণিত',
                        'মনোবিজ্ঞান'
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    buildGestureDetector(
                      context: context,
                      title: 'ব্যবসায় শিক্ষা',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: [
                        'হিসাব বিজ্ঞান',
                        'ব্যবস্থাপনা',
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: screenHeight * 0.07,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 238, 250)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'বৈকালিক শাখা',
                            style: TextStyle(
                                color: Color.fromARGB(255, 227, 62, 208)),
                          ),
                        ],
                      ),
                    ),
                    buildGestureDetector(
                      context: context,
                      title: ' ব্যবসায় শিক্ষা',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: [
                        ' হিসাব বিজ্ঞান',
                        ' ব্যবস্থাপনা',
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildGestureDetector(
                      context: context,
                      title: ' মানবিক ও সামাজিক বিজ্ঞান',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: [
                        ' বাংলা',
                        ' ইংরেজি',
                        ' ইসলামিক ইতিহাস ও সংস্কৃতি',
                        ' ইসলামিক স্টাডি',
                        ' দর্শন',
                        ' অর্থনীতি',
                        ' রাষ্ট্রবিজ্ঞান'
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGestureDetector({
    required BuildContext context,
    required String title,
    required double screenWidth,
    required double screenHeight,
    required List<String> content,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the expansion state for the clicked GestureDetector
          expansionPanelStates[title] = !(expansionPanelStates[title] ?? false);
        });
      },
      child: Container(
        constraints: BoxConstraints(minHeight: 50),
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 130, 0, 91)),
                ),
              ),
            ),
            if (expansionPanelStates[title] ?? false)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: content
                      .asMap()
                      .map((index, text) {
                        return MapEntry(
                          index,
                          GestureDetector(
                            onTap: () {
                              if (text == 'বাংলা') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'bangla',
                                    ),
                                  ),
                                );
                              } else if (text == 'ইংরেজি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'english',
                                    ),
                                  ),
                                );
                              } else if (text == 'তথ্য ও যোগাযোগ প্রযুক্তি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ictdep(),
                                  ),
                                );
                              } else if (text == 'ইসলামিক ইতিহাস ও সংস্কৃতি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'islamh',
                                    ),
                                  ),
                                );
                              } else if (text == 'ইসলামিক স্টাডি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'islams',
                                    ),
                                  ),
                                );
                              } else if (text == 'দর্শন') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'philo',
                                    ),
                                  ),
                                );
                              } else if (text == 'অর্থনীতি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'eco',
                                    ),
                                  ),
                                );
                              } else if (text == 'রাষ্ট্রবিজ্ঞান') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'politics',
                                    ),
                                  ),
                                );
                              } else if (text == 'পদার্থ বিজ্ঞান') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'physics',
                                    ),
                                  ),
                                );
                              } else if (text == 'রসায়ন') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'chemistry',
                                    ),
                                  ),
                                );
                              } else if (text == 'জীববিদ্যা') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'zoo',
                                    ),
                                  ),
                                );
                              } else if (text == 'উদ্ভিদবিদ্যা') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'bot',
                                    ),
                                  ),
                                );
                              } else if (text == 'গণিত') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'math',
                                    ),
                                  ),
                                );
                              } else if (text == 'মনোবিজ্ঞান') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'psyco',
                                    ),
                                  ),
                                );
                              } else if (text == 'হিসাব বিজ্ঞান') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'accounting',
                                    ),
                                  ),
                                );
                              } else if (text == 'ব্যবস্থাপনা') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'management',
                                    ),
                                  ),
                                );
                              } else if (text == ' হিসাব বিজ্ঞান') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'eaccounting',
                                    ),
                                  ),
                                );
                              } else if (text == ' ব্যবস্থাপনা') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'emanagement',
                                    ),
                                  ),
                                );
                              } else if (text == ' বাংলা') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'ebangla',
                                    ),
                                  ),
                                );
                              } else if (text == ' ইংরেজি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'eenglish',
                                    ),
                                  ),
                                );
                              } else if (text == ' ইসলামিক ইতিহাস ও সংস্কৃতি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'eislamh',
                                    ),
                                  ),
                                );
                              } else if (text == ' ইসলামিক স্টাডি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'eislams',
                                    ),
                                  ),
                                );
                              } else if (text == ' দর্শন') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'ephilo',
                                    ),
                                  ),
                                );
                              } else if (text == ' অর্থনীতি') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'eeconomics',
                                    ),
                                  ),
                                );
                              } else if (text == ' রাষ্ট্রবিজ্ঞান') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Department(
                                      dep: 'epolitics',
                                    ),
                                  ),
                                );
                              } else {}

                              // Handle the click on the text here
                              print('Item at index $index clicked: $text');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 130, 0, 91),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  title: Text(
                                    text,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(199, 255, 255, 255)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      })
                      .values
                      .toList(),
                ),
              ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
