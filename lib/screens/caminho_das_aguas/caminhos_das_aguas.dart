import 'package:flutter/material.dart';
import '../../widgets/pedacos de pagina/acompanhe_a_obra.dart';
import '../../widgets/pedacos de pagina/cabecalho.dart';
import '../../widgets/pedacos de pagina/localizacao.dart';
import '../../widgets/pedacos de pagina/para_voce.dart';
import '../../widgets/pedacos de pagina/projeto.dart';

class CaminhoDasAguas extends StatelessWidget {
  const CaminhoDasAguas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(child:
    Container( width: size.width,
        height: 3724,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/CaminhoDasAguas/fundoCaminho.png"),
                fit: BoxFit.fill)),
        child: Column( children:[
          Cabecalho(tituloImg: "assets/CaminhoDasAguas/CaminhoDasAguasTexto.png" , tituloAltura: 240, tituloLargura: 320,
            subtituloImg: "assets/ParaisoDosLagos/O Paraiso Natural.png", subtituloAltura: 60, subtituloLargura: 254,
            paddingBotaoObra: 231,),
          ParaVoce(Chacaras: false),
          const AcompanheAObra(),
          Projeto(
            imagemDescricao: 'assets/CaminhoDasAguas/texto-Caminho.png',
            imagens: const [
              "assets/Projeto/Mapa.jpeg",
              "assets/Projeto/Lazer.jpeg",
              "assets/Projeto/Fitness.jpeg",
              "assets/Projeto/Kids.jpeg",
              "assets/Projeto/ParquinhoParaiso.jpeg",
              "assets/Projeto/Mirante.jpeg",
              "assets/Projeto/Pistas.jpeg",
              "assets/Projeto/Distancia.jpeg",
              "assets/Projeto/Redario.jpeg",
              "assets/Projeto/Quiosque.jpeg",
              "assets/Projeto/Tranquilidade.jpeg",
             // "assets/Idosos.jpeg"
            ],
          ),
          Localizacao(
              markerId: "Caminho Das Águas",
              latitude: -2.90456,
              longitude: -59.95328,
              latCamera: -2.90188,
              longCamera: -59.95341)

        ])
    )
    );
  }
}
