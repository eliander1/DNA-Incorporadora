import 'package:flutter/material.dart';

class BotaoSobre extends StatelessWidget {
  final Function() funcao;
  final String textoBotao;

  BotaoSobre({required this.funcao, required this.textoBotao});

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
            return const Size(double.maxFinite * 0.85, 30);
          }
          return const Size(double.maxFinite, 40);
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
            return const TextStyle(fontSize: 12);
          }
          return const TextStyle(fontSize: 18, fontFamily: "Poppins-Bold");
        }),
      ),
      onPressed:() => funcao(),
      child: Text(textoBotao),
    );
  }
}


