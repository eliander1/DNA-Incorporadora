import 'package:flutter/material.dart';

import '../Containers/Caminho_Cabecalho.dart';
import '../Containers/Caminho_Localizacao.dart';
import '../Containers/Caminho_OProjeto.dart';
import '../Containers/Paraiso_FeitoPraVoce.dart';
import '../Containers/Paraiso_PorDentroObras.dart';

class CaminhoDasAguas extends StatelessWidget {
  const CaminhoDasAguas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(title: Text("DNA logo", style: TextStyle(color: Colors.black),), backgroundColor: Colors.white);
    var size = MediaQuery.of(context).size;
    var screenHeight = ( size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;

    return SingleChildScrollView(child:
    Container( width: size.width,
        height: 3724,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/CaminhoDasAguas/fundoCaminho.png"),
                fit: BoxFit.fill)),
        child: Column( children:[
          CabecalhoCDA1(),
          FeitoPraVoce2(),
          AcompanheaObra3(),
          OProjetoCDA4(),
          LocalizacaoCDA5()

        ])
    )
    );
  }
}
