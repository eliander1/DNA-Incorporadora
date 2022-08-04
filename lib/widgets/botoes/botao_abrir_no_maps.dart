
import 'package:flutter/material.dart';

import '../../constants/whatsapp_links.dart';
import 'controller/launch_link.dart';

class BotaoMapa extends StatelessWidget {
  const BotaoMapa({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.red;
          }
          return Colors.green;
        }),
        minimumSize:
        MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return const Size(double.maxFinite * 0.85, 30);
          }
          return const Size(double.maxFinite, 40);
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16));
          }
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10));
        }),
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return const TextStyle(
                fontSize: 12, fontFamily: "Poppins-Bold");
          }
          return const TextStyle(
              fontSize: 18, fontFamily: "Poppins-Bold");
        }),
      ),
      onPressed: () => launchLink(WhatsappLinks.linkGoogleMaps),
      child: const Text('Abrir no Google Maps'),
    );
  }
}