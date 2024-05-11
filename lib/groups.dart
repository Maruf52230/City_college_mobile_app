import 'package:flutter/material.dart';

import 'package:testapp/web2.dart';
import 'web.dart';

class notice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              width: 200, // Set a specific width or use constraints
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Container(
                      child: ListTile(
                        title: Text('কেন্দ্রীয় নোটিশ'),
                        leading: Container(
                          child: Image.asset('assets/college.png'),
                          height: 25,
                          width: 25,
                        ),
                        onTap: () {
                          // Handle the item tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebScreen(
                                  receivedValue:
                                      'https://gccc.edu.bd/notice_categories/notice/'),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('শিক্ষক নোটিশ'),
                      leading: Container(
                        child: Image.asset('assets/male.png'),
                        height: 25,
                        width: 25,
                      ),
                      onTap: () {
                        // Handle the item tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                WebScreen1(receivedValue: 'tnotice'),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class academic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // _launchURL(
                        //     'https://drive.google.com/drive/folders/1r0ZaCOh50RhOEQR-JcLwnmCWYTXUFJbf?usp=sharing');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WebScreen(
                                receivedValue:
                                    'https://gccc.edu.bd/2023-2024/'),
                          ),
                        );
                      },
                      child: Container(
                          alignment: Alignment.center,
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
                          child: Text('শিক্ষাপঞ্জি ২০২৩-২৪')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              constraints: BoxConstraints(minHeight: 50),
                              width: screenWidth * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color.fromARGB(255, 255, 255, 255),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.1),
                                //     spreadRadius: 2,
                                //     blurRadius: 3,
                                //     offset: Offset(0, 3),
                                //   ),
                                // ],
                              ),
                              child: Text('ক্লাস রুটিন')),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WebScreen(
                                        receivedValue:
                                            'https://gccc.edu.bd/day/'),
                                  ),
                                );
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  constraints: BoxConstraints(minHeight: 50),
                                  width: screenWidth * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color.fromARGB(93, 161, 0, 150),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.black.withOpacity(0.1),
                                    //     spreadRadius: 2,
                                    //     blurRadius: 3,
                                    //     offset: Offset(0, 3),
                                    //   ),
                                    // ],
                                  ),
                                  child: Text('দিবা')),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WebScreen(
                                        receivedValue:
                                            'https://gccc.edu.bd/evening/'),
                                  ),
                                );
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  constraints: BoxConstraints(minHeight: 50),
                                  width: screenWidth * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color.fromARGB(93, 161, 0, 150),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.black.withOpacity(0.1),
                                    //     spreadRadius: 2,
                                    //     blurRadius: 3,
                                    //     offset: Offset(0, 3),
                                    //   ),
                                    // ],
                                  ),
                                  child: Text('বৈকালিক')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ictdep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListTile(
            trailing: Image.asset('assets/male.png'),
            title: Text('জনাব মোঃ মোস্তফা রেজা হাসান'),
            subtitle: Text('পদবিঃ প্রভাষক'),
          ),
        ),
      ),
    );
  }
}
