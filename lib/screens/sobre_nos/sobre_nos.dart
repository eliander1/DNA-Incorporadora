import 'package:flutter/material.dart';
import '../../widgets/botoes/botoes_sobre/botoes_sobre.dart';

class SobreNos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        height: size.height + kBottomNavigationBarHeight + 8,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/FundoSobre.png"))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 16,
                left: 16,
                right: 16),
            child:
                Image.asset("assets/logo dna@4x.png", width: 122, height: 75),
          ),
          Container(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  width: double.maxFinite * 0.9,
                  height: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xfff7931e),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(4, 2))
                      ]),
                  child: Column(children: const [
                    Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text("Fale Conosco:",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500))),
                    Botoes(),
                  ]),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
