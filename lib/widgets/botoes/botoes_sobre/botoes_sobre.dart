import 'package:app_dna_oficial/widgets/botoes/controller/launch_link.dart';
import 'package:flutter/material.dart';
import '../../../constants/whatsapp_links.dart';
import '../controller/launch_link.dart';
import 'botoes_sobre_controller.dart';

class Botoes extends StatelessWidget {

  //É NECESSARIO TIRAR O SUPER DAQUI PRA ELE PARAR DE QUERER ABRIR O WHATS AO TROCAR DE TELA
  const Botoes({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child:
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            BotaoSobre(funcao:(){
              print('financeiro');
              launchLink(WhatsappLinks.linkFinanceiro);
            },textoBotao: 'Financeiro'),

            Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: BotaoSobre(funcao:(){
              launchLink(WhatsappLinks.linkJuridico);
              },
              textoBotao: 'Jurídico'),
              ),

              BotaoSobre(funcao:(){
                launchLink(WhatsappLinks.linkSupervisao);
                },
                textoBotao: 'Supervisão de Obras'),

      ]),
    );
  }
}






