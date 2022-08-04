import 'package:flutter/material.dart';
import '../botoes/botao_obra.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AcompanheAObra extends StatelessWidget {
  const AcompanheAObra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 87),
          child: SvgPicture.asset(
              "assets/BotaoAcompanharObra/quer_ficar_por_dentro.svg",
              width: 296,
              height: 76),
        ),
        Padding(padding: const EdgeInsets.only(top: 37), child: BotaoObra(231))
      ],
    );
  }
}
