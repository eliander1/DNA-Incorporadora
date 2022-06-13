import 'package:app_dna_oficial/Containers/Paraiso_FeitoPraVoce.dart';
import 'package:flutter/material.dart';
import '../Containers/Paraiso_OProjeto.dart';
import '../Containers/Paraiso_Cabecalho.dart';
import '../Containers/Paraiso_Localizacao.dart';
import '../Containers/Paraiso_PorDentroObras.dart';

class ParaisoDosLagos extends StatelessWidget {
  const ParaisoDosLagos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(child:
        Container(
            width: size.width,
            height: 3724,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/fundo.png"),
                    fit: BoxFit.fill)),
        child: Column( children:[
          CabecalhoPDL1(),
          FeitoPraVoce2(),
          AcompanheaObra3(),
          OProjetoPDL4(),
          LocalizacaoPDL5()



        ])
        )
    );
  }
}

