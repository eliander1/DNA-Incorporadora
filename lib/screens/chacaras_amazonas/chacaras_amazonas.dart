import 'package:flutter/material.dart';
import '../../widgets/pedacos de pagina/acompanhe_a_obra.dart';
import '../../widgets/pedacos de pagina/cabecalho.dart';
import '../../widgets/pedacos de pagina/localizacao.dart';
import '../../widgets/pedacos de pagina/para_voce.dart';
import '../../widgets/pedacos de pagina/projeto.dart';

class ChacarasAmazonas extends StatelessWidget {
  const ChacarasAmazonas({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        height: 3407,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ChacarasAM/fundao chacarasAM.png'),
              fit: BoxFit.fill),
        ),
        child: Column(children: [
          Cabecalho(tituloImg: "assets/ChacarasAM/Chacaras titulo.png", tituloAltura: 236, tituloLargura: 318,
            subtituloImg: 'assets/ChacarasAM/subtitle 10min.png', subtituloAltura: 58, subtituloLargura: 276,
            paddingBotaoObra: 231,),
          ParaVoce(Chacaras: true),
          const AcompanheAObra(),
          Projeto(
            imagemDescricao: 'assets/ChacarasAM/Texto Projeto CHA.png',
            imagens: const [
              "assets/Projeto/Mapa.jpeg",

            ],
          ),
          Localizacao(
              markerId: "Chácaras Amazonas",
              latitude: -2.90456,
              longitude: -59.95328,
              latCamera: -2.90188,
              longCamera: -59.95341),
        ]),
      ),
    );
  }
}
