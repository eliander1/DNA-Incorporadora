import 'package:app_dna_oficial/screens/caminho_das_aguas/caminhos_das_aguas.dart';
import 'package:app_dna_oficial/screens/chacaras_amazonas/chacaras_amazonas.dart';
import 'package:app_dna_oficial/screens/paraiso_dos_lagos/paraiso_dos_lagos.dart';
import 'package:app_dna_oficial/screens/sobre_nos/sobre_nos.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
      final items = [
        const Icon(Icons.kayaking_outlined, size: 30), //colocar um image.asset dentro de Icon()
        const Icon(Icons.water, size: 30),
        const Icon(Icons.house_outlined, size: 30),
        const Icon(Icons.assignment_ind_outlined, size: 30)];

      final telas = [ParaisoDosLagos(), CaminhoDasAguas(), ChacarasAmazonas(), SobreNos()];


    return Scaffold(
      extendBody: true,

      body: telas[index],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: _bottomNavigationKey,
        items: items,
        animationCurve: Curves.bounceInOut,
        animationDuration: const Duration(milliseconds: 200),
        index: index,
        onTap: (index) => setState(() {this.index = index;}),
      ),
    );
  }
}

