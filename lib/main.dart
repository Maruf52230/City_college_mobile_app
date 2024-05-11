import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:dio/dio.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true, // optional: set false to disable printing logs to console
      // optional: set to false to disable printing logs to console (default: true)
      ignoreSsl: true);
  await Permission.storage.request();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Dio _dio = Dio();

  @override
  void initState() {
    super.initState();
    checkConnectivity();
  }

  Future<void> checkConnectivity() async {
    try {
      await _dio.head('https://www.google.com'); // Replace with a reliable URL
      navigateToMyHome();
    } catch (e) {
      navigateToNoNet();
    }
  }

  void navigateToMyHome() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              myhome(), // Assuming MyHome is a valid widget class
        ),
      );
    });
  }

  void navigateToNoNet() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => myhome(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/splash.png'), // Replace with your actual image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.8,
            ),
            CircularProgressIndicator(),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}

class NoNet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No network connection. Please check your connection.'),
      ),
    );
  }
}
