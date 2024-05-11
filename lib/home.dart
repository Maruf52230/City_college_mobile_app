import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:testapp/content.dart';
import 'mujib.dart';
import 'package:testapp/groups.dart';
import 'package:testapp/web2.dart';
import 'web.dart';
import 'textscr.dart';
import 'drawer.dart';

List<String> imagePaths = [
  'assets/cr1.jpg',
  'assets/cr2.jpg',
  'assets/cr3.jpg',
  'assets/cr4.jpg',
  'assets/cr6.jpg',
  // Add more image paths as needed
];

class myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialColor customBlue = MaterialColor(
      0xFF630091, // Replace this with your desired color value
      <int, Color>{
        50: Color.fromARGB(255, 255, 255, 255),
        100: Color.fromARGB(255, 255, 255, 255),
        200: Color.fromARGB(255, 255, 255, 255),
        300: Color.fromARGB(255, 255, 255, 255),
        400: Color.fromARGB(255, 93, 0, 175),
        500: Color.fromARGB(255, 100, 0, 167),
        600: Color.fromARGB(255, 68, 0, 164),
        700: Color.fromARGB(255, 91, 0, 137),
        800: Color.fromARGB(255, 97, 0, 106),
        900: Color.fromARGB(255, 129, 13, 161),
      },
    );

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:
            customBlue, // Set the custom blue color as the primarySwatch
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('আমাদের সিটি কলেজ'),
            actions: [
              // IconButton(
              //   onPressed: () {},
              //   // icon: Icon(
              //   //   Icons.question_mark_rounded,
              //   //   size: 20,
              //   // ),
              // )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          drawer: MyDrawer(),
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 8,
              ),
              crausal(),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'কলেজ তথ্য',
                      imagePath: 'assets/clg.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'clginfo',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'হৃদয়ে বঙ্গবন্ধু',
                      imagePath: 'assets/mujib.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'mujib',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'নোটিশ',
                      imagePath: 'assets/file.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'notice',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'একাডেমিক কার্যক্রম',
                      imagePath: 'assets/allTaskDone2.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'academic',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'স্মৃতির এলবাম',
                      imagePath: 'assets/college.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'album',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'বিভাগ ও শিক্ষকমন্ডলী',
                      imagePath: 'assets/male.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'group',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'আমাদের লেখা',
                      imagePath: 'assets/pen.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'student',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'শিক্ষার্থী লগইন',
                      imagePath: 'assets/login.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'login',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'ফলাফল',
                      imagePath: 'assets/result.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'result',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'সিটিজেন চার্টার',
                      imagePath: 'assets/discussion.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'citygen',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'পেমেন্ট',
                      imagePath: 'assets/fee.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'payment',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'সহপাঠ্য ক্রমিক কার্যক্রম',
                      imagePath: 'assets/help.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'cocurriculam',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'জাতীয় দিবস',
                      imagePath: 'assets/events.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'nationalevents',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'জার্নাল',
                      imagePath: 'assets/journals.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'journal',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'ভর্তি',
                      imagePath: 'assets/wa_education.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'admission',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector(
                      context: context, // Pass the context here
                      title: 'পিডিএফ কালেকশন',
                      imagePath: 'assets/pedf.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'other',
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }

  GestureDetector buildGestureDetector({
    required BuildContext context, // Pass BuildContext as a parameter
    required String title,
    required String imagePath,
    required double screenWidth,
    required double screenHeight,
    required String receivedValue,
  }) {
    return GestureDetector(
      onTap: () {
        if (receivedValue == 'clginfo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Prii(),
            ),
          );
        } else if (receivedValue == 'student') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                  receivedValue:
                      'https://dev-gccc.pantheonsite.io/category/student/'),
            ),
          );
        } else if (receivedValue == 'principle') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Prii(),
            ),
          );
        } else if (receivedValue == 'notice') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => notice(),
            ),
          );
        } else if (receivedValue == 'mujib') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Mujib(),
            ),
          );
        } else if (receivedValue == 'academic') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => academic(),
            ),
          );
        } else if (receivedValue == 'group') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Shift(),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen1(receivedValue: receivedValue),
            ),
          );
        }
      },
      child: Container(
        height: screenHeight * 0.20,
        width: screenWidth * 0.45,
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
              padding: EdgeInsets.only(bottom: 6.0),
              child: Text(
                title,
                style: TextStyle(),
              ),
            ),
            Image.asset(
              imagePath,
              width: 60,
              height: 50,
              fit: BoxFit.fill,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        alignment: Alignment.center,
      ),
    );
  }

  CarouselSlider crausal() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true, // Set to true for automatic sliding
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.decelerate,
        autoPlayInterval: Duration(seconds: 2),
      ),
      items: imagePaths.map((String imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
