import 'package:flutter/material.dart';
import 'botoes/botao_obra.dart';

class Cabecalho extends StatelessWidget {

  String tituloImg;
  double tituloAltura;
  double tituloLargura;

  String subtituloImg;
  double subtituloAltura;
  double subtituloLargura;

  double paddingBotaoObra;

  Cabecalho({
    required this.tituloImg, required this.tituloAltura, required this.tituloLargura,
    required this.subtituloImg, required this.subtituloAltura, required this.subtituloLargura,
    required this.paddingBotaoObra
  });

  @override
  Widget build(BuildContext context) {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 54),
              child:Image.asset("assets/logo dna@4x.png", width: 123, height: 79)),

          Padding(padding: EdgeInsets.only(top: 37),
            child: Image.asset(tituloImg, width: tituloLargura, height: tituloAltura),),

          Padding(padding: EdgeInsets.only(top: 15),
            child: Image.asset(subtituloImg, width: subtituloLargura, height: subtituloAltura,),),

          Padding(padding: EdgeInsets.only(top: 24),
              child: BotaoObra(paddingBotaoObra)
          )
        ]);
  }
}
