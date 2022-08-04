import 'package:url_launcher/url_launcher.dart';

Future<void> launchLink(String url) async {
  try {
    await launchUrl(Uri.parse(url),
      mode: LaunchMode.externalApplication,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    );
  } on Exception catch(e){
    print('Não pode executar o link $url');
  }
}