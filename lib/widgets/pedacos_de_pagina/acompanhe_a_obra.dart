import 'package:flutter/material.dart';

import '../botoes/botao_obra.dart';

class AcompanheAObra extends StatelessWidget {
  const AcompanheAObra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 87),
          child: Image.asset(
            "assets/BotaoAcompanharObra/quer ficar por dentro@4x.png",
            width: 296,
            height: 76,
          ),
        ),
        Padding(padding: const EdgeInsets.only(top: 37), child: BotaoObra(231))
      ],
    );
  }
}
