import 'package:app_dna_oficial/telas/CaminhoDasAguas.dart';
import 'package:app_dna_oficial/telas/ChacarasAmazonas.dart';
import 'package:app_dna_oficial/telas/ParaisoDosLagos.dart';
import 'package:app_dna_oficial/telas/SobreNos.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
      final items = [
        Icon(Icons.kayaking_outlined, size: 30), //colocar um image.asset dentro de Icon()
        Icon(Icons.water, size: 30),
        Icon(Icons.house_outlined, size: 30),
        Icon(Icons.assignment_ind_outlined, size: 30)];

      final telas = [ParaisoDosLagos(), CaminhoDasAguas(), ChacarasAmazonas(), SobreNos()];

      var appBar = AppBar(title: Image.asset("assets/DNA-logo-oficial.png"), backgroundColor: Colors.white);
      var size = MediaQuery.of(context).size;



    return Scaffold(
      extendBody: true,

      body: telas[index],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: _bottomNavigationKey,
        items: items,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 200),
        index: index,
        onTap: (index) => setState(() {this.index = index;}),
      ),
    );
  }
}

