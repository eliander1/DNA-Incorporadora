import 'package:flutter/material.dart';

import '../Models/botoes.dart';

class CabecalhoCHA1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Padding(
        padding: EdgeInsets.only(top: 54),
        child: Image.asset("assets/logo dna@4x.png", width: 123, height: 79),
      ),
      Padding(
        padding: EdgeInsets.only(top: 37),
        child: Image.asset("assets/ChacarasAM/Chacaras titulo.png", width: 318, height: 236,),
      ),
          Padding(padding: EdgeInsets.only(top: 11),
          child: Image.asset('assets/ChacarasAM/subtitle 10min.png'),),

    Padding(padding: EdgeInsets.only(top: 24),
    child: BotaoObra(231),
    ),
    ]);
  }
}
