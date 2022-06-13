import 'package:app_dna_oficial/Models/botoes.dart';
import 'package:flutter/material.dart';

class CabecalhoPDL1 extends StatelessWidget {
  const CabecalhoPDL1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(title: Text("DNA logo", style: TextStyle(color: Colors.black),), backgroundColor: Colors.white);
    var size = MediaQuery.of(context).size;
    var screenHeight = ( size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;

    return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 54),
                child:Image.asset("assets/logo dna@4x.png", width: 123, height: 79)),

              Padding(padding: EdgeInsets.only(top: 37),
                child: Image.asset("assets/paraíso dos lagos@4x.png", width: 318, height: 236),),

              Padding(padding: EdgeInsets.only(top: 15),
                child: Image.asset("assets/O Paraiso Natural.png",width: 254, height: 60,),),

              Padding(padding: EdgeInsets.only(top: 24),
                child: BotaoObra(231)
         )
      ]);
  }
}
