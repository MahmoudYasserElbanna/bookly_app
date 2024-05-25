import 'package:url_launcher/url_launcher.dart';

Future<void> getUrlLauncher(String path) async {
  Uri url = Uri.parse(path);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw Exception('Could not launch $url');
  }
}
