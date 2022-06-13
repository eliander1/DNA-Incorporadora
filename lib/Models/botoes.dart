import 'package:flutter/material.dart';


class BotaoObra extends StatelessWidget {
  final double largura;

  BotaoObra(this.largura);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
          if (states.contains(MaterialState.pressed)){
            return Color(0xff6ec646);}
          return Color(0xffc14608);}),

        minimumSize: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)){
            return Size(largura*0.85, 30);}
          return Size(largura, 43);}),

        shape: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)){
            return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));}
          return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));}),

        textStyle: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)){
            return TextStyle(fontSize: 12, fontFamily: "Poppins-Bold");}
          return TextStyle(fontSize: 18, fontFamily: "Poppins-Bold");}),),

      onPressed: (){debugPrint('Acompanhar as obras 1');},
      child: const Text('Acompanhar a Obra'),

    );
  }
}


class Botoes extends StatelessWidget {
  const Botoes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child:
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            BotaoSobre(debugPrint('Botao Financeiro Clicado'), 'Financeiro'),
              Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
              child:
              BotaoSobre(debugPrint('Botao Jurídico Clicado'), 'Jurídico'),
              ),
            BotaoSobre(debugPrint('Botao Supervisao Clicado'), 'Supervisão de Obras'),
      ]),
    );
  }
}


class BotaoSobre extends StatelessWidget {
  final void funcao;
  final String textoBotao;

  BotaoSobre(this.funcao, this.textoBotao);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.red;
          }
          return Colors.green;
        }),
        minimumSize: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Size(double.maxFinite * 0.85, 30);
          }
          return Size(double.maxFinite, 40);
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10));
          }
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16));
        }),
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return TextStyle(fontSize: 12);
          }
          return TextStyle(fontSize: 18, fontFamily: "Poppins-Bold");
        }),
      ),
      onPressed: () {
        funcao;
      },
      child: Text('$textoBotao'),
    );
  }
}


class BotaoMapa extends StatelessWidget {
  const BotaoMapa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.red;
          }
          return Colors.green;
        }),
        minimumSize:
        MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Size(double.maxFinite * 0.85, 30);
          }
          return Size(double.maxFinite, 40);
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16));
          }
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10));
        }),
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return TextStyle(
                fontSize: 12, fontFamily: "Poppins-Bold");
          }
          return TextStyle(
              fontSize: 18, fontFamily: "Poppins-Bold");
        }),
      ),
      onPressed: () {
        debugPrint('clicado');
      },
      child: const Text('Abrir no Google Maps'),
    );
  }
}
