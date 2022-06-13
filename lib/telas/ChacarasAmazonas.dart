import 'package:flutter/material.dart';

import '../Containers/Chacaras_Cabecalho.dart';
import '../Containers/Chacaras_Localizacao.dart';
import '../Containers/Chacaras_OProjeto.dart';
import '../Containers/Chacaras_ParaVoce.dart';
import '../Containers/Paraiso_PorDentroObras.dart';

class ChacarasAmazonas extends StatefulWidget {
  const ChacarasAmazonas({Key? key}) : super(key: key);
  @override
  State<ChacarasAmazonas> createState() => _ChacarasAmazonasState();
}

class _ChacarasAmazonasState extends State<ChacarasAmazonas> {
  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        height: 3407,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ChacarasAM/fundao chacarasAM.png'),
              fit: BoxFit.fill),
        ),
        child: Column(children: [
          CabecalhoCHA1(),
          ParaVoceCHA2(),
          AcompanheaObra3(),
          OProjetoCHA4(),
          LocalizacaoCHA5(),



        ],
        ),
      ),
    );
  }
}
