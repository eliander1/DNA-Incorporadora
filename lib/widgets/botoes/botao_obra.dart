import 'package:app_dna_oficial/constants/constants.dart';
import 'package:app_dna_oficial/widgets/botoes/launchLink.dart';
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
            return const Color(0xff6ec646);}
          return const Color(0xffc14608);}),

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
            return const TextStyle(fontSize: 12, fontFamily: "Poppins-Bold");}
          return const TextStyle(fontSize: 18, fontFamily: "Poppins-Bold");}),),

      onPressed: () => launchLink(linkSupervisao),
      child: const Text('Acompanhar a Obra'),

    );
  }
}