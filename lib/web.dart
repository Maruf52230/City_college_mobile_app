import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:testapp/main.dart';
import 'package:url_launcher/url_launcher.dart';

class WebScreen extends StatefulWidget {
  final String receivedValue;

  WebScreen({required this.receivedValue});

  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  late InAppWebViewController webViewController;
  String link = '';
  bool isLoading = true;
  late bool _canGoBack;
  final Dio _dio = Dio();
  @override
  void initState() {
    checkConnectivity();
    super.initState();
    setLink();
    _canGoBack = true;
  }

  void setLink() {
    setState(() {
      link = widget.receivedValue;
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
                    // print("onDownloadStart $url");

                    // final downloadsDirectory =
                    //     await getExternalStorageDirectory();
                    // final savedDir = '${downloadsDirectory!.path}/Download';

                    // await Directory(savedDir).create(recursive: true);

                    // await FlutterDownloader.enqueue(
                    //   url: url.toString(),
                    //   savedDir: '/storage/emulated/0/Downoad',
                    //   showNotification: true,
                    //   openFileFromNotification: true,
                    // );
                    _launchURL('$url');
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
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
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
                                  strokeWidth: 3,
                                  color: Color.fromARGB(255, 175, 0, 173),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
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

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
