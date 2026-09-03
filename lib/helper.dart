import 'package:url_launcher/url_launcher.dart';

Future<void> openExternalUrl(String urlString) async {
  final Uri url = Uri.parse(urlString);

  if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
    throw Exception('تعذر فتح الرابط $urlString');
  }
}
