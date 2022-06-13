import 'package:flutter/material.dart';

class OProjetoCHA4 extends StatelessWidget {
  const OProjetoCHA4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
    Padding(padding: EdgeInsets.only(top: 101),
    child: Image.asset("assets/o projeto@4x.png", height: 70)),

    Container(
    padding: EdgeInsets.only(top: 37),
    width: MediaQuery.of(context).size.width,
    height: 239,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    //Container(child:

    Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Mapa.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Fitness.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Kids.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Mirante.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Pistas.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Distancia.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Redario.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Quiosque.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Tranquilidade.jpeg")),
    // Padding(padding: EdgeInsets.only(left: 8), child: Image.asset("assets/Idosos.jpeg")),

    ]),
    ),

    Padding(padding: EdgeInsets.only(top: 62),
    child: Image.asset('assets/ChacarasAM/Texto Projeto CHA.png'),)

    ]);
  }
}
