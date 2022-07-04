import 'package:flutter/material.dart';

class Projeto extends StatelessWidget {
  String imagemDescricao;
  List<String> imagens;

  Projeto({required this.imagemDescricao, required this.imagens});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(top: 101),
          child: Image.asset("assets/o projeto@4x.png", height: 70),),

      Container(
        padding: EdgeInsets.only(top: 37),
        width: MediaQuery.of(context).size.width,
        height: 239,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imagens.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(padding: EdgeInsets.only(left: 8),
              child: Image.asset(imagens[index]),
            );
          },
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 33),
          child: Image.asset(
            imagemDescricao, width: 286, height: 418,
          ))
    ]);
  }
}
