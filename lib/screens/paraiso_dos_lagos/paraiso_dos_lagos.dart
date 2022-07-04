import 'package:app_dna_oficial/widgets/localizacao.dart';
import 'package:flutter/material.dart';
import '../../widgets/acompanhe_a_obra.dart';
import '../../widgets/cabecalho.dart';
import '../../widgets/para_voce.dart';
import '../../widgets/projeto.dart';

class ParaisoDosLagos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(child:
        Container(
            width: size.width,
            height: 3724,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/fundo.png"),
                    fit: BoxFit.fill)),
        child: Column( children: [
          Cabecalho(
            tituloImg: "assets/paraíso dos lagos@4x.png", tituloAltura: 236, tituloLargura: 318,
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
              markerId: "Paraiso Dos Lagos",
              latitude: -2.90188,
              longitude: -59.95341,
              latCamera: -2.90188,
              longCamera: -59.95341)


        ]),
        ),
    );
  }

}

