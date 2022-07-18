import 'package:url_launcher/url_launcher.dart';
import '../../constants/constants.dart';



Future<void> launchLink(String url) async {
 if (await canLaunch(url)) {
  await launch(url, forceWebView: false, forceSafariVC: false);
 } else {
  print('Não pode executar o link $url');
 }
}