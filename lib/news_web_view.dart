import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsWebView extends StatefulWidget {
  final String url;
  NewsWebView({super.key, required this.url});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.url,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(58, 79, 104, 1.0),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo1.jpg',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 8), // Sesuaikan jarak antara gambar dan teks
            const Text(
              'UpNews',
              style: TextStyle(
                fontSize: 15, // Sesuaikan ukuran teks sesuai kebutuhan
              ),
            ),
          ],
        ),
      ),
    );
  }
}
