import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class YoutubeWidget extends StatelessWidget {
  final String youtubeId;
  YoutubeWidget({
    @required this.youtubeId,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width-32;

    return SizedBox(
      width: width,
      height: width/16*9,
      child: WebView(
        initialUrl: 'https://www.youtube.com/embed/$youtubeId',
        javascriptMode: JavascriptMode.unrestricted, 
      ),
    );
  }
}