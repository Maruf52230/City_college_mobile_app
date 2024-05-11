import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'main.dart';

class WebScreen1 extends StatefulWidget {
  final String receivedValue;

  WebScreen1({required this.receivedValue});

  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen1> {
  final Dio _dio = Dio();
  late InAppWebViewController webViewController;
  String link = '';
  bool isLoading = true;
  late bool _canGoBack;

  @override
  void initState() {
    checkConnectivity();
    super.initState();
    setLink();
    _canGoBack = true;
  }

  void setLink() {
    String selectedLink = '';

    if (widget.receivedValue == 'tnotice') {
      selectedLink = 'https://dev-gccc.pantheonsite.io/notice_type/';
    } else if (widget.receivedValue == 'notice') {
      selectedLink = 'https://gccc.edu.bd/notice_categories/notice/';
    } else if (widget.receivedValue == 'academic') {
      selectedLink =
          'https://drive.google.com/file/d/1PvFmQ0Vxrv87AoFyVdxXd4a7HV5r7Z1e/view?usp=sharing';
    } else if (widget.receivedValue == 'admission') {
      selectedLink = 'https://www.ems.gccc.edu.bd/events?code=higher_secondary';
    } else if (widget.receivedValue == 'group') {
      selectedLink =
          'https://drive.google.com/file/d/1ayhoxQEu_b8Vrbo5almV9wvwaStGAAY8/view?usp=sharing';
    } else if (widget.receivedValue == 'result') {
      selectedLink = 'https://www.ems.gccc.edu.bd/results';
    } else if (widget.receivedValue == 'citygen') {
      selectedLink =
          'https://drive.google.com/file/d/1a1mw4ijydXb4aJFThK7Jl-5HESEWl-T2/view?usp=sharing';
    } else if (widget.receivedValue == 'payment') {
      selectedLink = 'https://www.ems.gccc.edu.bd/events';
    } else if (widget.receivedValue == 'cocurriculam') {
      selectedLink =
          'https://gccc.edu.bd/information_categories/extra-curricular-activities/';
    } else if (widget.receivedValue == 'degree') {
      selectedLink = 'https://www.ems.gccc.edu.bd/events?code=pass_degree';
    } else if (widget.receivedValue == 'nationalevents') {
      selectedLink =
          'https://gccc.edu.bd/information_categories/national-evants/';
    } else if (widget.receivedValue == 'journal') {
      selectedLink =
          'https://drive.google.com/file/d/1RSgoEdGiZkhXoUji7rvMnIDl2yD_7oR_/view?usp=sharing';
    } else if (widget.receivedValue == 'fbpage') {
      selectedLink =
          'https://m.facebook.com/profile.php/?id=100088587316341&name=xhp_nt__fb__action__open_user';
    } else if (widget.receivedValue == 'album') {
      selectedLink =
          'https://photos.google.com/share/AF1QipPO4wKaNrlwxAowV_FyidElvBMOJTzXn2xQ_b1m2vouXd2bVIDM3_G8Gs8XC3-LCw?pli=1&key=M25rOUFKeDJvQ3BNY2Nic0xUNnVKMjA0WEtHV0ZB';
    } else if (widget.receivedValue == 'download') {
      selectedLink = 'https://dev-gccc.pantheonsite.io/downloadable-file/';
    } else if (widget.receivedValue == 'student') {
      selectedLink = 'https://dev-gccc.pantheonsite.io/category/student/';
    } else if (widget.receivedValue == 'other') {
      selectedLink = 'https://dev-gccc.pantheonsite.io/other/';
    } else if (widget.receivedValue == 'login') {
      selectedLink = 'https://www.ems.gccc.edu.bd/login';
    }
    setState(() {
      link = selectedLink;
    });
  }

  Future<void> checkConnectivity() async {
    try {
      await _dio.head('https://www.google.com'); // Replace with a reliable URL
    } catch (e) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              NoNet(), // Assuming MyHome is a valid widget class
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await webViewController.canGoBack()) {
          webViewController.goBack();
          return false; // Prevent default back button behavior
        } else {
          return true; // Allow default back button behavior
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                child: InAppWebView(
                  initialUrlRequest: URLRequest(url: Uri.parse(link)),
                  initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                      javaScriptEnabled: true,
                      transparentBackground: true,
                      useOnDownloadStart: true,
                    ),
                  ),
                  onWebViewCreated: (controller) {
                    webViewController = controller;
                  },
                  onProgressChanged: (controller, progress) {
                    if (progress == 100) {
                      setState(() {
                        isLoading = false;
                      });
                    }
                  },
                  onLoadStart: (controller, url) {
                    setState(() {
                      isLoading = true;
                    });
                  },
                  onLoadStop: (controller, url) {
                    setState(() {
                      isLoading = false;
                    });
                  },
                  onLoadError: (controller, url, code, message) {
                    print("Load error: $code, $message");
                  },
                  onDownloadStart: (controller, url) async {
                    print("onDownloadStart $url");

                    final downloadsDirectory =
                        await getExternalStorageDirectory();
                    final savedDir = '${downloadsDirectory!.path}/Download';

                    await Directory(savedDir).create(recursive: true);

                    await FlutterDownloader.enqueue(
                      url: url.toString(),
                      savedDir: '/storage/emulated/0/Download',
                      showNotification: true,
                      openFileFromNotification: true,
                    );
                  },
                  shouldOverrideUrlLoading:
                      (controller, navigationAction) async {
                    _canGoBack = await webViewController.canGoBack();
                    return NavigationActionPolicy.ALLOW;
                  },
                ),
              ),
              if (isLoading)
                Center(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/clg.png'), // Replace with your image path
                          fit: BoxFit
                              .cover, // You can use other BoxFit values based on your requirement
                        ),
                      ),
                      height: 45,
                      width: 45,
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 175, 0, 173),
                      )),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _handleBackButton() async {
    if (_canGoBack) {
      await webViewController.goBack();
      return true;
    } else {
      Navigator.of(context).pop();
      return true;
    }
  }
}
