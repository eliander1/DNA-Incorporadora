import 'package:flutter/material.dart';

import 'botoes/botao_obra.dart';

class AcompanheAObra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 87),
          child: Image.asset(
            "assets/quer ficar por dentro@4x.png",
            width: 296,
            height: 76,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 37), child: BotaoObra(231))
      ],
    );
  }
}
