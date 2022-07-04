import 'package:flutter/material.dart';

class ParaVoce extends StatelessWidget {
  bool Chacaras;

  ParaVoce({required this.Chacaras});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: Chacaras,
    replacement: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 112),
            child: Image.asset("assets/feito para você@4x.png", width: 292, height: 71,),),

          Padding(padding: EdgeInsets.only(top: 24),
            child: Image.asset("assets/2km@4x.png", width: 113, height: 138,),),

          Padding(padding: EdgeInsets.only(top: 26),
            child: Image.asset("assets/piscinas@4x.png", width: 206, height: 138),),

          Padding(padding: EdgeInsets.only(top: 26),
            child: Image.asset("assets/asfalto@4x.png", width: 235, height: 138,),),

          Padding(padding: EdgeInsets.only(top: 26),
            child: Image.asset("assets/iluminação@4x.png", width: 233, height: 138,),),

          Padding(padding: EdgeInsets.only(top: 26),
            child: Image.asset("assets/guarita@4x.png", width: 198, height: 138,),),

          Padding(padding: EdgeInsets.only(top: 26),
            child: Image.asset("assets/relogio.png", width: 196, height: 138,),),

        ],
      ),

      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Padding(padding: EdgeInsets.only(top: 112),
          child: Image.asset("assets/feito para você@4x.png", width: 292, height: 71)),

        Padding(padding: EdgeInsets.only(top: 24),
        child: Image.asset("assets/2km@4x.png", width: 113, height: 138)),

        Padding(padding: EdgeInsets.only(top: 26),
        child: Image.asset("assets/piscinas@4x.png", width: 206, height: 138)),

        Padding(padding: EdgeInsets.only(top: 26),
        child: Image.asset("assets/guarita@4x.png", width: 198, height: 138)),

        Padding(padding: EdgeInsets.only(top: 26),
        child: Image.asset("assets/relogio.png", width: 196, height: 138)),
    ])
    );
  }
}
