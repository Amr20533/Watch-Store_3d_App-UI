import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AnimatedProductViewer extends StatefulWidget {
  const AnimatedProductViewer({super.key});

  @override
  State<AnimatedProductViewer> createState() => _AnimatedProductViewerState();
}

class _AnimatedProductViewerState extends State<AnimatedProductViewer> {
  late WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://elegant-tanuki-0787ed.netlify.app/'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.36,
      width: size.width,
      child: WebViewWidget(controller: controller),
    );
  }
}
