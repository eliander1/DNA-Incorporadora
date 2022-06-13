import 'dart:async';
import 'package:app_dna_oficial/Models/botoes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocalizacaoCDA5 extends StatefulWidget {
  const LocalizacaoCDA5({Key? key}) : super(key: key);

  @override
  State<LocalizacaoCDA5> createState() => _LocalizacaoCDA5State();
}

class _LocalizacaoCDA5State extends State<LocalizacaoCDA5> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _marcador = {};

  _carregarMarcador() {
    Set<Marker> marcadorLocal = {};

    Marker marcadorPDL = Marker(
        markerId: MarkerId("Caminho Das Águas"),
        position: LatLng(-2.90456, -59.95328),
        infoWindow: InfoWindow(title: "Caminho Das Águas"),
        //icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange)
        onTap: () {});

    marcadorLocal.add(marcadorPDL);

    setState(() {
      _marcador = marcadorLocal;
    });
  }

  @override
  void initState() {
    super.initState();
    _carregarMarcador();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 72),
            child: Image.asset(
              "assets/localizacao.png",
              height: 76,
            )),

        Padding(
          padding: EdgeInsets.only(top: 36),
          child: Container(
            height: 488,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition:
                  CameraPosition(target: LatLng(-2.90188, -59.95341), zoom: 14),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: _marcador,
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                new Factory<OneSequenceGestureRecognizer>(() => new EagerGestureRecognizer(),),
              },
            ),
          ),
        ),

        //BOTOES

         Padding(
            padding: EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotaoMapa(),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: BotaoObra(double.maxFinite),
                  ),
                ]),
          )
        ]);
  }
}


