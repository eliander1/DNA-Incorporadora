import 'package:url_launcher/url_launcher.dart';



Future<void> launchLink(String url) async {
  print(url);
 if (await canLaunchUrl(Uri.parse(url))) {
  await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication,webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),);
 } else {
  print('Não pode executar o link $url');
 }
}