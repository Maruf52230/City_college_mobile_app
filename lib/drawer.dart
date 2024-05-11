// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp/textscr.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 209, 44)),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 19, 0, 88),
                      Color.fromARGB(255, 81, 0, 95)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/college_logo.png'),
                        height: screenHeight * 0.19,
                        width: screenHeight * 0.3,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('সরকারি সিটি কলেজ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white))
                    ],
                  ),
                )),
            ListTile(
              leading: Container(
                child: Image.asset('assets/icons8-college-30.png'),
                height: 25,
                width: 25,
              ),
              title: Text('কলেজ তথ্য'),
              onTap: () {
                // Handle the item tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => clginfo(),
                  ),
                ); // Close the drawer
              },
            ),
            ListTile(
              leading: Container(
                child: Image.asset('assets/male.png'),
                height: 25,
                width: 25,
              ),
              title: Text('অধ্যক্ষ'),
              onTap: () {
                // Handle the item tap

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => principle(),
                  ),
                );
                // Close the drawer
              },
            ),
            ListTile(
              leading: Container(
                child: Image.asset('assets/male.png'),
                height: 25,
                width: 25,
              ),
              title: Text('উপাধ্যক্ষ'),
              onTap: () {
                // Handle the item tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => aprinciple(),
                  ),
                ); //Close the drawer
              },
            ),
            ListTile(
              leading: Container(
                child: Image.asset('assets/icons8-www-50.png'),
                height: 25,
                width: 25,
              ),
              title: Text('কলেজ ওয়েব'),
              onTap: () {
                // Handle the item tap
                _launchURL('https://gccc.edu.bd/'); // Close the drawer
              },
            ),
            ListTile(
              leading: Container(
                child: Image.asset('assets/fb.png'),
                height: 25,
                width: 25,
              ),
              title: Text('ফেইসবুক'),
              onTap: () {
                // Handle the item tap
                _launchURL('https://www.facebook.com/officialcitycollege');
              },
            ),
            ListTile(
              leading: Container(
                child: Image.asset('assets/question.png'),
                height: 25,
                width: 25,
              ),
              title: Text('প্রাইভেসি পলিসি'),
              onTap: () {
                // Handle the item tap
                _launchURL(
                    'https://www.termsfeed.com/live/642c8aaa-962c-4d4b-af31-d6c87cc9811b'); // Close the drawer
              },
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
