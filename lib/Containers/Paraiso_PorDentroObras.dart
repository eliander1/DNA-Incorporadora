import 'package:app_dna_oficial/Models/botoes.dart';
import 'package:flutter/material.dart';

class AcompanheaObra3 extends StatelessWidget {
  const AcompanheaObra3({Key? key}) : super(key: key);

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
