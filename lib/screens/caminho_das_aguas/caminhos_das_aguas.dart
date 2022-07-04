import 'package:app_dna_oficial/widgets/para_voce.dart';
import 'package:flutter/material.dart';
import '../../widgets/acompanhe_a_obra.dart';
import '../../widgets/cabecalho.dart';
import '../../widgets/localizacao.dart';
import '../../widgets/projeto.dart';

class CaminhoDasAguas extends StatelessWidget {
  const CaminhoDasAguas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(child:
    Container( width: size.width,
        height: 3724,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/CaminhoDasAguas/fundoCaminho.png"),
                fit: BoxFit.fill)),
        child: Column( children:[
          Cabecalho(tituloImg: "assets/CaminhoDasAguas/CaminhoDasAguasTexto.png" , tituloAltura: 240, tituloLargura: 320,
            subtituloImg: "assets/O Paraiso Natural.png", subtituloAltura: 60, subtituloLargura: 254,
            paddingBotaoObra: 231,),
          ParaVoce(Chacaras: false),
          AcompanheAObra(),
          Projeto(
            imagemDescricao: 'assets/texto proj@4x.png',
            imagens: const [
              "assets/Mapa.jpeg",
              "assets/Lazer.jpeg",
              "assets/AsfaltoObra.jpeg",
              "assets/Fitness.jpeg",
              "assets/Kids.jpeg",
              "assets/ParquinhoParaiso.jpeg",
              "assets/Mirante.jpeg",
              "assets/Pistas.jpeg",
              "assets/Distancia.jpeg",
              "assets/Redario.jpeg",
              "assets/Quiosque.jpeg",
              "assets/Tranquilidade.jpeg",
              "assets/Idosos.jpeg"
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
