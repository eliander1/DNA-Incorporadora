import 'package:flutter/material.dart';
import '../launchLink.dart';
import 'botoes_sobre_controller.dart';

class Botoes extends StatelessWidget {
  const Botoes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child:
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            BotaoSobre(() => launchLink, 'Financeiro'),

            Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: BotaoSobre(launchLink, 'Jurídico'),
              ),

              BotaoSobre(launchLink, 'Supervisão de Obras'),
      ]),
    );
  }
}






