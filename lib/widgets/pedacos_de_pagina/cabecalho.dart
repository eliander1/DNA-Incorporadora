import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../botoes/botao_obra.dart';

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
          Padding(padding: const EdgeInsets.only(top: 54),
              child: SvgPicture.asset(
                  "assets/logo_dna.svg",
                  color: Colors.white,
                  width: 296,
                  height: 76)),

          Padding(padding: const EdgeInsets.only(top: 37),
            child:
              // SvgPicture.asset(
              //     tituloImg,
              //     width: tituloLargura,
              //     height: tituloAltura,
              // )),
            Image.asset(tituloImg, width: tituloLargura, height: tituloAltura),),

          Padding(padding: const EdgeInsets.only(top: 15),
             // child:
                // SvgPicture.asset(
                //   subtituloImg,
                //   width: subtituloLargura,
                //   height: subtituloAltura)),

            child: Image.asset(subtituloImg, width: subtituloLargura, height: subtituloAltura,),),

          Padding(padding: const EdgeInsets.only(top: 24),
              child: BotaoObra(paddingBotaoObra)
          )
        ]);
  }
}
