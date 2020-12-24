import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State {
  final Completer _controller =
  Completer();

  var connectionStatus;

  num position = 1;
  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  // インターネット接続チェック
  Future check() async {
    try {
      final result = await InternetAddress.lookup('batom.jp');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        connectionStatus = true;
      }
    } on SocketException catch (_) {
      connectionStatus = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: check(), // Future or nullを取得
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text('問い合わせ'),
            ),
            body: connectionStatus == true
                ? IndexedStack(
              index: position,
              children: [
                WebView(
                  initialUrl: 'https://batom.jp/infomation/',
                  javascriptMode: JavascriptMode.unrestricted, // JavaScriptを有効化
                  onWebViewCreated:
                      (WebViewController webViewController) {
                    _controller.complete(webViewController);
                  },
                  key: key,
                  onPageFinished: doneLoading, // indexを０にしてWebViewを表示
                  onPageStarted: startLoading, // indexを1にしてプログレスインジケーターを表示
                ),
                // プログレスインジケーターを表示
                Container(
                  child: Center(
                    child: CircularProgressIndicator(backgroundColor: Colors.blue),
                  ),
                ),
              ],
            )
            // インターネットに接続されていない場合の処理
                : SafeArea(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 120,
                        bottom: 20,
                      ),
                      child: Container(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        'インターネットに接続されていません',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}