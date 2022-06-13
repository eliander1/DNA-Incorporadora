import 'package:flutter/material.dart';
import '../Models/botoes.dart';

class CabecalhoCDA1 extends StatefulWidget {
  const CabecalhoCDA1({Key? key}) : super(key: key);
  @override
  State<CabecalhoCDA1> createState() => _CabecalhoCDA1State();
}
class _CabecalhoCDA1State extends State<CabecalhoCDA1> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(top: 54),
            child:Image.asset("assets/logo dna@4x.png", width: 123, height: 79)),

        Padding(padding: EdgeInsets.only(top: 37),
          child: Image.asset("assets/CaminhoDasAguas/CaminhoDasAguasTexto.png", width: 320, height: 240),),

        Padding(padding: EdgeInsets.only(top: 15),
          child: Image.asset("assets/O Paraiso Natural.png",width: 254, height: 60,),),

        Padding(padding: EdgeInsets.only(top: 24),
            child: BotaoObra(231),
        )

      ],
    );
  }
}


