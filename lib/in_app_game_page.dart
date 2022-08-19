import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppGamePage extends StatefulWidget {
  const InAppGamePage({Key? key}) : super(key: key);

  @override
  _InAppGamePageState createState() => _InAppGamePageState();
}

class _InAppGamePageState extends State<InAppGamePage> {
  double _progress = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "2048 Game",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse("https://www.edopedia.com/demo/2048/")
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged: (InAppWebViewController controller, int progress){
              setState(() {
                _progress = progress / 100;
              });
            }
          ),
          _progress < 1 ? SizedBox(
            height: 3,
            child: LinearProgressIndicator(
              value: _progress,
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.2),
            ),
          ) : SizedBox(),
        ],
      ),
    );
  }
}
