import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News_WebviewPage extends StatefulWidget {
  final String url;
  final String title;

  const News_WebviewPage({super.key, required this.url, this.title = "News"});

  @override
  State<News_WebviewPage> createState() => _News_WebviewPageState();
}

class _News_WebviewPageState extends State<News_WebviewPage> {
  late final WebViewController controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) => setState(() => isLoading = true),
          onPageFinished: (url) => setState(() => isLoading = false),
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, overflow: TextOverflow.ellipsis),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
