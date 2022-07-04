import 'package:flutter/material.dart';
import 'botoes_sobre_controller.dart';

class Botoes extends StatelessWidget {
  const Botoes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child:
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            BotaoSobre(debugPrint('Botao Financeiro Clicado'), 'Financeiro'),
              Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
              child:
              BotaoSobre(debugPrint('Botao Jurídico Clicado'), 'Jurídico'),
              ),
            BotaoSobre(debugPrint('Botao Supervisao Clicado'), 'Supervisão de Obras'),
      ]),
    );
  }
}






